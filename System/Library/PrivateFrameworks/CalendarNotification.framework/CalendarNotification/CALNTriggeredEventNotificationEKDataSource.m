@interface CALNTriggeredEventNotificationEKDataSource
+ (id)_alarmDateForAlarm:(id)a3 eventStartDate:(id)a4;
+ (id)_alarmForEvent:(id)a3 withAlarmID:(id)a4;
+ (id)_sourceClientIdentifierForAlertInfo:(id)a3;
- (BOOL)_shouldTriggerForAlertInfo:(id)a3;
- (BOOL)_shouldWithdrawNotificationWithSourceClientIdentifier:(id)a3 event:(id)a4 alarmID:(id)a5;
- (BOOL)shouldRemoveNotificationMetaDataWithEventID:(id)a3;
- (BOOL)shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4;
- (BOOL)shouldWithdrawNotificationWithSourceClientIdentifier:(id)a3;
- (CALNTriggeredEventNotificationDataSourceDelegate)delegate;
- (CALNTriggeredEventNotificationEKDataSource)initWithEventStoreProvider:(id)a3 remoteMutator:(id)a4 dataSourceEventRepresentationProvider:(id)a5 coreLocationProvider:(id)a6 ttlEventTracker:(id)a7 alarmEngineMonitor:(id)a8 travelEngine:(id)a9 foundInAppsEventTracker:(id)a10 suggestionsServiceLogger:(id)a11 routeHypothesizerProvider:(id)a12 timeToLeaveRefreshMonitor:(id)a13 debugPreferences:(id)a14 mailtoURLProvider:(id)a15;
- (id)_eventForEventID:(id)a3;
- (id)_eventForSourceClientIdentifier:(id)a3;
- (id)_filterAlerts:(id)a3;
- (id)_notificationExpirationDateForAlarmDate:(id)a3 eventEndDate:(id)a4;
- (id)_notificationExpirationDateForNullableAlarmDate:(id)a3 eventEndDate:(id)a4;
- (id)eventObjectIDForEventID:(id)a3;
- (id)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:(id)a3 isProtectedDataAvailable:(BOOL)a4;
- (id)notificationExpirationDateForEventID:(id)a3 alarmID:(id)a4;
- (void)_alertFiredForAlertInfo:(id)a3;
- (void)_alertsFired:(id)a3;
- (void)_didSetUpTimeToLeaveRefreshTimerForEventID:(id)a3 triggerDate:(id)a4;
- (void)_handleNotificationActionForSourceClientIdentifier:(id)a3 acknowledgeAlarm:(BOOL)a4 eventActions:(id)a5;
- (void)ceaseRouteMonitoringEventForSourceClientIdentifier:(id)a3;
- (void)ceaseRouteMonitoringEventWithEventID:(id)a3;
- (void)didDismissUINotification:(unint64_t)a3 forPlannedDestination:(id)a4 dismissalType:(unint64_t)a5;
- (void)handleDirectionsActionWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4 lastFireTimeOfAlertOffsetFromTravelTime:(id)a5;
- (void)handleMailOrganizerActionWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4;
- (void)removeTimeToLeaveRefreshTimerForEventID:(id)a3;
- (void)removeTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3;
- (void)sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:(id)a3;
- (void)sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4 travelAdvisoryTimelinessPeriod:(unint64_t)a5;
- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)a3 eventID:(id)a4;
- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)a3 sourceClientIdentifier:(id)a4;
- (void)snoozeEventWithSourceClientIdentifier:(id)a3 snoozeType:(unint64_t)a4;
- (void)timeToLeaveRefreshMonitor:(id)a3 refreshTimerFiredForEventExternalURL:(id)a4;
- (void)travelEngine:(id)a3 eventSignificantlyChangedWithEventExternalURL:(id)a4;
- (void)travelEngine:(id)a3 receivedHypothesis:(id)a4 eventExternalURL:(id)a5;
@end

@implementation CALNTriggeredEventNotificationEKDataSource

