@interface EKTravelEngine
+ (double)_periodicRefreshInterval;
+ (id)requestedDarwinNotifications;
+ (id)travelEligibleEvents:(id)events fromStartDate:(id)date untilEndDate:(id)endDate;
+ (id)travelEligibleEventsInEventStore:(id)store;
- (BOOL)_authorizedToAcquireLocation;
- (BOOL)_isProtectedDataAvailable;
- (BOOL)authorized;
- (EKTravelEngine)initWithRouteHypothesizerProvider:(id)provider;
- (id)_eventStore;
- (void)_calDatabaseChangedNotificationReceived;
- (void)_calSyncClientBeginningMultiSaveNotificationReceived;
- (void)_calSyncClientFinishedMultiSaveNotificationReceived;
- (void)_enableTravelAdvisoriesForAutomaticBehaviorNotificationReceived;
- (void)_eventKitFeatureSetChanged;
- (void)_installLocationManager;
- (void)_installPeriodicRefreshTimer;
- (void)_installSyncYieldTimer;
- (void)_periodicRefreshTimerFired;
- (void)_refreshIfNeeded;
- (void)_sendFeedbackForPostingNotificationForEventWithExternalURL:(id)l feedback:(id)feedback;
- (void)_significantTimeChangeNotificationReceived;
- (void)_stopInternal;
- (void)_suggestEventLocationsSettingChanged;
- (void)_trimAgendaEntriesBeforeDate:(id)date andAfterDate:(id)afterDate;
- (void)_uninstallLocationManager;
- (void)_uninstallPeriodicRefreshTimer;
- (void)_uninstallSyncYieldTimer;
- (void)_unregisterAllAgendaEntries;
- (void)_updateDatabaseEncryptionState;
- (void)cancelHypothesisRefreshRequestForEventWithExternalURL:(id)l;
- (void)ceaseMonitoringForEventWithExternalURL:(id)l;
- (void)dealloc;
- (void)handleDarwinNotification:(id)notification;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)receivedAlarmNamed:(id)named;
- (void)requestHypothesisRefreshAtDate:(id)date forEventWithExternalURL:(id)l;
- (void)start;
- (void)stop;
@end

@implementation EKTravelEngine

+ (id)requestedDarwinNotifications
{
  v7[9] = *MEMORY[0x277D85DE8];
  stateChangedNotificationName = [MEMORY[0x277CC5A10] stateChangedNotificationName];
  v3 = *MEMORY[0x277CF7130];
  v7[7] = stateChangedNotificationName;
  v7[8] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:9];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (EKTravelEngine)initWithRouteHypothesizerProvider:(id)provider
{
  v25 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = EKTravelEngine;
  v6 = [(EKTravelEngine *)&v22 init];
  if (v6)
  {
    EKTravelEngineLogInitialize();
    objc_storeStrong(&v6->_routeHypothesizerProvider, provider);
    objc_opt_class();
    v7 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v7 UTF8String];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    workQueue = v6->_workQueue;
    v6->_workQueue = v10;

    objc_opt_class();
    v12 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v12 UTF8String];

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(uTF8String2, v14);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v15;

    v6->_databaseIsEncryptedAndUnreadable = ![(EKTravelEngine *)v6 _isProtectedDataAvailable];
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventExternalURLsToAgendaEntries = v6->_eventExternalURLsToAgendaEntries;
    v6->_eventExternalURLsToAgendaEntries = v17;

    v19 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Travel engine initialized: [%@]", buf, 0xCu);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  if (self->_running)
  {
    [(EKTravelEngine *)self _stopInternal];
  }

  v3.receiver = self;
  v3.super_class = EKTravelEngine;
  [(EKTravelEngine *)&v3 dealloc];
}

- (void)start
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__EKTravelEngine_start__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __23__EKTravelEngine_start__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  v5 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "The travel engine is already running.  Will not start engine: [%@]", &v11, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Travel engine preparing to start: [%@]", &v11, 0xCu);
    }

    *(*(a1 + 32) + 34) = [*(a1 + 32) _isProtectedDataAvailable] ^ 1;
    [*(a1 + 32) _installPeriodicRefreshTimer];
    [*(a1 + 32) _installLocationManager];
    *(*(a1 + 32) + 35) = 0;
    *(*(a1 + 32) + 33) = 1;
    *(*(a1 + 32) + 32) = 1;
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Travel engine started: [%@]", &v11, 0xCu);
    }

    [*(a1 + 32) _refreshIfNeeded];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__EKTravelEngine_stop__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_sync(workQueue, block);
}

void __22__EKTravelEngine_stop__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  v5 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "The travel engine is preparing to stop: [%@]", &v11, 0xCu);
    }

    [*(a1 + 32) _stopInternal];
    [*(a1 + 32) _uninstallLocationManager];
    *(*(a1 + 32) + 32) = 0;
    v4 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      v8 = "Travel engine stopped: [%@]";
LABEL_8:
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, v8, &v11, 0xCu);
    }
  }

  else if (v5)
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    v8 = "The travel engine is not running.  Will not stop engine: [%@]";
    goto LABEL_8;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_stopInternal
{
  [(EKTravelEngine *)self _unregisterAllAgendaEntries];
  [(EKTravelEngine *)self _uninstallSyncYieldTimer];

  [(EKTravelEngine *)self _uninstallPeriodicRefreshTimer];
}

