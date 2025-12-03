@interface CALNTriggeredEventNotificationEKDataSource
+ (id)_alarmDateForAlarm:(id)alarm eventStartDate:(id)date;
+ (id)_alarmForEvent:(id)event withAlarmID:(id)d;
+ (id)_sourceClientIdentifierForAlertInfo:(id)info;
- (BOOL)_shouldTriggerForAlertInfo:(id)info;
- (BOOL)_shouldWithdrawNotificationWithSourceClientIdentifier:(id)identifier event:(id)event alarmID:(id)d;
- (BOOL)shouldRemoveNotificationMetaDataWithEventID:(id)d;
- (BOOL)shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d;
- (BOOL)shouldWithdrawNotificationWithSourceClientIdentifier:(id)identifier;
- (CALNTriggeredEventNotificationDataSourceDelegate)delegate;
- (CALNTriggeredEventNotificationEKDataSource)initWithEventStoreProvider:(id)provider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider coreLocationProvider:(id)locationProvider ttlEventTracker:(id)tracker alarmEngineMonitor:(id)monitor travelEngine:(id)engine foundInAppsEventTracker:(id)self0 suggestionsServiceLogger:(id)self1 routeHypothesizerProvider:(id)self2 timeToLeaveRefreshMonitor:(id)self3 debugPreferences:(id)self4 mailtoURLProvider:(id)self5;
- (id)_eventForEventID:(id)d;
- (id)_eventForSourceClientIdentifier:(id)identifier;
- (id)_filterAlerts:(id)alerts;
- (id)_notificationExpirationDateForAlarmDate:(id)date eventEndDate:(id)endDate;
- (id)_notificationExpirationDateForNullableAlarmDate:(id)date eventEndDate:(id)endDate;
- (id)eventObjectIDForEventID:(id)d;
- (id)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:(id)identifier isProtectedDataAvailable:(BOOL)available;
- (id)notificationExpirationDateForEventID:(id)d alarmID:(id)iD;
- (void)_alertFiredForAlertInfo:(id)info;
- (void)_alertsFired:(id)fired;
- (void)_didSetUpTimeToLeaveRefreshTimerForEventID:(id)d triggerDate:(id)date;
- (void)_handleNotificationActionForSourceClientIdentifier:(id)identifier acknowledgeAlarm:(BOOL)alarm eventActions:(id)actions;
- (void)ceaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier;
- (void)ceaseRouteMonitoringEventWithEventID:(id)d;
- (void)didDismissUINotification:(unint64_t)notification forPlannedDestination:(id)destination dismissalType:(unint64_t)type;
- (void)handleDirectionsActionWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis lastFireTimeOfAlertOffsetFromTravelTime:(id)time;
- (void)handleMailOrganizerActionWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis;
- (void)removeTimeToLeaveRefreshTimerForEventID:(id)d;
- (void)removeTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier;
- (void)sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:(id)identifier;
- (void)sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis travelAdvisoryTimelinessPeriod:(unint64_t)period;
- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)date eventID:(id)d;
- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)date sourceClientIdentifier:(id)identifier;
- (void)snoozeEventWithSourceClientIdentifier:(id)identifier snoozeType:(unint64_t)type;
- (void)timeToLeaveRefreshMonitor:(id)monitor refreshTimerFiredForEventExternalURL:(id)l;
- (void)travelEngine:(id)engine eventSignificantlyChangedWithEventExternalURL:(id)l;
- (void)travelEngine:(id)engine receivedHypothesis:(id)hypothesis eventExternalURL:(id)l;
@end

@implementation CALNTriggeredEventNotificationEKDataSource