- (CALNTriggeredEventNotificationEKDataSource)initWithEventStoreProvider:(id)a3 remoteMutator:(id)a4 dataSourceEventRepresentationProvider:(id)a5 coreLocationProvider:(id)a6 ttlEventTracker:(id)a7 alarmEngineMonitor:(id)a8 travelEngine:(id)a9 foundInAppsEventTracker:(id)a10 suggestionsServiceLogger:(id)a11 routeHypothesizerProvider:(id)a12 timeToLeaveRefreshMonitor:(id)a13 debugPreferences:(id)a14 mailtoURLProvider:(id)a15
{
  v44 = a3;
  v33 = a4;
  v43 = a4;
  v34 = a5;
  v42 = a5;
  v20 = a6;
  v41 = a7;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v37 = a11;
  v36 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v45.receiver = self;
  v45.super_class = CALNTriggeredEventNotificationEKDataSource;
  v24 = [(CALNTriggeredEventNotificationEKDataSource *)&v45 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_eventStoreProvider, a3);
    objc_storeStrong(&v25->_remoteMutator, v33);
    objc_storeStrong(&v25->_dataSourceEventRepresentationProvider, v34);
    v26 = [[CALNCalendarCoreLocationManager alloc] initWithCoreLocationProvider:v20];
    coreLocationManager = v25->_coreLocationManager;
    v25->_coreLocationManager = v26;

    objc_storeStrong(&v25->_ttlEventTracker, a7);
    objc_storeStrong(&v25->_alarmEngineMonitor, a8);
    objc_storeStrong(&v25->_travelEngine, a9);
    objc_storeStrong(&v25->_foundInAppsEventTracker, a10);
    objc_storeStrong(&v25->_suggestionsServiceLogger, a11);
    objc_storeStrong(&v25->_routeHypothesizerProvider, a12);
    objc_storeStrong(&v25->_timeToLeaveRefreshMonitor, a13);
    objc_storeStrong(&v25->_debugPreferences, a14);
    objc_storeStrong(&v25->_mailtoURLProvider, a15);
    v28 = [(CALNTriggeredEventNotificationEKDataSource *)v25 alarmEngineMonitor];
    [v28 addAlarmsFiredObserver:v25 selector:sel__alertsFired_];

    v29 = [(CALNTriggeredEventNotificationEKDataSource *)v25 travelEngine];
    [v29 setDelegate:v25];

    v30 = [(CALNTriggeredEventNotificationEKDataSource *)v25 timeToLeaveRefreshMonitor];
    [v30 setDelegate:v25];
  }

  return v25;
}