- (void)requestHypothesisRefreshAtDate:(id)date forEventWithExternalURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  lCopy = l;
  if (lCopy)
  {
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__EKTravelEngine_requestHypothesisRefreshAtDate_forEventWithExternalURL___block_invoke;
    block[3] = &unk_278D6F318;
    v12 = dateCopy;
    v13 = lCopy;
    selfCopy = self;
    dispatch_sync(workQueue, block);
  }

  else
  {
    v9 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = dateCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "nil 'externalURL' given. Will not request hypothesis refresh at date: [%@] for any events.", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __73__EKTravelEngine_requestHypothesisRefreshAtDate_forEventWithExternalURL___block_invoke(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC5978];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Requesting hypothesis refresh at date: [%@] for event that has external URL: [%@]", &v12, 0x16u);
  }

  v6 = [*(a1[6] + 40) objectForKey:a1[5]];
  v7 = v6;
  if (v6)
  {
    [v6 requestHypothesisRefreshAtDate:a1[4]];
  }

  else
  {
    v8 = *v2;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = a1[5];
      v12 = 138412546;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Will not request hypothesis refresh at date: [%@] for event that has external URL: [%@] because is isn't being monitored", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelHypothesisRefreshRequestForEventWithExternalURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__EKTravelEngine_cancelHypothesisRefreshRequestForEventWithExternalURL___block_invoke;
    v8[3] = &unk_278D6F278;
    v9 = lCopy;
    selfCopy = self;
    dispatch_sync(workQueue, v8);
  }

  else
  {
    v7 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "nil 'externalURL' given. Will not cancel a hypothesis refresh request for any events.", buf, 2u);
    }
  }
}

void __72__EKTravelEngine_cancelHypothesisRefreshRequestForEventWithExternalURL___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC5978];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Canceling hypothesis refresh request for event that has external URL: [%@]", &v10, 0xCu);
  }

  v5 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 32)];
  v6 = v5;
  if (v5)
  {
    [v5 cancelHypothesisRefreshRequest];
  }

  else
  {
    v7 = *v2;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Will not cancel refresh request for event that has external URL: [%@] because it isn't being monitored.", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)ceaseMonitoringForEventWithExternalURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    workQueue = self->_workQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__EKTravelEngine_ceaseMonitoringForEventWithExternalURL___block_invoke;
    v8[3] = &unk_278D6F278;
    v9 = lCopy;
    selfCopy = self;
    dispatch_sync(workQueue, v8);
  }

  else
  {
    v7 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "nil 'externalURL' given.  Will not cease monitoring for any events.", buf, 2u);
    }
  }
}

void __57__EKTravelEngine_ceaseMonitoringForEventWithExternalURL___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CC5978];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Ceasing monitoring for event that has external URL: [%@]", &v11, 0xCu);
  }

  v5 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 32)];
  if (v5)
  {
    v6 = [MEMORY[0x277CC5A18] shared];
    v7 = [v6 preventMarkingTravelAdvisoryEntriesAsDismissed];

    if ((v7 & 1) == 0)
    {
      [v5 setDismissed:1];
    }

    [v5 reset];
  }

  else
  {
    v8 = *v2;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Will not cease monitoring for event that has external URL: [%@] because it isn't being monitored.", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleDarwinNotification:(id)notification
{
  notificationCopy = notification;
  if ([notificationCopy isEqualToString:*MEMORY[0x277CF7560]])
  {
    [(EKTravelEngine *)self _calDatabaseChangedNotificationReceived];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7708]])
  {
    [(EKTravelEngine *)self _calSyncClientBeginningMultiSaveNotificationReceived];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7710]])
  {
    [(EKTravelEngine *)self _calSyncClientFinishedMultiSaveNotificationReceived];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7118]])
  {
    [(EKTravelEngine *)self _enableTravelAdvisoriesForAutomaticBehaviorNotificationReceived];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7908]])
  {
    [(EKTravelEngine *)self _significantTimeChangeNotificationReceived];
  }

  else if ([notificationCopy isEqualToString:*MEMORY[0x277CC5968]])
  {
    [(EKTravelEngine *)self _eventKitFeatureSetChanged];
  }

  else
  {
    stateChangedNotificationName = [MEMORY[0x277CC5A10] stateChangedNotificationName];
    v5 = [notificationCopy isEqualToString:stateChangedNotificationName];

    if (v5)
    {
      [(EKTravelEngine *)self _updateDatabaseEncryptionState];
    }

    else if ([notificationCopy isEqualToString:*MEMORY[0x277CF7130]])
    {
      [(EKTravelEngine *)self _suggestEventLocationsSettingChanged];
    }
  }
}