- (CALNTriggeredEventNotificationEKDataSource)initWithEventStoreProvider:(id)provider remoteMutator:(id)mutator dataSourceEventRepresentationProvider:(id)representationProvider coreLocationProvider:(id)locationProvider ttlEventTracker:(id)tracker alarmEngineMonitor:(id)monitor travelEngine:(id)engine foundInAppsEventTracker:(id)self0 suggestionsServiceLogger:(id)self1 routeHypothesizerProvider:(id)self2 timeToLeaveRefreshMonitor:(id)self3 debugPreferences:(id)self4 mailtoURLProvider:(id)self5
{
  providerCopy = provider;
  mutatorCopy = mutator;
  mutatorCopy2 = mutator;
  representationProviderCopy = representationProvider;
  representationProviderCopy2 = representationProvider;
  locationProviderCopy = locationProvider;
  trackerCopy = tracker;
  monitorCopy = monitor;
  engineCopy = engine;
  eventTrackerCopy = eventTracker;
  loggerCopy = logger;
  hypothesizerProviderCopy = hypothesizerProvider;
  refreshMonitorCopy = refreshMonitor;
  preferencesCopy = preferences;
  lProviderCopy = lProvider;
  v45.receiver = self;
  v45.super_class = CALNTriggeredEventNotificationEKDataSource;
  v24 = [(CALNTriggeredEventNotificationEKDataSource *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_eventStoreProvider, provider);
    objc_storeStrong(&v25->_remoteMutator, mutatorCopy);
    objc_storeStrong(&v25->_dataSourceEventRepresentationProvider, representationProviderCopy);
    v26 = [[CALNCalendarCoreLocationManager alloc] initWithCoreLocationProvider:locationProviderCopy];
    coreLocationManager = v25->_coreLocationManager;
    v25->_coreLocationManager = v26;

    objc_storeStrong(&v25->_ttlEventTracker, tracker);
    objc_storeStrong(&v25->_alarmEngineMonitor, monitor);
    objc_storeStrong(&v25->_travelEngine, engine);
    objc_storeStrong(&v25->_foundInAppsEventTracker, eventTracker);
    objc_storeStrong(&v25->_suggestionsServiceLogger, logger);
    objc_storeStrong(&v25->_routeHypothesizerProvider, hypothesizerProvider);
    objc_storeStrong(&v25->_timeToLeaveRefreshMonitor, refreshMonitor);
    objc_storeStrong(&v25->_debugPreferences, preferences);
    objc_storeStrong(&v25->_mailtoURLProvider, lProvider);
    alarmEngineMonitor = [(CALNTriggeredEventNotificationEKDataSource *)v25 alarmEngineMonitor];
    [alarmEngineMonitor addAlarmsFiredObserver:v25 selector:sel__alertsFired_];

    travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)v25 travelEngine];
    [travelEngine setDelegate:v25];

    timeToLeaveRefreshMonitor = [(CALNTriggeredEventNotificationEKDataSource *)v25 timeToLeaveRefreshMonitor];
    [timeToLeaveRefreshMonitor setDelegate:v25];
  }

  return v25;
}