- (id)fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:(id)a3 isProtectedDataAvailable:(BOOL)a4
{
  v4 = a4;
  v84 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v78 = 0;
  v79 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v79 andAlarmID:&v78 fromSourceClientIdentifier:v6];
  v7 = v79;
  v8 = v78;
  v9 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  v10 = [v9 eventStore];

  if (v7 && ([MEMORY[0x277CBEBC0] URLWithString:v7], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [v10 _eventOccurrenceWithURI:v11];
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

  if (!v4)
  {
LABEL_12:
    v70 = v6;
    v68 = v10;
    v69 = v8;
    v67 = v12;
    if (v13)
    {
      v17 = [v13 organizer];
      v57 = v17;
      if (v17)
      {
        v18 = v17;
        v19 = [v17 phoneNumber];
        v66 = [v18 emailAddress];
      }

      else
      {
        v66 = 0;
        v19 = 0;
      }

      v65 = [v13 title];
      v22 = [v13 location];
      v23 = [v13 locationsWithoutPrediction];
      v24 = [v23 firstObject];

      v71 = [v13 startDate];
      v25 = [v13 endDate];
      v62 = [v13 isAllDay];
      v76 = v25;
      v77 = v19;
      if ([v13 isAllDay] & 1) != 0 || (objc_msgSend(v13, "isBirthday"))
      {
        LOBYTE(v60) = 0;
      }

      else
      {
        v26 = [v13 calendar];
        v60 = [v26 isSubscribed] ^ 1;
      }

      v63 = v24;
      v64 = v22;
      v27 = [(CALNTriggeredEventNotificationEKDataSource *)self dataSourceEventRepresentationProvider];
      v28 = [v10 timeZone];
      v75 = [v27 eventRepresentationDictionaryForUpcomingEvent:v13 date:v71 displayTimeZone:v28];

      v61 = [v13 hasPredictedLocation];
      v74 = [v13 preferredLocation];
      v29 = [v13 virtualConference];
      v30 = [v29 urlWithAllowedScheme];

      v20 = v7;
      if (v30)
      {
        v31 = v30;
        v32 = [v13 virtualConference];
        v33 = [v32 joinMethods];
        v34 = [v33 firstObject];
        v35 = [v34 isBroadcast];
      }

      else
      {
        v31 = [v13 conferenceURLForDisplay];
        v35 = 0;
      }

      v55 = v35;
      v36 = [(CALNTriggeredEventNotificationEKDataSource *)self mailtoURLProvider];
      v73 = [v36 mailtoURLForEvent:v13];

      v59 = [v13 hasAlarms];
      v72 = [v13 eventOccurrenceID];
      v56 = [v13 travelAdvisoryBehavior] == 2;

      v21 = v31;
    }

    else
    {
      v20 = v7;
      v64 = 0;
      v65 = 0;
      v63 = 0;
      v71 = 0;
      v76 = 0;
      v62 = 0;
      v75 = 0;
      v61 = 0;
      v74 = 0;
      v21 = 0;
      v55 = 0;
      v73 = 0;
      v59 = 0;
      v72 = 0;
      v56 = 0;
      v66 = 0;
      v77 = 0;
      LOBYTE(v60) = 1;
    }

    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"x-apple-eventkit-alert-%@", v20];
    v38 = [(CALNTriggeredEventNotificationEKDataSource *)self coreLocationManager];
    v39 = [v38 allowsLocationAlerts];

    v40 = [(CALNTriggeredEventNotificationEKDataSource *)self debugPreferences];
    v41 = [v40 forceDisplayOfNewTravelAdvisoryHypotheses];

    v42 = [CALNTriggeredEventNotificationInfo alloc];
    v43 = [v13 objectID];
    v44 = [v43 stringRepresentation];
    v45 = v13;
    v46 = v44;
    v58 = v45;
    v47 = [v45 calendar];
    v48 = [v47 calendarIdentifier];
    BYTE4(v54) = v56;
    BYTE3(v54) = v41;
    BYTE2(v54) = v39;
    BYTE1(v54) = v59;
    LOBYTE(v54) = v61;
    LOBYTE(v53) = v55;
    LOBYTE(v52) = v60;
    v16 = [CALNTriggeredEventNotificationInfo initWithTitle:v42 location:"initWithTitle:location:locationWithoutPrediction:startDate:endDate:isAllDay:isTimeSensitive:eventID:eventOccurrenceID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:preferredLocation:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:allowsLocationAlerts:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:v65 startDate:v64 endDate:v63 isAllDay:v71 isTimeSensitive:v76 eventID:v62 eventOccurrenceID:v52 eventObjectID:v20 organizerPhoneNumber:v72 organizerEmailAddress:v46 calendarIdentifier:v77 eventRepresentationDictionary:v66 legacyIdentifier:v48 preferredLocation:v75 conferenceURL:v37 conferenceURLIsBroadcast:v74 mailtoURL:v21 hasSuggestedLocation:v53 eventHasAlarms:v73 allowsLocationAlerts:v54 forceDisplayOfNewTravelAdvisoryHypotheses:? travelAdvisoryDisabled:?];

    v49 = +[CALNLogSubsystem calendar];
    v6 = v70;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v81 = v70;
      v82 = 2112;
      v83 = v16;
      _os_log_impl(&dword_242909000, v49, OS_LOG_TYPE_DEFAULT, "Fetched triggered event notification info with source client identifier: %{public}@. Triggered notification info: %@.", buf, 0x16u);
    }

    v10 = v68;
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

- (BOOL)shouldWithdrawNotificationWithSourceClientIdentifier:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v15 andAlarmID:&v14 fromSourceClientIdentifier:v4];
  v5 = v15;
  v6 = v14;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:v5];
    if (v7)
    {
      v8 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
      v9 = [v8 eventStore];

      v10 = [v9 _eventOccurrenceWithURI:v7];

      if (v10)
      {
        v11 = [(CALNTriggeredEventNotificationEKDataSource *)self _shouldWithdrawNotificationWithSourceClientIdentifier:v4 event:v10 alarmID:v6];
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
    v17 = v4;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for sourceClientIdentifier %{public}@. Withdrawing notification.", buf, 0xCu);
  }

  v11 = 1;
LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)shouldRemoveNotificationMetaDataWithEventID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v4];
  if (!v5)
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for eventID = %{public}@. Should remove notification meta data.", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 == 0;
}