- (void)receivedAlarmNamed:(id)named
{
  v33 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v5 = [namedCopy hasPrefix:@"com.apple.calaccessd.travelEngine."];
  v6 = MEMORY[0x277CC5980];
  v7 = *MEMORY[0x277CC5980];
  v8 = os_log_type_enabled(*MEMORY[0x277CC5980], OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = namedCopy;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "EKTravelEngine received alarm named: %{public}@", &buf, 0xCu);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    alarmName = [(EKTravelEngine *)self alarmName];
    v10 = [namedCopy isEqualToString:alarmName];

    if (v10)
    {
      *(v25 + 24) = 1;
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_DEFAULT, "EKTravelEngine received periodic refresh alarm", &buf, 2u);
      }

      workQueue = self->_workQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__EKTravelEngine_receivedAlarmNamed___block_invoke;
      block[3] = &unk_278D6F250;
      block[4] = self;
      dispatch_sync(workQueue, block);
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v29 = 0x3032000000;
      v30 = __Block_byref_object_copy__3;
      v31 = __Block_byref_object_dispose__3;
      v32 = 0;
      v13 = self->_workQueue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __37__EKTravelEngine_receivedAlarmNamed___block_invoke_19;
      v22[3] = &unk_278D6F460;
      v22[4] = self;
      v22[5] = &buf;
      dispatch_sync(v13, v22);
      v14 = *(*(&buf + 1) + 40);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __37__EKTravelEngine_receivedAlarmNamed___block_invoke_2;
      v19[3] = &unk_278D6F508;
      v21 = &v24;
      v20 = namedCopy;
      [v14 enumerateObjectsUsingBlock:v19];

      _Block_object_dispose(&buf, 8);
    }

    if ((v25[3] & 1) == 0)
    {
      v15 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_DEFAULT, "Uninstalling unrecognized alarm for travel engine", &buf, 2u);
      }

      v16 = namedCopy;
      [namedCopy UTF8String];
      v17 = *MEMORY[0x277CF7880];
      xpc_set_event();
    }

    _Block_object_dispose(&v24, 8);
  }

  else if (v8)
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = namedCopy;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "EKTravelEngine skipping the alarm named: %{public}@. It may be an alarm from another place like EKAlarmEngine.", &buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __37__EKTravelEngine_receivedAlarmNamed___block_invoke_19(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __37__EKTravelEngine_receivedAlarmNamed___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v7;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v3;
  *(*(*(a1 + 40) + 8) + 24) |= [v5 receivedAlarmNamed:v4];
  v6 = [v5 throttle];

  *(*(*(a1 + 40) + 8) + 24) |= [v6 receivedAlarmNamed:*(a1 + 32)];
}

+ (id)travelEligibleEventsInEventStore:(id)store
{
  v4 = MEMORY[0x277CBEAA8];
  storeCopy = store;
  calSimulatedDateForNow = [v4 CalSimulatedDateForNow];
  [objc_opt_class() _travelAgendaTimeWindowInterval];
  v7 = [calSimulatedDateForNow dateByAddingTimeInterval:?];
  v8 = [self travelEligibleEvents:storeCopy fromStartDate:calSimulatedDateForNow untilEndDate:v7];

  return v8;
}

+ (id)travelEligibleEvents:(id)events fromStartDate:(id)date untilEndDate:(id)endDate
{
  v35 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  endDateCopy = endDate;
  v9 = [eventsCopy calendarsForEntityType:0];
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (([v16 isIgnoringEventAlerts] & 1) == 0)
        {
          source = [v16 source];
          isDelegate = [source isDelegate];

          if ((isDelegate & 1) == 0)
          {
            [array addObject:v16];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = dateCopy;
    v30 = 2112;
    v31 = endDateCopy;
    v32 = 2112;
    v33 = array;
    _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Will search for travel agenda candidates between [%@] and [%@].  Calendars to search: [%@]", buf, 0x20u);
  }

  v20 = [eventsCopy travelEligibleEventsInCalendars:array startDate:dateCopy endDate:endDateCopy];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)authorized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  workQueue = self->_workQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __28__EKTravelEngine_authorized__block_invoke;
  v5[3] = &unk_278D6F460;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(workQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __28__EKTravelEngine_authorized__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) authorizedInternal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v24 = *MEMORY[0x277D85DE8];
  authorizationStatus = [authorization authorizationStatus];
  dispatch_assert_queue_V2(self->_workQueue);
  v5 = MEMORY[0x277CC5978];
  v6 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CC5B00];
    v8 = v6;
    v9 = [v7 authorizationStatusAsString:authorizationStatus];
    *buf = 138412290;
    v23 = v9;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Location authorization status changed to [%@]", buf, 0xCu);
  }

  v10 = [(EKTravelEngine *)self isLocationManagerStatusAuthorized:authorizationStatus];
  if (v10)
  {
    [(EKTravelEngine *)self _refreshIfNeeded];
  }

  else if ((authorizationStatus - 1) <= 1)
  {
    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"com.apple.calendar.LocationAuthDenied" object:0 userInfo:0 deliverImmediately:1];

    [(EKTravelEngine *)self _unregisterAllAgendaEntries];
    self->_needsRefresh = 1;
  }

  if (v10 != [(EKTravelEngine *)self authorizedInternal])
  {
    [(EKTravelEngine *)self setAuthorizedInternal:v10];
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = MEMORY[0x277CCABB0];
      v14 = v12;
      v15 = [v13 numberWithBool:{-[EKTravelEngine authorizedInternal](self, "authorizedInternal")}];
      *buf = 138412290;
      v23 = v15;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "The location authorization state has changed.  self.authorizedInternal: [%@]", buf, 0xCu);
    }

    authorizationChangedBlock = [(EKTravelEngine *)self authorizationChangedBlock];
    v17 = authorizationChangedBlock;
    if (authorizationChangedBlock)
    {
      callbackQueue = self->_callbackQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__EKTravelEngine_locationManagerDidChangeAuthorization___block_invoke;
      block[3] = &unk_278D6F550;
      v21 = authorizationChangedBlock;
      dispatch_async(callbackQueue, block);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_calDatabaseChangedNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7560];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__EKTravelEngine__calDatabaseChangedNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_eventKitFeatureSetChanged
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "The state EventKit feature set was changed", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__EKTravelEngine__eventKitFeatureSetChanged__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_suggestEventLocationsSettingChanged
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "The state of SuggestEventLocations was changed", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__EKTravelEngine__suggestEventLocationsSettingChanged__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_calSyncClientBeginningMultiSaveNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7708];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__EKTravelEngine__calSyncClientBeginningMultiSaveNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __70__EKTravelEngine__calSyncClientBeginningMultiSaveNotificationReceived__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 35) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "The travel engine is yielding to sync already.  Ignoring notification.", v6, 2u);
    }
  }

  else
  {
    *(v3 + 35) = 1;
    v5 = *(a1 + 32);

    [v5 _installSyncYieldTimer];
  }
}