- (id)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:(id)identifier isProtectedDataAvailable:(BOOL)available
{
  availableCopy = available;
  v84 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v78 = 0;
  v79 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v79 andAlarmID:&v78 fromSourceClientIdentifier:identifierCopy];
  v7 = v79;
  v8 = v78;
  eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  if (v7 && ([MEMORY[0x277CBEBC0] URLWithString:v7], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [eventStore _eventOccurrenceWithURI:v11];
    if (v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:isProtectedDataAvailable:];
    }

    v12 = 0;
    v13 = 0;
  }

  if (!availableCopy)
  {
LABEL_12:
    v70 = identifierCopy;
    v68 = eventStore;
    v69 = v8;
    v67 = v12;
    if (v13)
    {
      organizer = [v13 organizer];
      v57 = organizer;
      if (organizer)
      {
        v18 = organizer;
        phoneNumber = [organizer phoneNumber];
        emailAddress = [v18 emailAddress];
      }

      else
      {
        emailAddress = 0;
        phoneNumber = 0;
      }

      title = [v13 title];
      location = [v13 location];
      locationsWithoutPrediction = [v13 locationsWithoutPrediction];
      firstObject = [locationsWithoutPrediction firstObject];

      startDate = [v13 startDate];
      endDate = [v13 endDate];
      isAllDay = [v13 isAllDay];
      v76 = endDate;
      v77 = phoneNumber;
      if ([v13 isAllDay] & 1) != 0 || (objc_msgSend(v13, "isBirthday"))
      {
        LOBYTE(v60) = 0;
      }

      else
      {
        calendar = [v13 calendar];
        v60 = [calendar isSubscribed] ^ 1;
      }

      v63 = firstObject;
      v64 = location;
      dataSourceEventRepresentationProvider = [(CALNTriggeredEventNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
      timeZone = [eventStore timeZone];
      v75 = [dataSourceEventRepresentationProvider eventRepresentationDictionaryForUpcomingEvent:v13 date:startDate displayTimeZone:timeZone];

      hasPredictedLocation = [v13 hasPredictedLocation];
      preferredLocation = [v13 preferredLocation];
      virtualConference = [v13 virtualConference];
      urlWithAllowedScheme = [virtualConference urlWithAllowedScheme];

      v20 = v7;
      if (urlWithAllowedScheme)
      {
        conferenceURLForDisplay = urlWithAllowedScheme;
        virtualConference2 = [v13 virtualConference];
        joinMethods = [virtualConference2 joinMethods];
        firstObject2 = [joinMethods firstObject];
        isBroadcast = [firstObject2 isBroadcast];
      }

      else
      {
        conferenceURLForDisplay = [v13 conferenceURLForDisplay];
        isBroadcast = 0;
      }

      v55 = isBroadcast;
      mailtoURLProvider = [(CALNTriggeredEventNotificationEKDataSource *)self mailtoURLProvider];
      v73 = [mailtoURLProvider mailtoURLForEvent:v13];

      hasAlarms = [v13 hasAlarms];
      eventOccurrenceID = [v13 eventOccurrenceID];
      v56 = [v13 travelAdvisoryBehavior] == 2;

      v21 = conferenceURLForDisplay;
    }

    else
    {
      v20 = v7;
      v64 = 0;
      title = 0;
      v63 = 0;
      startDate = 0;
      v76 = 0;
      isAllDay = 0;
      v75 = 0;
      hasPredictedLocation = 0;
      preferredLocation = 0;
      v21 = 0;
      v55 = 0;
      v73 = 0;
      hasAlarms = 0;
      eventOccurrenceID = 0;
      v56 = 0;
      emailAddress = 0;
      v77 = 0;
      LOBYTE(v60) = 1;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-eventkit-alert-%@", v20];
    coreLocationManager = [(CALNTriggeredEventNotificationEKDataSource *)self coreLocationManager];
    allowsLocationAlerts = [coreLocationManager allowsLocationAlerts];

    debugPreferences = [(CALNTriggeredEventNotificationEKDataSource *)self debugPreferences];
    forceDisplayOfNewTravelAdvisoryHypotheses = [debugPreferences forceDisplayOfNewTravelAdvisoryHypotheses];

    v42 = [CALNTriggeredEventNotificationInfo alloc];
    objectID = [v13 objectID];
    stringRepresentation = [objectID stringRepresentation];
    v45 = v13;
    v46 = stringRepresentation;
    v58 = v45;
    calendar2 = [v45 calendar];
    calendarIdentifier = [calendar2 calendarIdentifier];
    BYTE4(v54) = v56;
    BYTE3(v54) = forceDisplayOfNewTravelAdvisoryHypotheses;
    BYTE2(v54) = allowsLocationAlerts;
    BYTE1(v54) = hasAlarms;
    LOBYTE(v54) = hasPredictedLocation;
    LOBYTE(v53) = v55;
    LOBYTE(v52) = v60;
    v16 = [CALNTriggeredEventNotificationInfo initWithTitle:v42 location:"initWithTitle:location:locationWithoutPrediction:startDate:endDate:isAllDay:isTimeSensitive:eventID:eventOccurrenceID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:preferredLocation:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:allowsLocationAlerts:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:title startDate:v64 endDate:v63 isAllDay:startDate isTimeSensitive:v76 eventID:isAllDay eventOccurrenceID:v52 eventObjectID:v20 organizerPhoneNumber:eventOccurrenceID organizerEmailAddress:v46 calendarIdentifier:v77 eventRepresentationDictionary:emailAddress legacyIdentifier:calendarIdentifier preferredLocation:v75 conferenceURL:v37 conferenceURLIsBroadcast:preferredLocation mailtoURL:v21 hasSuggestedLocation:v53 eventHasAlarms:v73 allowsLocationAlerts:v54 forceDisplayOfNewTravelAdvisoryHypotheses:? travelAdvisoryDisabled:?];

    v49 = +[CALNLogSubsystem calendar];
    identifierCopy = v70;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v81 = v70;
      v82 = 2112;
      v83 = v16;
      _os_log_impl(&dword_242909000, v49, OS_LOG_TYPE_DEFAULT, "Fetched triggered event notification info with source client identifier: %{public}@. Triggered notification info: %@.", buf, 0x16u);
    }

    eventStore = v68;
    v8 = v69;
    v12 = v67;
    v15 = v77;
    v13 = v58;
    v7 = v20;
    goto LABEL_28;
  }

  v15 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationEKDataSource fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:isProtectedDataAvailable:];
  }

  v16 = 0;
LABEL_28:

  v50 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)shouldWithdrawNotificationWithSourceClientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v14 = 0;
  v15 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v15 andAlarmID:&v14 fromSourceClientIdentifier:identifierCopy];
  v5 = v15;
  v6 = v14;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    if (v7)
    {
      eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
      eventStore = [eventStoreProvider eventStore];

      v10 = [eventStore _eventOccurrenceWithURI:v7];

      if (v10)
      {
        v11 = [(CALNTriggeredEventNotificationEKDataSource *)self _shouldWithdrawNotificationWithSourceClientIdentifier:identifierCopy event:v10 alarmID:v6];
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for sourceClientIdentifier %{public}@. Withdrawing notification.", buf, 0xCu);
  }

  v11 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)shouldRemoveNotificationMetaDataWithEventID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:dCopy];
  if (!v5)
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = dCopy;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for eventID = %{public}@. Should remove notification meta data.", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  v8 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:dCopy];
  v9 = v8;
  if (v8)
  {
    endDate = [v8 endDate];
    if (endDate)
    {
      v11 = [dateCopy laterDate:endDate];
      v12 = [v11 isEqualToDate:dateCopy];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v13 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = dCopy;
      _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for eventID = %{public}@. Should remove time to leave refresh timer.", &v16, 0xCu);
    }

    v12 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)notificationExpirationDateForEventID:(id)d alarmID:(id)iD
{
  v41 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:dCopy];
  if (v8)
  {
    v9 = [objc_opt_class() _alarmForEvent:v8 withAlarmID:iDCopy];
    startDate = [v8 startDate];
    v11 = [objc_opt_class() _alarmDateForAlarm:v9 eventStartDate:startDate];
    endDate = [v8 endDate];
    v13 = [(CALNTriggeredEventNotificationEKDataSource *)self _notificationExpirationDateForNullableAlarmDate:v11 eventEndDate:endDate];
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      absoluteDate = [v9 absoluteDate];
      isAbsolute = [v9 isAbsolute];
      v16 = @"NO";
      if (isAbsolute)
      {
        v16 = @"YES";
      }

      v21 = v16;
      v17 = MEMORY[0x277CCABB0];
      [v9 relativeOffset];
      v18 = [v17 numberWithDouble:?];
      *buf = 138545410;
      v24 = dCopy;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = startDate;
      v29 = 2114;
      v30 = endDate;
      v31 = 2114;
      v32 = iDCopy;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = absoluteDate;
      v37 = 2114;
      v38 = v21;
      v39 = 2114;
      v40 = v18;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Computed notification expiration date for event id = %{public}@, expiration date = %{public}@, event start date = %{public}@, event end date = %{public}@, alarm id = %{public}@, alarm date = %{public}@, alarm absolute date = %{public}@, is alarm absolute = %{public}@, alarm relative offset %{public}@", buf, 0x5Cu);
    }
  }

  else
  {
    v13 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)_alarmDateForAlarm:(id)alarm eventStartDate:(id)date
{
  dateCopy = date;
  if (!alarm)
  {
    v12 = 0;
    goto LABEL_9;
  }

  alarmCopy = alarm;
  absoluteDate = [alarmCopy absoluteDate];
  [alarmCopy relativeOffset];
  v9 = v8;
  isAbsolute = [alarmCopy isAbsolute];

  if (isAbsolute)
  {
    v11 = absoluteDate;
  }

  else
  {
    if (!dateCopy)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v11 = [dateCopy dateByAddingTimeInterval:v9];
  }

  v12 = v11;
LABEL_8:

LABEL_9:

  return v12;
}