- (BOOL)shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)a3 eventID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 endDate];
    if (v10)
    {
      v11 = [v6 laterDate:v10];
      v12 = [v11 isEqualToDate:v6];
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
      v17 = v7;
      _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Failed to find event occurrence for eventID = %{public}@. Should remove time to leave refresh timer.", &v16, 0xCu);
    }

    v12 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)notificationExpirationDateForEventID:(id)a3 alarmID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v6];
  if (v8)
  {
    v9 = [objc_opt_class() _alarmForEvent:v8 withAlarmID:v7];
    v10 = [v8 startDate];
    v11 = [objc_opt_class() _alarmDateForAlarm:v9 eventStartDate:v10];
    v12 = [v8 endDate];
    v13 = [(CALNTriggeredEventNotificationEKDataSource *)self _notificationExpirationDateForNullableAlarmDate:v11 eventEndDate:v12];
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v9 absoluteDate];
      v15 = [v9 isAbsolute];
      v16 = @"NO";
      if (v15)
      {
        v16 = @"YES";
      }

      v21 = v16;
      v17 = MEMORY[0x277CCABB0];
      [v9 relativeOffset];
      v18 = [v17 numberWithDouble:?];
      *buf = 138545410;
      v24 = v6;
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      v31 = 2114;
      v32 = v7;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v22;
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

+ (id)_alarmDateForAlarm:(id)a3 eventStartDate:(id)a4
{
  v5 = a4;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v6 = a3;
  v7 = [v6 absoluteDate];
  [v6 relativeOffset];
  v9 = v8;
  v10 = [v6 isAbsolute];

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    if (!v5)
    {
      v12 = 0;
      goto LABEL_8;
    }

    v11 = [v5 dateByAddingTimeInterval:v9];
  }

  v12 = v11;
LABEL_8:

LABEL_9:

  return v12;
}

- (id)_notificationExpirationDateForNullableAlarmDate:(id)a3 eventEndDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (v6)
    {
      v10 = [(CALNTriggeredEventNotificationEKDataSource *)self _notificationExpirationDateForAlarmDate:v6 eventEndDate:v9];

      v9 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_notificationExpirationDateForAlarmDate:(id)a3 eventEndDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  [v5 timeIntervalSinceDate:v6];
  if (v7 >= 0.0)
  {
    v9 = [MEMORY[0x277CBEA80] currentCalendar];
    v8 = [v5 dateByAddingDays:1 inCalendar:v9];
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)a3 sourceClientIdentifier:(id)a4
{
  v6 = a3;
  v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:a4];
  if (v7)
  {
    [(CALNTriggeredEventNotificationEKDataSource *)self setUpTimeToLeaveRefreshTimerWithTriggerDate:v6 eventID:v7];
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

- (void)setUpTimeToLeaveRefreshTimerWithTriggerDate:(id)a3 eventID:(id)a4
{
  v6 = a4;
  v8 = a3;
  v7 = [(CALNTriggeredEventNotificationEKDataSource *)self timeToLeaveRefreshMonitor];
  [v7 setUpRefreshTimerWithTriggerDate:v8 eventExternalURL:v6];

  [(CALNTriggeredEventNotificationEKDataSource *)self _didSetUpTimeToLeaveRefreshTimerForEventID:v6 triggerDate:v8];
}

- (void)removeTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v4];
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
      v9 = v4;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "No event ID available to remove time to leave refresh timer. source client identifier = %{public}@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)removeTimeToLeaveRefreshTimerForEventID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationEKDataSource *)self timeToLeaveRefreshMonitor];
  [v5 removeRefreshTimerForEventExternalURL:v4];

  v6 = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [v6 cancelHypothesisRefreshRequestForEventWithExternalURL:v4];

  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Cancelled hypothesis refresh request for event ID = %{public}@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_didSetUpTimeToLeaveRefreshTimerForEventID:(id)a3 triggerDate:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(CALNTriggeredEventNotificationEKDataSource *)self _requestHypothesisRefreshInterval];
  v9 = [v7 dateByAddingTimeInterval:-v8];

  v10 = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [v10 requestHypothesisRefreshAtDate:v9 forEventWithExternalURL:v6];

  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Requested hypothesis refresh date for event ID = %{public}@, requested hypothesis refresh date = %{public}@", &v13, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)ceaseRouteMonitoringEventForSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v4];
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