- (void)_calSyncClientFinishedMultiSaveNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7710];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__EKTravelEngine__calSyncClientFinishedMultiSaveNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __69__EKTravelEngine__calSyncClientFinishedMultiSaveNotificationReceived__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 35))
  {
    *(v1 + 35) = 0;
    [*(a1 + 32) _uninstallSyncYieldTimer];
    v3 = *(a1 + 32);

    [v3 _refreshIfNeeded];
  }

  else
  {
    v4 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "The travel engine is not currently yielding to sync.  Ignoring notification.", v5, 2u);
    }
  }
}

- (void)_enableTravelAdvisoriesForAutomaticBehaviorNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7118];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__EKTravelEngine__enableTravelAdvisoriesForAutomaticBehaviorNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_significantTimeChangeNotificationReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *MEMORY[0x277CF7908];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Received notification: [%@].", buf, 0xCu);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__EKTravelEngine__significantTimeChangeNotificationReceived__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__EKTravelEngine__significantTimeChangeNotificationReceived__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v3 = [v2 isBeforeDate:*(*(a1 + 32) + 64)];
  v4 = *MEMORY[0x277CC5978];
  v5 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(*(a1 + 32) + 64);
      v9 = 138543618;
      v10 = v2;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Refreshing in response to significant time changed notification as the current time (%{public}@) is before the last time we refreshed (%{public}@)", &v9, 0x16u);
    }

    *(*(a1 + 32) + 33) = 1;
    [*(a1 + 32) _refreshIfNeeded];
  }

  else if (v5)
  {
    v7 = *(*(a1 + 32) + 64);
    v9 = 138543618;
    v10 = v2;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "NOT refreshing in response to significant time changed notification as the current time (%{public}@) is after the last time we refreshed (%{public}@)", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDatabaseEncryptionState
{
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Updating database encryption state.", buf, 2u);
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__EKTravelEngine__updateDatabaseEncryptionState__block_invoke;
  block[3] = &unk_278D6F250;
  block[4] = self;
  dispatch_async(workQueue, block);
}

_BYTE *__48__EKTravelEngine__updateDatabaseEncryptionState__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[34] == 1)
  {
    result = [result _isProtectedDataAvailable];
    if (result)
    {
      *(*(a1 + 32) + 34) = 0;
      *(*(a1 + 32) + 33) = 1;
      v3 = *(a1 + 32);

      return [v3 _refreshIfNeeded];
    }
  }

  return result;
}

- (BOOL)_isProtectedDataAvailable
{
  v2 = objc_alloc_init(MEMORY[0x277CC5A10]);
  dataIsAccessible = [v2 dataIsAccessible];

  return dataIsAccessible;
}

- (void)_installSyncYieldTimer
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Installing sync yield timer for travel engine: [%@].", buf, 0xCu);
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_workQueue);
  syncYieldTimer = self->_syncYieldTimer;
  self->_syncYieldTimer = v5;

  v7 = dispatch_time(0, 240000000000);
  dispatch_source_set_timer(self->_syncYieldTimer, v7, 0xFFFFFFFFFFFFFFFFLL, 0x12A05F200uLL);
  v8 = self->_syncYieldTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40__EKTravelEngine__installSyncYieldTimer__block_invoke;
  handler[3] = &unk_278D6F250;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy = 240;
    v14 = 2112;
    selfCopy2 = self;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Installed sync yield timer with [%ld] second length for travel engine: [%@].", buf, 0x16u);
  }

  dispatch_resume(self->_syncYieldTimer);
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __40__EKTravelEngine__installSyncYieldTimer__block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_ERROR))
  {
    __40__EKTravelEngine__installSyncYieldTimer__block_invoke_cold_1(v2);
  }

  *(*(a1 + 32) + 35) = 0;
  [*(a1 + 32) _refreshIfNeeded];
  return [*(a1 + 32) _uninstallSyncYieldTimer];
}