- (id)_notificationExpirationDateForNullableAlarmDate:(id)date eventEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v8 = endDateCopy;
  if (endDateCopy)
  {
    v9 = endDateCopy;
    if (dateCopy)
    {
      v10 = [(CALNTriggeredEventNotificationEKDataSource *)self _notificationExpirationDateForAlarmDate:dateCopy eventEndDate:v9];

      v9 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_notificationExpirationDateForAlarmDate:(id)date eventEndDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  [dateCopy timeIntervalSinceDate:endDateCopy];
  if (v7 >= 0.0)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [dateCopy dateByAddingDays:1 inCalendar:currentCalendar];
  }

  else
  {
    v8 = endDateCopy;
  }

  return v8;
}

- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)date sourceClientIdentifier:(id)identifier
{
  dateCopy = date;
  v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifier];
  if (v7)
  {
    [(CALNTriggeredEventNotificationEKDataSource *)self setUpTimeToLeaveRefreshTimerWithTriggerDate:dateCopy eventID:v7];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource setUpTimeToLeaveRefreshTimerWithTriggerDate:sourceClientIdentifier:];
    }
  }
}

- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)date eventID:(id)d
{
  dCopy = d;
  dateCopy = date;
  timeToLeaveRefreshMonitor = [(CALNTriggeredEventNotificationEKDataSource *)self timeToLeaveRefreshMonitor];
  [timeToLeaveRefreshMonitor setUpRefreshTimerWithTriggerDate:dateCopy eventExternalURL:dCopy];

  [(CALNTriggeredEventNotificationEKDataSource *)self _didSetUpTimeToLeaveRefreshTimerForEventID:dCopy triggerDate:dateCopy];
}

- (void)removeTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier
{
  v10 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v5)
  {
    [(CALNTriggeredEventNotificationEKDataSource *)self removeTimeToLeaveRefreshTimerForEventID:v5];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = identifierCopy;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "No event ID available to remove time to leave refresh timer. source client identifier = %{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeTimeToLeaveRefreshTimerForEventID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  timeToLeaveRefreshMonitor = [(CALNTriggeredEventNotificationEKDataSource *)self timeToLeaveRefreshMonitor];
  [timeToLeaveRefreshMonitor removeRefreshTimerForEventExternalURL:dCopy];

  travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [travelEngine cancelHypothesisRefreshRequestForEventWithExternalURL:dCopy];

  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = dCopy;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Cancelled hypothesis refresh request for event ID = %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didSetUpTimeToLeaveRefreshTimerForEventID:(id)d triggerDate:(id)date
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  [(CALNTriggeredEventNotificationEKDataSource *)self _requestHypothesisRefreshInterval];
  v9 = [dateCopy dateByAddingTimeInterval:-v8];

  travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [travelEngine requestHypothesisRefreshAtDate:v9 forEventWithExternalURL:dCopy];

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = dCopy;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Requested hypothesis refresh date for event ID = %{public}@, requested hypothesis refresh date = %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ceaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v5)
  {
    [(CALNTriggeredEventNotificationEKDataSource *)self ceaseRouteMonitoringEventWithEventID:v5];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource ceaseRouteMonitoringEventForSourceClientIdentifier:];
    }
  }
}