- (void)ceaseRouteMonitoringEventWithEventID:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [v5 ceaseMonitoringForEventWithExternalURL:v4];

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Ceased route monitoring for event ID = %{public}@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)snoozeEventWithSourceClientIdentifier:(id)a3 snoozeType:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__CALNTriggeredEventNotificationEKDataSource_snoozeEventWithSourceClientIdentifier_snoozeType___block_invoke;
  v8[3] = &unk_278D6F200;
  v10 = self;
  v11 = a4;
  v9 = v6;
  v7 = v6;
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

- (void)handleDirectionsActionWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4 lastFireTimeOfAlertOffsetFromTravelTime:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138543362;
    v21 = v7;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Handling directions action with source client identifier (%{public}@)", &v20, 0xCu);
  }

  if (v8)
  {
    v10 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    v11 = [v10 eventStore];

    v12 = [MEMORY[0x277CBEBC0] URLWithString:v7];
    v13 = [v11 _eventOccurrenceWithURI:v12];
    v14 = [v13 preferredLocation];
    v15 = [v14 isPrediction];

    v16 = [v13 calendar];
    v17 = [v16 sharingStatus] != 0;

    v18 = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
    [CALNTimeToLeaveEventTrackerUtilities trackDirectionsEngagedForNotificationUsingTTLEventTracker:v18 hypothesis:v8 hasSuggestedLocation:v15 isOnSharedCalendar:v17];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)handleMailOrganizerActionWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = v6;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Handling mail organizer action with source client identifier (%{public}@)", &v19, 0xCu);
  }

  if (v7)
  {
    v9 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    v10 = [v9 eventStore];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v12 = [v10 _eventOccurrenceWithURI:v11];
    v13 = [v12 preferredLocation];
    v14 = [v13 isPrediction];

    v15 = [v12 calendar];
    v16 = [v15 sharingStatus] != 0;

    v17 = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
    [CALNTimeToLeaveEventTrackerUtilities trackEmailEngagedForNotificationUsingTTLEventTracker:v17 hypothesis:v7 hasSuggestedLocation:v14 isOnSharedCalendar:v16];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)travelEngine:(id)a3 receivedHypothesis:(id)a4 eventExternalURL:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v8];
  if (v9)
  {
    v10 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:v8 alarmID:0];
    v11 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v10;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "Lastest hypothesis has been emitted to be trigged as a notification. source client identifier = %{public}@, event external url = %{public}@, hypothesis = %@", &v15, 0x20u);
    }

    v12 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (v12)
    {
      v13 = [[CALNTriggeredEventNotificationTriggerData alloc] initWithTrigger:1 alarmID:0 isOffsetFromTravelTimeStart:0 hypothesis:v7];
      [v12 dataSource:self triggeredWithSourceClientIdentifier:v10 triggerData:v13];
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

- (void)travelEngine:(id)a3 eventSignificantlyChangedWithEventExternalURL:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:v5 alarmID:0];
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = v6;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Travel engine event changed significantly. source client identifier = %{public}@, event external url = %{public}@", &v11, 0x16u);
  }

  v8 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
  if (v8)
  {
    v9 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    [v9 dataSource:self travelEngineEventSignificantlyChangedWithSourceClientIdentifier:v6];
  }

  else
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource travelEngine:eventSignificantlyChangedWithEventExternalURL:];
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)timeToLeaveRefreshMonitor:(id)a3 refreshTimerFiredForEventExternalURL:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForEventID:v5];
  if (v6)
  {
    v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:v5 alarmID:0];
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Leave now refresh timer fired for source client identifier = %{public}@, event external url = %{public}@", &v12, 0x16u);
    }

    v9 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (v9)
    {
      v10 = [[CALNTriggeredEventNotificationTriggerData alloc] initWithTrigger:2 alarmID:0 isOffsetFromTravelTimeStart:0 hypothesis:0];
      [v9 dataSource:self triggeredWithSourceClientIdentifier:v7 triggerData:v10];
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

- (void)sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:(id)a3 hypothesis:(id)a4 travelAdvisoryTimelinessPeriod:(unint64_t)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v8;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Preparing to send feedback for added notification with source client identifier = %{public}@", buf, 0xCu);
  }

  v11 = [(CALNTriggeredEventNotificationEKDataSource *)self _eventForSourceClientIdentifier:v8];
  v12 = [(CALNTriggeredEventNotificationEKDataSource *)self foundInAppsEventTracker];
  v13 = [(CALNTriggeredEventNotificationEKDataSource *)self suggestionsServiceLogger];
  v14 = [(CALNTriggeredEventNotificationEKDataSource *)self ttlEventTracker];
  [CALNTriggeredEventNotificationFeedbackHelper recordDisplayOfInitialTimeToLeaveAlertForSourceClientIdentifier:v8 event:v11 hypothesis:v9 travelAdvisoryTimelinessPeriod:a5 foundInAppsEventTracker:v12 suggestionsServiceLogger:v13 ttlEventTracker:v14];

  v15 = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
  [CALNTriggeredEventNotificationFeedbackHelper sendFeedbackForPostingNotificationWithTravelAdvisoryTimelinessPeriod:a5 sourceClientIdentifier:v8 travelEngine:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v4];
  if (v5)
  {
    v6 = [(CALNTriggeredEventNotificationEKDataSource *)self travelEngine];
    [v6 sendFeedbackForPostingLeaveNowNotificationForEventWithExternalURL:v5];
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationEKDataSource sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:];
    }
  }
}