- (void)_uninstallSyncYieldTimer
{
  v8 = *MEMORY[0x277D85DE8];
  if (self->_syncYieldTimer)
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling sync yield timer for travel engine: [%@].", &v6, 0xCu);
    }

    dispatch_source_cancel(self->_syncYieldTimer);
    syncYieldTimer = self->_syncYieldTimer;
    self->_syncYieldTimer = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (double)_periodicRefreshInterval
{
  +[EKTravelEngineAgendaEntry fuzzyMaximumInitialUpdateIntervalBeforeStartDate];
  v3 = v2;
  [objc_opt_class() _travelAgendaTimeWindowInterval];
  return v4 - v3 + -120.0;
}

- (void)_installPeriodicRefreshTimer
{
  v22 = *MEMORY[0x277D85DE8];
  [objc_opt_class() _periodicRefreshInterval];
  v4 = v3;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [date dateByAddingTimeInterval:v4];

  v7 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277CCABB0];
    v9 = v7;
    v10 = [v8 numberWithDouble:v4];
    v16 = 138412802;
    selfCopy = self;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Installing a periodic refresh timer for travel engine: [%@].  Timer interval: [%@].  Estimated fire date (based on system time): [%@].", &v16, 0x20u);
  }

  v11 = ((ceil(v4) + time(0)) * 1000000000.0);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_date(v12, *MEMORY[0x277CF7888], v11);
  v13 = *MEMORY[0x277CF7880];
  alarmName = [(EKTravelEngine *)self alarmName];
  [alarmName UTF8String];
  xpc_set_event();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallPeriodicRefreshTimer
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Uninstalling the periodic refresh timer for travel engine: [%@].", &v7, 0xCu);
  }

  v4 = *MEMORY[0x277CF7880];
  alarmName = [(EKTravelEngine *)self alarmName];
  [alarmName UTF8String];
  xpc_set_event();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_trimAgendaEntriesBeforeDate:(id)date andAfterDate:(id)afterDate
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  afterDateCopy = afterDate;
  v8 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = dateCopy;
    v21 = 2112;
    v22 = afterDateCopy;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Trimming entries before [%@] and after [%@].", buf, 0x16u);
  }

  eventExternalURLsToAgendaEntries = self->_eventExternalURLsToAgendaEntries;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __60__EKTravelEngine__trimAgendaEntriesBeforeDate_andAfterDate___block_invoke;
  v16[3] = &unk_278D6F578;
  v17 = dateCopy;
  v18 = afterDateCopy;
  v10 = afterDateCopy;
  v11 = dateCopy;
  v12 = [(NSMutableDictionary *)eventExternalURLsToAgendaEntries keysOfEntriesPassingTest:v16];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__EKTravelEngine__trimAgendaEntriesBeforeDate_andAfterDate___block_invoke_41;
  v15[3] = &unk_278D6F5A0;
  v15[4] = self;
  [v12 enumerateObjectsUsingBlock:v15];
  allObjects = [v12 allObjects];
  [(NSMutableDictionary *)self->_eventExternalURLsToAgendaEntries removeObjectsForKeys:allObjects];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __60__EKTravelEngine__trimAgendaEntriesBeforeDate_andAfterDate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 originalEvent];
  v6 = [v5 startDate];

  v7 = [v4 originalEvent];
  v8 = [v7 endDate];

  if ([v8 CalIsBeforeOrSameAsDate:*(a1 + 32)])
  {
    v9 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      v10 = "Removing travel agenda entry that ends before the time window: [%@]";
LABEL_7:
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, v10, &v14, 0xCu);
    }
  }

  else
  {
    if (![v6 CalIsAfterDate:*(a1 + 40)])
    {
      v11 = 0;
      goto LABEL_10;
    }

    v9 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      v10 = "Removing travel agenda entry that starts after the time window: [%@]";
      goto LABEL_7;
    }
  }

  v11 = 1;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

void __60__EKTravelEngine__trimAgendaEntriesBeforeDate_andAfterDate___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 40) objectForKey:a2];
  [v2 reset];
}

- (BOOL)_authorizedToAcquireLocation
{
  bundle = [MEMORY[0x277CF77F8] bundle];
  v3 = [MEMORY[0x277CF77F0] authorizationStatusForBundle:bundle];
  v4 = *MEMORY[0x277CF78A0];
  v5 = [MEMORY[0x277CF77F0] authorizationStatusForBundleIdentifier:*MEMORY[0x277CF78A0]];
  v6 = [MEMORY[0x277CF77F0] preciseLocationAuthorizedForBundle:bundle];
  v7 = [MEMORY[0x277CF77F0] preciseLocationAuthorizedForBundleIdentifier:v4];
  v9 = v3 == 3 && v5 > 2;
  v10 = v6 & v7;

  return v9 & v10;
}

- (id)_eventStore
{
  timedEventStorePurger = self->_timedEventStorePurger;
  if (!timedEventStorePurger)
  {
    v4 = objc_alloc_init(MEMORY[0x277CC5AE8]);
    v5 = self->_timedEventStorePurger;
    self->_timedEventStorePurger = v4;

    [(EKTimedEventStorePurger *)self->_timedEventStorePurger setTimeout:4.0];
    [(EKTimedEventStorePurger *)self->_timedEventStorePurger setPurgingAllowed:1];
    [(EKTimedEventStorePurger *)self->_timedEventStorePurger setCreationBlock:&__block_literal_global_48];
    timedEventStorePurger = self->_timedEventStorePurger;
  }

  return [(EKTimedEventStorePurger *)timedEventStorePurger acquireCachedEventStoreOrCreate:1];
}