- (void)ceaseRouteMonitoringEventWithEventID:(id)d
{
  v10 = *MEMORY[0x277D85DE8];
  dCopy = d;
  travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [travelEngine ceaseMonitoringForEventWithExternalURL:dCopy];

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = dCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Ceased route monitoring for event ID = %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)snoozeEventWithSourceClientIdentifier:(id)identifier snoozeType:(unint64_t)type
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__CALNTriggeredEventNotificationEKDataSource_snoozeEventWithSourceClientIdentifier_snoozeType___block_invoke;
  v8[3] = &unk_278D6F200;
  selfCopy = self;
  typeCopy = type;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(CALNTriggeredEventNotificationEKDataSource *)self _handleNotificationActionForSourceClientIdentifier:v7 acknowledgeAlarm:0 eventActions:v8];
}

void __95__CALNTriggeredEventNotificationEKDataSource_snoozeEventWithSourceClientIdentifier_snoozeType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 48);
  v8 = 0.0;
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          v8 = 300.0;
        }
      }

      else
      {
        v8 = 540.0;
      }
    }

    else if (v7 == 2)
    {
      v8 = 900.0;
    }

    else if (v7 == 3)
    {
      v8 = 1800.0;
    }

    else
    {
      v8 = 3600.0;
    }

    goto LABEL_22;
  }

  if (v7 <= 6)
  {
    if (v7 == 5)
    {
      v10 = [v5 startDate];
      v11 = v10;
      v12 = -1800.0;
    }

    else
    {
      v10 = [v5 startDate];
      v11 = v10;
      v12 = -900.0;
    }

    goto LABEL_20;
  }

  switch(v7)
  {
    case 7:
      v10 = [v5 startDate];
      v11 = v10;
      v12 = -300.0;
LABEL_20:
      v13 = [v10 dateByAddingTimeInterval:v12];

      goto LABEL_25;
    case 8:
      v9 = [v5 startDate];
      break;
    case 9:
      v9 = [v5 endDate];
      break;
    default:
LABEL_22:
      v14 = v7 == 0;
LABEL_29:
      [v5 snoozeAlarm:v6 withTimeIntervalFromNow:v14 pinsTriggerToStartDate:v8];
      v18 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v21 = 138543618;
        v22 = v19;
        v23 = 2048;
        v24 = v8;
        _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "Snoozed event: %{public}@ duration: %f", &v21, 0x16u);
      }

      v13 = [*(a1 + 40) remoteMutator];
      [v13 setSnoozeTimeInterval:v6 alarm:v5 calendarItem:v8];
      goto LABEL_32;
  }

  v13 = v9;
LABEL_25:
  v15 = *(a1 + 48);
  v14 = v15 == 0;
  if (!v13)
  {
    goto LABEL_29;
  }

  [v5 snoozeAlarm:v6 untilTargetDate:v13 pinsTriggerToStartDate:v15 == 0];
  v16 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 32);
    v21 = 138543618;
    v22 = v17;
    v23 = 2114;
    v24 = *&v13;
    _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Snoozed event: %{public}@ until: %{public}@", &v21, 0x16u);
  }