- (void)didDismissUINotification:(unint64_t)a3 forPlannedDestination:(id)a4 dismissalType:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CALNTriggeredEventNotificationEKDataSource *)self routeHypothesizerProvider];
  [v9 didDismissUINotification:a3 forPlannedDestination:v8 dismissalType:a5];
}

- (void)_alertsFired:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_transaction_create();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"EKAlarmEngineAlarmOccurrencesKey"];
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

- (void)_alertFiredForAlertInfo:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(CALNTriggeredEventNotificationEKDataSource *)self _shouldTriggerForAlertInfo:v4])
  {
    v5 = [objc_opt_class() _sourceClientIdentifierForAlertInfo:v4];
    v6 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
    if (v6)
    {
      v7 = [v4 alarmID];
      v8 = -[CALNTriggeredEventNotificationTriggerData initWithTrigger:alarmID:isOffsetFromTravelTimeStart:hypothesis:]([CALNTriggeredEventNotificationTriggerData alloc], "initWithTrigger:alarmID:isOffsetFromTravelTimeStart:hypothesis:", 0, v7, [v4 isOffsetFromTravelTimeStart], 0);
      v9 = [(CALNTriggeredEventNotificationEKDataSource *)self delegate];
      [v9 dataSource:self triggeredWithSourceClientIdentifier:v5 triggerData:v8];
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
    v6 = [v4 entityID];
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_DEFAULT, "Should not trigger for fired alert. entity ID = %{public}@", &v12, 0xCu);
LABEL_9:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldTriggerForAlertInfo:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 entityID];
  v5 = [v4 scheme];

  if (!v5)
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CALNTriggeredEventNotificationEKDataSource *)v3 _shouldTriggerForAlertInfo:v10];
    }

    goto LABEL_12;
  }

  if (([v5 isEqualToString:*MEMORY[0x277CC5B20]] & 1) == 0)
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

  v6 = [v3 acknowledged];
  if (v6)
  {
    v7 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 entityID];
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Should not trigger for acknowledged alert info. entity ID = %{public}@", &v13, 0xCu);
    }
  }

  v9 = v6 ^ 1;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)_filterAlerts:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v29 = [v3 count];
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v29];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v3;
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
        v10 = [v9 entityID];
        if (v10)
        {
          v11 = v9;
          v12 = [v4 objectForKeyedSubscript:v10];
          v13 = v12;
          if (v12)
          {
            v14 = [v12 alarmID];
            v15 = [v11 alarmID];
            v16 = [v14 compare:v15];

            if (v16 == -1)
            {
              v17 = v13;

              v11 = v17;
            }
          }

          [v4 setObject:v11 forKeyedSubscript:v10];
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
        v24 = [v23 entityID];
        if (v24 && [v23 triggerType] && objc_msgSend(v23, "triggerType") != 1)
        {
          [v4 removeObjectForKey:v24];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v20);
  }

  if ([v4 count] == v29)
  {
    v25 = v18;
  }

  else
  {
    v25 = [v4 allValues];
  }

  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