id __29__EKTravelEngine__eventStore__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CC5A40]);

  return v0;
}

- (void)_refreshIfNeeded
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_needsRefresh)
  {
    if (self->_databaseIsEncryptedAndUnreadable)
    {
      v3 = *MEMORY[0x277CC5978];
      if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        v4 = "Cannot access data. Will not refresh data for travel engine: [%@]";
LABEL_10:
        _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
      }
    }

    else if (self->_yieldingToSync)
    {
      v3 = *MEMORY[0x277CC5978];
      if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        selfCopy5 = self;
        v4 = "Currently yielding to sync. Will not refresh data for travel engine: [%@]";
        goto LABEL_10;
      }
    }

    else
    {
      _authorizedToAcquireLocation = [(EKTravelEngine *)self _authorizedToAcquireLocation];
      v7 = MEMORY[0x277CC5978];
      v8 = *MEMORY[0x277CC5978];
      v9 = os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT);
      if (_authorizedToAcquireLocation)
      {
        if (v9)
        {
          *buf = 138412290;
          selfCopy5 = self;
          _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Refreshing data for travel engine: [%@]", buf, 0xCu);
        }

        calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
        objc_storeStrong(&self->_lastRefreshDate, calSimulatedDateForNow);
        _eventStore = [(EKTravelEngine *)self _eventStore];
        [objc_opt_class() _travelAgendaTimeWindowInterval];
        v13 = v12;
        v14 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v15 = MEMORY[0x277CCABB0];
          v16 = v14;
          v17 = [v15 numberWithDouble:v13];
          *buf = 138412290;
          selfCopy5 = v17;
          _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "The travel agenda time window interval is [%@] seconds.", buf, 0xCu);
        }

        v18 = [calSimulatedDateForNow dateByAddingTimeInterval:v13];
        [(EKTravelEngine *)self _trimAgendaEntriesBeforeDate:calSimulatedDateForNow andAfterDate:v18];
        v19 = [EKTravelEngine travelEligibleEvents:_eventStore fromStartDate:calSimulatedDateForNow untilEndDate:v18];
        v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v21 = *v7;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v21;
          v23 = [v19 count];
          *buf = 134217984;
          selfCopy5 = v23;
          _os_log_impl(&dword_242909000, v22, OS_LOG_TYPE_DEFAULT, "Found [%lu] travel agenda candidates.", buf, 0xCu);
        }

        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke;
        v30[3] = &unk_278D6F660;
        v30[4] = self;
        v24 = v20;
        v31 = v24;
        [v19 enumerateObjectsUsingBlock:v30];
        v25 = [(NSMutableDictionary *)self->_eventExternalURLsToAgendaEntries copy];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_60;
        v27[3] = &unk_278D6F688;
        v28 = v24;
        selfCopy4 = self;
        v26 = v24;
        [v25 enumerateKeysAndObjectsUsingBlock:v27];

        self->_needsRefresh = 0;
      }

      else
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Calendar system service is not authorized to use location", buf, 2u);
        }

        self->_needsRefresh = 1;
      }
    }
  }

  else
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy5 = self;
      v4 = "Data does not need to be refreshed.  Will not refresh data for travel engine: [%@]";
      goto LABEL_10;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 externalURL];
  v4 = [v3 absoluteString];

  v5 = [v2 preferredLocation];
  v6 = MEMORY[0x277CC5978];
  v7 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v2 title];
    v10 = [v2 startDate];
    *buf = 138413058;
    v67 = v9;
    v68 = 2112;
    v69 = v5;
    v70 = 2112;
    v71 = v10;
    v72 = 2112;
    v73 = v4;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Inspecting travel agenda candidate event with title [%@], location [%@], start date [%@], and external URL [%@].", buf, 0x2Au);
  }

  if (v4)
  {
    if (!v5)
    {
      v16 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v4;
        _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "No location for event with external URL: [%@].  Will unregister as travel entry if it exists.", buf, 0xCu);
      }

      v17 = [*(*(a1 + 32) + 40) objectForKey:v4];
      if (v17)
      {
        v18 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v4;
          _os_log_impl(&dword_242909000, v18, OS_LOG_TYPE_DEFAULT, "Unregistering event with external URL [%@] since it seems to have lost its location.", buf, 0xCu);
        }

        [v17 reset];
        [*(*(a1 + 32) + 40) removeObjectForKey:v4];
      }

      goto LABEL_43;
    }

    if ([CALNNotificationFilter shouldIgnoreNotificationForEvent:v2])
    {
      v11 = *v6;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Event is or may be junk. Will not register as travel agenda item.";
        v13 = v11;
        v14 = 2;
LABEL_10:
        _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    v19 = [v2 travelStartLocation];
    v58 = [v19 routing];

    v20 = [MEMORY[0x277CF77E8] routingModeEnumForCalRouteType:v58];
    if (v58)
    {
      v57 = [MEMORY[0x277CC5B00] geoTransportTypeForCalLocationRoutingMode:v20];
    }

    else
    {
      v21 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = MEMORY[0x277CC5B00];
        v23 = v21;
        v24 = [v22 geoTransportTypeAsString:4];
        *buf = 138412546;
        v67 = v4;
        v68 = 2112;
        v69 = v24;
        _os_log_impl(&dword_242909000, v23, OS_LOG_TYPE_DEFAULT, "No routing method found on event with external URL [%@].  Defaulting to [%@].", buf, 0x16u);
      }

      v57 = 4;
    }

    v25 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v26 = MEMORY[0x277CC5B00];
      v27 = v25;
      v28 = [v26 geoTransportTypeAsString:v57];
      *buf = 138412546;
      v67 = v28;
      v68 = 2112;
      v69 = v4;
      _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_DEFAULT, "Using routing method [%@] for event with external URL [%@].", buf, 0x16u);
    }

    v29 = [*(*(a1 + 32) + 40) objectForKey:v4];
    if (!v29)
    {
      v30 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v4;
        _os_log_impl(&dword_242909000, v30, OS_LOG_TYPE_DEFAULT, "Creating agenda entry because one does not exist for event with external URL: [%@]", buf, 0xCu);
      }

      objc_initWeak(buf, *(a1 + 32));
      v31 = [EKTravelEngineAgendaEntry alloc];
      v32 = [*(a1 + 32) routeHypothesizerProvider];
      v29 = [(EKTravelEngineAgendaEntry *)v31 initWithRouteHypothesizerProvider:v32];

      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_54;
      v63[3] = &unk_278D6F610;
      objc_copyWeak(&v65, buf);
      v33 = v4;
      v64 = v33;
      [(EKTravelEngineAgendaEntry *)v29 setUpdateBlock:v63];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_2_56;
      v60[3] = &unk_278D6F610;
      objc_copyWeak(&v62, buf);
      v34 = v33;
      v61 = v34;
      [(EKTravelEngineAgendaEntry *)v29 setEntrySignificantlyChangedBlock:v60];
      [*(*(a1 + 32) + 40) setObject:v29 forKey:v34];

      objc_destroyWeak(&v62);
      objc_destroyWeak(&v65);
      objc_destroyWeak(buf);
    }

    if ([(EKTravelEngineAgendaEntry *)v29 dismissed])
    {
      v35 = [v2 structuredLocation];
      v36 = [v35 title];
      v37 = [(EKTravelEngineAgendaEntry *)v29 originalEvent];
      v38 = [v37 locationString];
      v39 = [v36 isEqualToString:v38];

      if ((v39 & 1) == 0)
      {
        v44 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v4;
          v45 = "The entry has been dismissed, but it's location has changed.  Clearing the dismissed flag for the entry for event with external URL: [%@]";
          goto LABEL_36;
        }

LABEL_37:
        [(EKTravelEngineAgendaEntry *)v29 setDismissed:0];
        goto LABEL_38;
      }

      v40 = [v2 startDate];
      v41 = [(EKTravelEngineAgendaEntry *)v29 originalEvent];
      v42 = [v41 startDate];
      v43 = [v40 isEqualToDate:v42];

      if ((v43 & 1) == 0)
      {
        v44 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v67 = v4;
          v45 = "The entry has been dismissed, but it's start date has changed.  Clearing the dismissed flag for the entry for event with external URL: [%@]";
LABEL_36:
          _os_log_impl(&dword_242909000, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0xCu);
          goto LABEL_37;
        }

        goto LABEL_37;
      }
    }