LABEL_32:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)handleDirectionsActionWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis lastFireTimeOfAlertOffsetFromTravelTime:(id)time
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = identifierCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Handling directions action with source client identifier (%{public}@)", &v20, 0xCu);
  }

  if (hypothesisCopy)
  {
    eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    v12 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
    v13 = [eventStore _eventOccurrenceWithURI:v12];
    preferredLocation = [v13 preferredLocation];
    isPrediction = [preferredLocation isPrediction];

    calendar = [v13 calendar];
    v17 = [calendar sharingStatus] != 0;

    ttlEventTracker = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
    [CALNTimeToLeaveEventTrackerUtilities trackDirectionsEngagedForNotificationUsingTTLEventTracker:ttlEventTracker hypothesis:hypothesisCopy hasSuggestedLocation:isPrediction isOnSharedCalendar:v17];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleMailOrganizerActionWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = identifierCopy;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Handling mail organizer action with source client identifier (%{public}@)", &v19, 0xCu);
  }

  if (hypothesisCopy)
  {
    eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:identifierCopy];
    v12 = [eventStore _eventOccurrenceWithURI:v11];
    preferredLocation = [v12 preferredLocation];
    isPrediction = [preferredLocation isPrediction];

    calendar = [v12 calendar];
    v16 = [calendar sharingStatus] != 0;

    ttlEventTracker = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
    [CALNTimeToLeaveEventTrackerUtilities trackEmailEngagedForNotificationUsingTTLEventTracker:ttlEventTracker hypothesis:hypothesisCopy hasSuggestedLocation:isPrediction isOnSharedCalendar:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:(id)engine receivedHypothesis:(id)hypothesis eventExternalURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  hypothesisCopy = hypothesis;
  lCopy = l;
  v9 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:lCopy];
  if (v9)
  {
    v10 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:lCopy alarmID:0];
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = lCopy;
      v19 = 2112;
      v20 = hypothesisCopy;
      _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Lastest hypothesis has been emitted to be trigged as a notification. source client identifier = %{public}@, event external url = %{public}@, hypothesis = %@", &v15, 0x20u);
    }

    delegate = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (delegate)
    {
      v13 = [[CALNTriggeredEventNotificationTriggerData alloc] initWithTrigger:1 alarmID:0 isOffsetFromTravelTimeStart:0 hypothesis:hypothesisCopy];
      [delegate dataSource:self triggeredWithSourceClientIdentifier:v10 triggerData:v13];
    }

    else
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(&v13->super, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationEKDataSource travelEngine:receivedHypothesis:eventExternalURL:];
      }
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource travelEngine:receivedHypothesis:eventExternalURL:];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:(id)engine eventSignificantlyChangedWithEventExternalURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:lCopy alarmID:0];
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = lCopy;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Travel engine event changed significantly. source client identifier = %{public}@, event external url = %{public}@", &v11, 0x16u);
  }

  delegate = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
  if (delegate)
  {
    delegate2 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    [delegate2 dataSource:self travelEngineEventSignificantlyChangedWithSourceClientIdentifier:v6];
  }

  else
  {
    delegate2 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(delegate2, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource travelEngine:eventSignificantlyChangedWithEventExternalURL:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timeToLeaveRefreshMonitor:(id)monitor refreshTimerFiredForEventExternalURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:lCopy];
  if (v6)
  {
    v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:lCopy alarmID:0];
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = lCopy;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Leave now refresh timer fired for source client identifier = %{public}@, event external url = %{public}@", &v12, 0x16u);
    }

    delegate = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (delegate)
    {
      v10 = [[CALNTriggeredEventNotificationTriggerData alloc] initWithTrigger:2 alarmID:0 isOffsetFromTravelTimeStart:0 hypothesis:0];
      [delegate dataSource:self triggeredWithSourceClientIdentifier:v7 triggerData:v10];
    }

    else
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationEKDataSource timeToLeaveRefreshMonitor:refreshTimerFiredForEventExternalURL:];
      }
    }
  }

  else
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource timeToLeaveRefreshMonitor:refreshTimerFiredForEventExternalURL:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis travelAdvisoryTimelinessPeriod:(unint64_t)period
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = identifierCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to send feedback for added notification with source client identifier = %{public}@", buf, 0xCu);
  }

  v11 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:identifierCopy];
  foundInAppsEventTracker = [(CALNTriggeredEventNotificationEKDataSource *)self foundInAppsEventTracker];
  suggestionsServiceLogger = [(CALNTriggeredEventNotificationEKDataSource *)self suggestionsServiceLogger];
  ttlEventTracker = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
  [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:identifierCopy event:v11 hypothesis:hypothesisCopy travelAdvisoryTimelinessPeriod:period foundInAppsEventTracker:foundInAppsEventTracker suggestionsServiceLogger:suggestionsServiceLogger ttlEventTracker:ttlEventTracker];

  travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [CALNTriggeredEventNotificationFeedbackHelper sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:period sourceClientIdentifier:identifierCopy travelEngine:travelEngine];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v5)
  {
    travelEngine = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
    [travelEngine sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:v5];
  }

  else
  {
    travelEngine = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(travelEngine, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:];
    }
  }
}

- (void)didDismissUINotification:(unint64_t)notification forPlannedDestination:(id)destination dismissalType:(unint64_t)type
{
  destinationCopy = destination;
  routeHypothesizerProvider = [(CALNTriggeredEventNotificationEKDataSource *)self routeHypothesizerProvider];
  [routeHypothesizerProvider didDismissUINotification:notification forPlannedDestination:destinationCopy dismissalType:type];
}

- (void)_alertsFired:(id)fired
{
  v28 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  v5 = os_transaction_create();
  userInfo = [firedCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"EKAlarmEngineAlarmOccurrencesKey"];
  v8 = [v7 count];
  v9 = +[CALNLogSubsystem calendar];
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      v27 = [v7 count];
      _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Received alarm engine notification with %{public}d fired alerts", buf, 8u);
    }

    v11 = [(CALNTriggeredEventNotificationEKDataSource *)self _filterAlerts:v7];
    v12 = [v11 count];
    if (v12 != [v7 count])
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v7 count];
        v15 = [v11 count];
        *buf = 67240192;
        v27 = v14 - v15;
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Filtered out %{public}d fired alerts that referenced the same event as other alerts firing at the same time", buf, 8u);
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v11;
    v16 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v10);
          }

          [(CALNTriggeredEventNotificationEKDataSource *)self _alertFiredForAlertInfo:*(*(&v21 + 1) + 8 * v19++), v21];
        }

        while (v17 != v19);
        v17 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationEKDataSource _alertsFired:v10];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_alertFiredForAlertInfo:(id)info
{
  v14 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(CALNTriggeredEventNotificationEKDataSource *)self _shouldTriggerForAlertInfo:infoCopy])
  {
    v5 = [objc_opt_class() _sourceClientIdentifierForAlertInfo:infoCopy];
    delegate = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (delegate)
    {
      alarmID = [infoCopy alarmID];
      v8 = -[CALNTriggeredEventNotificationTriggerData initWithTrigger:alarmID:isOffsetFromTravelTimeStart:hypothesis:]([CALNTriggeredEventNotificationTriggerData alloc], "initWithTrigger:alarmID:isOffsetFromTravelTimeStart:hypothesis:", 0, alarmID, [infoCopy isOffsetFromTravelTimeStart], 0);
      delegate2 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
      [delegate2 dataSource:self triggeredWithSourceClientIdentifier:v5 triggerData:v8];
    }

    else
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationEKDataSource _alertFiredForAlertInfo:];
      }
    }

    goto LABEL_9;
  }

  v5 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [infoCopy entityID];
    v12 = 138543362;
    v13 = delegate;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Should not trigger for fired alert. entity ID = %{public}@", &v12, 0xCu);