+ (id)_alarmForEvent:(id)a3 withAlarmID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [v5 allAlarms];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 externalID];
          v13 = [v6 isEqualToString:v12];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (BOOL)_shouldWithdrawNotificationWithSourceClientIdentifier:(id)a3 event:(id)a4 alarmID:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [objc_opt_class() _alarmForEvent:v8 withAlarmID:v9];
    v11 = v10;
    if (!v10)
    {
      v12 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = v7;
        _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, "Failed to find alarm for sourceClientIdentifier %{public}@. Withdrawing notification.", &v29, 0xCu);
      }

      v17 = 1;
      goto LABEL_24;
    }

    v12 = [v10 absoluteDate];
    if (v12 && ([MEMORY[0x277CBEAA8] CalSimulatedDateForNow], v13 = objc_claimAutoreleasedReturnValue(), -[NSObject timeIntervalSinceDate:](v12, "timeIntervalSinceDate:", v13), v15 = v14, v13, v15 > 0.0))
    {
      v16 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543362;
        v30 = v7;
        _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Withdrawing notification for event (%{public}@) whose alarm is now in the future.", &v29, 0xCu);
      }
    }

    else
    {
      v18 = [v11 acknowledgedDate];

      if (!v18)
      {
        v17 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v16 = [v11 absoluteDate];
      if (!v16)
      {
        v19 = [v8 startDate];
        v20 = MEMORY[0x277CBEAA8];
        [v11 relativeOffset];
        v16 = [v20 dateWithTimeInterval:v19 sinceDate:?];
      }

      v21 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v11 acknowledgedDate];
        v29 = 138543874;
        v30 = v7;
        v31 = 2114;
        v32 = v16;
        v33 = 2114;
        v34 = v22;
        _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Computed fire date for event (%{public}@): %{public}@. Inspecting item's alarm acknowledged date to determine whether or not to withdraw notification. Events's alarm acknowledged date: %{public}@.", &v29, 0x20u);
      }

      v23 = [v11 acknowledgedDate];
      [v23 timeIntervalSinceDate:v16];
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
        v30 = v7;
        _os_log_impl(&dword_242909000, v26, OS_LOG_TYPE_DEFAULT, "Withdrawing notification for event (%{public}@) whose alarm has been acknowledged (probably on another device).", &v29, 0xCu);
      }
    }

    v17 = 1;
    goto LABEL_23;
  }

  v17 = [v8 travelAdvisoryBehavior] == 2;
LABEL_25:

  v27 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)_handleNotificationActionForSourceClientIdentifier:(id)a3 acknowledgeAlarm:(BOOL)a4 eventActions:(id)a5
{
  v5 = a4;
  v30 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v22 = 0;
  v23 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v23 andAlarmID:&v22 fromSourceClientIdentifier:a3];
  v9 = v23;
  v10 = v22;
  v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];
  v12 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  v13 = [v12 eventStore];

  v14 = [v13 _eventOccurrenceWithURI:v11];
  v15 = [objc_opt_class() _alarmForEvent:v14 withAlarmID:v10];
  if (v15)
  {
    if (v5)
    {
      v16 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      [v15 setAcknowledgedDate:v16];
    }

    if (v8)
    {
      v8[2](v8, v14, v15);
    }

    v21 = 0;
    v17 = [v13 saveEvent:v14 span:2 error:&v21];
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

- (id)_eventForSourceClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:v4];
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

- (id)_eventForEventID:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  if (v5)
  {
    v6 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
    v7 = [v6 eventStore];

    v8 = [v7 _eventOccurrenceWithURI:v5];
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

+ (id)_sourceClientIdentifierForAlertInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 entityID];
  v5 = [v4 absoluteString];

  v6 = [v3 externalID];

  v7 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities sourceClientIdentifierForEventID:v5 alarmID:v6];

  return v7;
}

- (id)eventObjectIDForEventID:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationEKDataSource *)self eventStoreProvider];
  v6 = [v5 eventStore];

  v7 = [v6 _eventOccurrenceWithURI:v4];

  v8 = [v7 objectID];
  v9 = [v8 stringRepresentation];

  return v9;
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