LABEL_38:
    if ([(EKTravelEngineAgendaEntry *)v29 dismissed])
    {
      v46 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v67 = v4;
        _os_log_impl(&dword_242909000, v46, OS_LOG_TYPE_DEFAULT, "The entry has been dismissed.  Will not update the entry for event with external URL: [%@]", buf, 0xCu);
      }
    }

    else
    {
      v47 = objc_alloc_init(EKTravelEngineOriginalEvent);
      [(EKTravelEngineOriginalEvent *)v47 setEventExternalURL:v4];
      v48 = [v2 startDate];
      [(EKTravelEngineOriginalEvent *)v47 setStartDate:v48];

      v49 = [v2 endDate];
      [(EKTravelEngineOriginalEvent *)v47 setEndDate:v49];

      [(EKTravelEngineOriginalEvent *)v47 setTransportTypeOverride:v57];
      v50 = [v2 structuredLocation];
      v51 = [v50 title];
      [(EKTravelEngineOriginalEvent *)v47 setLocationString:v51];

      v52 = [v5 geoLocation];
      [(EKTravelEngineOriginalEvent *)v47 setGeoLocation:v52];

      -[EKTravelEngineOriginalEvent setLocationIsAConferenceRoom:](v47, "setLocationIsAConferenceRoom:", [v2 locationIsAConferenceRoom]);
      v53 = [v5 mapKitHandle];
      [(EKTravelEngineOriginalEvent *)v47 setLocationMapKitHandle:v53];

      -[EKTravelEngineOriginalEvent setAutomaticGeocodingAllowed:](v47, "setAutomaticGeocodingAllowed:", [v2 automaticLocationGeocodingAllowed]);
      -[EKTravelEngineOriginalEvent setHasPredictedLocation:](v47, "setHasPredictedLocation:", [v2 hasPredictedLocation]);
      v54 = [v2 locationWithoutPrediction];
      [(EKTravelEngineOriginalEvent *)v47 setLocationStringWithoutPrediction:v54];

      v55 = [v2 calendar];
      -[EKTravelEngineOriginalEvent setIsOnSharedCalendar:](v47, "setIsOnSharedCalendar:", [v55 sharingStatus] != 0);
      [(EKTravelEngineAgendaEntry *)v29 updateHypothesizerIfNecessaryWithOriginalEvent:v47];
    }

    [*(a1 + 40) addObject:v4];

    goto LABEL_43;
  }

  v15 = *v6;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v67 = v2;
    v12 = "No external url for event: [%@].  Will not register as travel agenda item.";
    v13 = v15;
    v14 = 12;
    goto LABEL_10;
  }