LABEL_9:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldTriggerForAlertInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  entityID = [infoCopy entityID];
  scheme = [entityID scheme];

  if (!scheme)
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CALNTriggeredEventNotificationEKDataSource *)infoCopy _shouldTriggerForAlertInfo:v10];
    }

    goto LABEL_12;
  }

  if (([scheme isEqualToString:*MEMORY[0x277CC5B20]] & 1) == 0)
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource _shouldTriggerForAlertInfo:];
    }

LABEL_12:

    v9 = 0;
    goto LABEL_13;
  }

  acknowledged = [infoCopy acknowledged];
  if (acknowledged)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      entityID2 = [infoCopy entityID];
      v13 = 138543362;
      v14 = entityID2;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Should not trigger for acknowledged alert info. entity ID = %{public}@", &v13, 0xCu);
    }
  }

  v9 = acknowledged ^ 1;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_filterAlerts:(id)alerts
{
  v43 = *MEMORY[0x277D85DE8];
  alertsCopy = alerts;
  v29 = [alertsCopy count];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v29];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = alertsCopy;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v36;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v36 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v35 + 1) + 8 * i);
        entityID = [v9 entityID];
        if (entityID)
        {
          v11 = v9;
          v12 = [v4 objectForKeyedSubscript:entityID];
          v13 = v12;
          if (v12)
          {
            alarmID = [v12 alarmID];
            alarmID2 = [v11 alarmID];
            v16 = [alarmID compare:alarmID2];

            if (v16 == -1)
            {
              v17 = v13;

              v11 = v17;
            }
          }

          [v4 setObject:v11 forKeyedSubscript:entityID];
        }

        else
        {
          v11 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v9;
            _os_log_error_impl(&dword_242909000, v11, OS_LOG_TYPE_ERROR, "Received a fired alert, but the alert info has no entity ID: %@", buf, 0xCu);
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    }

    while (v6);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = obj;
  v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v31 + 1) + 8 * j);
        entityID2 = [v23 entityID];
        if (entityID2 && [v23 triggerType] && objc_msgSend(v23, "triggerType") != 1)
        {
          [v4 removeObjectForKey:entityID2];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  if ([v4 count] == v29)
  {
    allValues = v18;
  }

  else
  {
    allValues = [v4 allValues];
  }

  v26 = allValues;

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_alarmForEvent:(id)event withAlarmID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dCopy = d;
  if (dCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allAlarms = [eventCopy allAlarms];
    v8 = [allAlarms countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(allAlarms);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          externalID = [v11 externalID];
          v13 = [dCopy isEqualToString:externalID];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [allAlarms countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_shouldWithdrawNotificationWithSourceClientIdentifier:(id)identifier event:(id)event alarmID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventCopy = event;
  dCopy = d;
  if (dCopy)
  {
    v10 = [objc_opt_class() _alarmForEvent:eventCopy withAlarmID:dCopy];
    v11 = v10;
    if (!v10)
    {
      absoluteDate = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(absoluteDate, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_242909000, absoluteDate, OS_LOG_TYPE_DEFAULT, "Failed to find alarm for sourceClientIdentifier %{public}@. Withdrawing notification.", &v29, 0xCu);
      }

      v17 = 1;
      goto LABEL_24;
    }

    absoluteDate = [v10 absoluteDate];
    if (absoluteDate && ([MEMORY[0x277CBEAA8] CalSimulatedDateForNow], v13 = objc_claimAutoreleasedReturnValue(), -[NSObject timeIntervalSinceDate:](absoluteDate, "timeIntervalSinceDate:", v13), v15 = v14, v13, v15 > 0.0))
    {
      absoluteDate2 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(absoluteDate2, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_242909000, absoluteDate2, OS_LOG_TYPE_DEFAULT, "Withdrawing notification for event (%{public}@) whose alarm is now in the future.", &v29, 0xCu);
      }
    }

    else
    {
      acknowledgedDate = [v11 acknowledgedDate];

      if (!acknowledgedDate)
      {
        v17 = 0;
LABEL_24:

        goto LABEL_25;
      }

      absoluteDate2 = [v11 absoluteDate];
      if (!absoluteDate2)
      {
        startDate = [eventCopy startDate];
        v20 = MEMORY[0x277CBEAA8];
        [v11 relativeOffset];
        absoluteDate2 = [v20 dateWithTimeInterval:startDate sinceDate:?];
      }

      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        acknowledgedDate2 = [v11 acknowledgedDate];
        v29 = 138543874;
        v30 = identifierCopy;
        v31 = 2114;
        v32 = absoluteDate2;
        v33 = 2114;
        v34 = acknowledgedDate2;
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Computed fire date for event (%{public}@): %{public}@. Inspecting item's alarm acknowledged date to determine whether or not to withdraw notification. Events's alarm acknowledged date: %{public}@.", &v29, 0x20u);
      }

      acknowledgedDate3 = [v11 acknowledgedDate];
      [acknowledgedDate3 timeIntervalSinceDate:absoluteDate2];
      v25 = v24;

      if (v25 < 0.0)
      {
        v17 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v26 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = identifierCopy;
        _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Withdrawing notification for event (%{public}@) whose alarm has been acknowledged (probably on another device).", &v29, 0xCu);
      }
    }

    v17 = 1;
    goto LABEL_23;
  }

  v17 = [eventCopy travelAdvisoryBehavior] == 2;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_handleNotificationActionForSourceClientIdentifier:(id)identifier acknowledgeAlarm:(BOOL)alarm eventActions:(id)actions
{
  alarmCopy = alarm;
  v30 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v22 = 0;
  v23 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v23 andAlarmID:&v22 fromSourceClientIdentifier:identifier];
  v9 = v23;
  v10 = v22;
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v14 = [eventStore _eventOccurrenceWithURI:v11];
  v15 = [objc_opt_class() _alarmForEvent:v14 withAlarmID:v10];
  if (v15)
  {
    if (alarmCopy)
    {
      calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      [v15 setAcknowledgedDate:calSimulatedDateForNow];
    }

    if (actionsCopy)
    {
      actionsCopy[2](actionsCopy, v14, v15);
    }

    v21 = 0;
    v17 = [eventStore saveEvent:v14 span:2 error:&v21];
    v18 = v21;
    if ((v17 & 1) == 0)
    {
      v19 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v25 = v10;
        v26 = 2114;
        v27 = v9;
        v28 = 2112;
        v29 = v18;
        _os_log_error_impl(&dword_242909000, v19, OS_LOG_TYPE_ERROR, "Error acknowledging alarm (%{public}@) for event (%{public}@): %@", buf, 0x20u);
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_eventForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v5)
  {
    v6 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v5];
  }

  else
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)_eventForEventID:(id)d
{
  dCopy = d;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
  if (v5)
  {
    eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    eventStore = [eventStoreProvider eventStore];

    v8 = [eventStore _eventOccurrenceWithURI:v5];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource _eventForEventID:];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_sourceClientIdentifierForAlertInfo:(id)info
{
  infoCopy = info;
  entityID = [infoCopy entityID];
  absoluteString = [entityID absoluteString];

  externalID = [infoCopy externalID];

  v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:absoluteString alarmID:externalID];

  return v7;
}