LABEL_43:

  v56 = *MEMORY[0x277D85DE8];
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_2;
    block[3] = &unk_278D6F318;
    v8 = v3;
    v9 = *(a1 + 32);
    v10 = v5;
    dispatch_async(v6, block);
  }
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke_2(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] latestHypothesis];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[5];
    *buf = 138412546;
    v14 = v4;
    v15 = 2112;
    v16 = v2;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Hypothesis updated for event with external URL: [%@].  Hypothesis: [%@]", buf, 0x16u);
  }

  v5 = [a1[6] adviceBlock];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1[6] + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_55;
    block[3] = &unk_278D6F5E8;
    v12 = v5;
    v10 = a1[5];
    v11 = v2;
    dispatch_async(v7, block);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke_2_56(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_3;
    v5[3] = &unk_278D6F278;
    v6 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v4, v5);
  }
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Significant change encountered for event with external URL [%@].", buf, 0xCu);
  }

  v4 = [*(a1 + 40) eventSignificantlyChangedBlock];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 40) + 16);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __34__EKTravelEngine__refreshIfNeeded__block_invoke_57;
    v8[3] = &unk_278D6F638;
    v10 = v4;
    v9 = *(a1 + 32);
    dispatch_async(v6, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __34__EKTravelEngine__refreshIfNeeded__block_invoke_60(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    v7 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v5;
      _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Unregistering event with external URL since it's not in the travel window: [%@]", &v9, 0xCu);
    }

    [v6 reset];
    [*(*(a1 + 40) + 40) removeObjectForKey:v5];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_unregisterAllAgendaEntries
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering all agenda entries.", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_eventExternalURLsToAgendaEntries allValues];
  v5 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v8++) reset];
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  [(NSMutableDictionary *)self->_eventExternalURLsToAgendaEntries removeAllObjects];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_periodicRefreshTimerFired
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "The periodic refresh timer fired for travel engine: [%@].", &v5, 0xCu);
  }

  [(EKTravelEngine *)self _uninstallPeriodicRefreshTimer];
  [(EKTravelEngine *)self _installPeriodicRefreshTimer];
  self->_needsRefresh = 1;
  [(EKTravelEngine *)self _refreshIfNeeded];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_installLocationManager
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Installation of location manager requested.", &v11, 2u);
  }

  bundle = [MEMORY[0x277CF77F8] bundle];
  v6 = objc_alloc(MEMORY[0x277CBFC10]);
  bundlePath = [bundle bundlePath];
  v8 = [v6 initWithEffectiveBundlePath:bundlePath delegate:self onQueue:self->_workQueue];

  objc_storeStrong(&self->_locationManager, v8);
  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Installation of location manager complete.  Location manager: [%@]", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_uninstallLocationManager
{
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = MEMORY[0x277CC5978];
  v4 = *MEMORY[0x277CC5978];
  if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Uninstallation of location manager requested.", buf, 2u);
  }

  [(CLLocationManager *)self->_locationManager setDelegate:0];
  locationManager = self->_locationManager;
  self->_locationManager = 0;

  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Uninstallation of location manager complete.", v7, 2u);
  }
}

- (void)_sendFeedbackForPostingNotificationForEventWithExternalURL:(id)l feedback:(id)feedback
{
  lCopy = l;
  feedbackCopy = feedback;
  v8 = feedbackCopy;
  if (!lCopy)
  {
    v10 = *MEMORY[0x277CC5978];
    if (!os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "nil 'externalURL' given.  Will not send feedback for posting notification.";
LABEL_8:
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    goto LABEL_9;
  }

  if (!feedbackCopy)
  {
    v10 = *MEMORY[0x277CC5978];
    if (!os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v11 = "nil 'feedback' given.  Will not send feedback for posting notification.";
    goto LABEL_8;
  }

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__EKTravelEngine__sendFeedbackForPostingNotificationForEventWithExternalURL_feedback___block_invoke;
  block[3] = &unk_278D6F6B0;
  block[4] = self;
  v13 = lCopy;
  v14 = v8;
  dispatch_async(workQueue, block);

LABEL_9:
}

void __86__EKTravelEngine__sendFeedbackForPostingNotificationForEventWithExternalURL_feedback___block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 40) objectForKey:a1[5]];
  if (v2)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v3 = *MEMORY[0x277CC5978];
    if (os_log_type_enabled(*MEMORY[0x277CC5978], OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[5];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Will not send feedback for posting notification for event that has external URL: [%@] because it isn't being monitored.", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end