- (id)eventObjectIDForEventID:(id)d
{
  dCopy = d;
  eventStoreProvider = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  eventStore = [eventStoreProvider eventStore];

  v7 = [eventStore _eventOccurrenceWithURI:dCopy];

  objectID = [v7 objectID];
  stringRepresentation = [objectID stringRepresentation];

  return stringRepresentation;
}

- (CALNTriggeredEventNotificationDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:isProtectedDataAvailable:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not get event ID url to use for fetching triggered event notification info. source client identifier = %{public}@, event ID = %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:isProtectedDataAvailable:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not get event for source client identifier with protected data available. source client identifier = %{public}@, event ID = %{public}@. Could not get notification info as a result.");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:sourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "No event ID available to set up time to leave refresh timer. source client identifier = @{public}@, trigger date = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)ceaseRouteMonitoringEventForSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get event ID to cease route monitoring event for source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)acknowledgeEventWithSourceClientIdentifier:shouldMarkAsHavingReceivedLocation:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Cannot mark as having received location because location alerts are not allowed, source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:receivedHypothesis:eventExternalURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "No delegate to send travel advice received message. event external url = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:receivedHypothesis:eventExternalURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_0(&dword_242909000, v0, v1, "Could not fetch event for event id = %{public}@. Suppressing received hypothesis trigger as a result, hypothesis = %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:eventSignificantlyChangedWithEventExternalURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "No delegate to send travel engine event significantly changed. event external url = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:(uint64_t)a3 authorizationChanged:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_242909000, a2, a3, "No delegate to send travel engine authorization changed message. authorized = %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)timeToLeaveRefreshMonitor:refreshTimerFiredForEventExternalURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "No delegate to send time to leave refresh timer fired message. event external url = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)timeToLeaveRefreshMonitor:refreshTimerFiredForEventExternalURL:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not fetch event for event id = %{public}@. Suppressing time to leave refresh timer trigger as a result.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get event ID for source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_alertFiredForAlertInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "No delegate available to send alert fired message. source client identifier = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_shouldTriggerForAlertInfo:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Should not trigger for fired alert with entity ID scheme = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_shouldTriggerForAlertInfo:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 entityID];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Should not trigger for fired alert info without scheme. entity ID = %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_eventForEventID:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_242909000, v0, v1, "Could not get event ID url for event ID = %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end