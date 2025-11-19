@interface CALNNotificationServerModule
+ (id)_notificationStoragePathWithName:(id)a3;
+ (id)_protectedCalendarNotificationStorage;
+ (id)_protectedTriggeredEventNotificationDataStorage;
+ (id)_timeToLeaveRefreshStorage;
+ (id)_timeToLeaveRefreshStoragePathWithName:(id)a3;
+ (id)_triggeredEventNotificationDataStoragePathWithName:(id)a3;
+ (id)_unprotectedCalendarNotificationStorage;
+ (id)_unprotectedTriggeredEventNotificationDataStorage;
+ (void)_migrateNotificationFiles;
+ (void)_migrateNotificationFilesFromDirectory:(id)a3 toDirectory:(id)a4;
+ (void)_setProtectedClassForStorageAtPath:(id)a3;
- (CALNNotificationServerModule)init;
- (id)_createCalendarNotificationServerWithUserNotificationCenterFactory:(id)a3 storage:(id)a4 eventStoreProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9;
- (id)_createNotificationServerWithUserNotificationCenter:(id)a3 storage:(id)a4 eventStoreProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9;
- (id)_createNotificationSourcesWithNotificationManager:(id)a3 eventStoreProvider:(id)a4 inboxNotificationProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9;
- (void)_registerSettingsCaptureHandlers;
- (void)_reloadNotificationRecords:(id)a3 forNotificationServer:(id)a4;
- (void)_reloadNotificationsAfterFirstUnlock;
- (void)_reloadNotificationsFromUnprotectedStorage:(id)a3 intoProtectedStorage:(id)a4 withStorageWrapper:(id)a5 forNotificationServer:(id)a6;
- (void)_reloadTriggeredEventNotificationData;
- (void)_updateLocaleReloadIfDifferent:(BOOL)a3;
- (void)_updateSourceClientIdentifiersIfNeeded;
- (void)activate;
- (void)deactivate;
- (void)didRegisterForAlarms;
- (void)protectedDataDidBecomeAvailable;
- (void)receivedAlarmNamed:(id)a3;
- (void)receivedNotificationNamed:(id)a3;
- (void)refreshEventStoreInResponseToDatabaseChangeNotification:(id)a3;
- (void)updateIconsToNewVersionIfNeeded;
@end

@implementation CALNNotificationServerModule

- (CALNNotificationServerModule)init
{
  v52[5] = *MEMORY[0x277D85DE8];
  v51.receiver = self;
  v51.super_class = CALNNotificationServerModule;
  v2 = [(CALNNotificationServerModule *)&v51 init];
  if (v2)
  {
    v3 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Creating notification server module", &buf, 2u);
    }

    +[CALNNotificationServerModule _migrateNotificationFiles];
    v47 = [MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot];
    v4 = [CALNNotificationStorageWrapper alloc];
    v5 = objc_opt_class();
    if (v47)
    {
      [v5 _protectedCalendarNotificationStorage];
    }

    else
    {
      [v5 _unprotectedCalendarNotificationStorage];
    }
    v6 = ;
    v7 = [(CALNNotificationStorageWrapper *)v4 initWithWrappedStorage:v6];
    calendarStorageWrapper = v2->_calendarStorageWrapper;
    v2->_calendarStorageWrapper = v7;

    objc_initWeak(&buf, v2);
    v9 = objc_alloc(MEMORY[0x277CC5A20]);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __36__CALNNotificationServerModule_init__block_invoke;
    v48[3] = &unk_278D6F978;
    objc_copyWeak(&v49, &buf);
    v10 = [v9 initWithCreationBlock:v48];
    eventStoreProvider = v2->_eventStoreProvider;
    v2->_eventStoreProvider = v10;

    v12 = [[CALNInboxNotificationMonitor alloc] initWithEventStoreProvider:v2->_eventStoreProvider];
    inboxNotificationMonitor = v2->_inboxNotificationMonitor;
    v2->_inboxNotificationMonitor = v12;

    v14 = objc_alloc_init(_EKAlarmEngine);
    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    v16 = [[CALNEKAlarmEngineMonitor alloc] initWithAlarmEngine:v14 notificationCenter:v15];
    v45 = v14;
    v46 = v15;
    v17 = [MEMORY[0x277CC5A18] shared];
    LODWORD(v15) = [v17 syntheticTravelAdvisoriesEnabled];

    v18 = off_278D6EAC8;
    if (!v15)
    {
      v18 = off_278D6E8F0;
    }

    v19 = [(__objc2_class *)*v18 sharedInstance];
    v20 = [[EKTravelEngine alloc] initWithRouteHypothesizerProvider:v19];
    v21 = [[CALNEKTravelEngine alloc] initWithTravelEngine:v20];
    v22 = [objc_opt_class() _timeToLeaveRefreshStorage];
    v43 = v19;
    v44 = v20;
    v23 = [[CALNDefaultTimeToLeaveRefreshMonitor alloc] initWithStorage:v22];
    v24 = +[CALNUNUserNotificationCenterFactory sharedInstance];
    v25 = +[CALNUNIconProvider sharedInstance];
    iconProvider = v2->_iconProvider;
    v2->_iconProvider = v25;

    v27 = [(CALNNotificationServerModule *)v2 _createCalendarNotificationServerWithUserNotificationCenterFactory:v24 storage:v2->_calendarStorageWrapper eventStoreProvider:v2->_eventStoreProvider alarmEngineMonitor:v16 travelEngine:v21 timeToLeaveRefreshMonitor:v23 timeToLeaveRefreshStorage:v22];
    v28 = v27;
    v29 = [v28 notificationSources];
    objc_storeStrong(&v2->_calendarNotificationServer, v27);
    v30 = [CALNNotificationSourceRefresher alloc];
    v31 = [(CALNNotificationServerModule *)v2 inboxNotificationMonitor];
    v32 = [(CALNNotificationSourceRefresher *)v30 initWithSources:v29 notificationMonitor:v31 notificationManager:v28];
    notificationSourceRefresher = v2->_notificationSourceRefresher;
    v2->_notificationSourceRefresher = v32;

    v34 = [CALNCalendarAppBadgeUpdater alloc];
    v35 = [(CALNNotificationServerModule *)v2 inboxNotificationMonitor];
    v36 = [(CALNCalendarAppBadgeUpdater *)v34 initWithInboxNotificationMonitor:v35];
    calendarAppBadgeUpdater = v2->_calendarAppBadgeUpdater;
    v2->_calendarAppBadgeUpdater = v36;

    v38 = v2->_inboxNotificationMonitor;
    v52[0] = v2->_calendarNotificationServer;
    v52[1] = v38;
    v52[2] = v16;
    v52[3] = v21;
    v52[4] = v23;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:5];
    modules = v2->_modules;
    v2->_modules = v39;

    if (v47)
    {
      [(CALNNotificationServerModule *)v2 _reloadTriggeredEventNotificationData];
      [(CALNTriggeredEventNotificationSource *)v2->_triggeredEventNotificationSource updateSnoozeOptionsForPostedNotifications];
    }

    [(CALNNotificationServerModule *)v2 _updateLocaleReloadIfDifferent:v47];
    [(CALNNotificationServerModule *)v2 _registerSettingsCaptureHandlers];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&buf);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v2;
}

id __36__CALNNotificationServerModule_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:256 path:0 changeTrackingClientId:0 enablePropertyModificationLogging:1 allowDelegateSources:1];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeWeak(WeakRetained + 2, v2);
  }

  return v2;
}

- (void)updateIconsToNewVersionIfNeeded
{
  v3 = [CALNNotificationIconUpdater alloc];
  v4 = [objc_opt_class() _protectedCalendarNotificationStorage];
  v5 = [(CALNNotificationServerModule *)self iconProvider];
  v6 = [(CALNNotificationServerModule *)self calendarNotificationServer];
  v7 = [(CALNNotificationIconUpdater *)v3 initWithProtectedNotificationStorage:v4 iconIdentifierProvider:v5 notificationManager:v6];

  [(CALNNotificationIconUpdater *)v7 updateNotificationIconsIfNeeded];
}

- (id)_createCalendarNotificationServerWithUserNotificationCenterFactory:(id)a3 storage:(id)a4 eventStoreProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = a4;
  v22 = a3;
  v23 = [CALNUNUserNotificationCenter alloc];
  v24 = [(CALNUNUserNotificationCenter *)v23 initWithBundleIdentifier:*MEMORY[0x277CF78A0] userNotificationCenterFactory:v22 storage:v21 iconProvider:self->_iconProvider];

  v25 = [(CALNNotificationServerModule *)self _createNotificationServerWithUserNotificationCenter:v24 storage:v21 eventStoreProvider:v20 alarmEngineMonitor:v19 travelEngine:v18 timeToLeaveRefreshMonitor:v17 timeToLeaveRefreshStorage:v16];

  return v25;
}

- (id)_createNotificationServerWithUserNotificationCenter:(id)a3 storage:(id)a4 eventStoreProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9
{
  v27 = a9;
  v28 = a8;
  v26 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = [(CALNNotificationServerModule *)self inboxNotificationMonitor];
  v21 = +[CALNCalAnalyticsHandler sharedInstance];
  v22 = objc_alloc_init(MEMORY[0x277CF77B8]);
  v23 = [[CALNNotificationServer alloc] initWithUserNotificationCenter:v19 storage:v18 analyticsHandler:v21 deviceLockObserver:v22];

  v24 = [(CALNNotificationServerModule *)self _createNotificationSourcesWithNotificationManager:v23 eventStoreProvider:v17 inboxNotificationProvider:v20 alarmEngineMonitor:v16 travelEngine:v26 timeToLeaveRefreshMonitor:v28 timeToLeaveRefreshStorage:v27];

  [(CALNNotificationServer *)v23 setNotificationSources:v24];

  return v23;
}

- (id)_createNotificationSourcesWithNotificationManager:(id)a3 eventStoreProvider:(id)a4 inboxNotificationProvider:(id)a5 alarmEngineMonitor:(id)a6 travelEngine:(id)a7 timeToLeaveRefreshMonitor:(id)a8 timeToLeaveRefreshStorage:(id)a9
{
  v91[9] = *MEMORY[0x277D85DE8];
  v67 = a9;
  v63 = a8;
  v61 = a7;
  v65 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[CALNDefaultEKCalendarNotificationReferenceProvider sharedInstance];
  v90 = +[CALNUNIconProvider sharedInstance];
  v88 = +[CALNNullRemoteMutator sharedInstance];
  v89 = +[CALNDataAccessExpressSharedConnection sharedConnection];
  v19 = +[CALNEKUIEventRepresentationProvider sharedInstance];
  v86 = +[CALNEKUIEventRepresentationProvider sharedInstance];
  v20 = [MEMORY[0x277CF7808] sharedInstance];
  v21 = [CALNEventInvitationNotificationEKDataSource alloc];
  v22 = [MEMORY[0x277CC59D8] calendarPreferences];
  v81 = [(CALNEventInvitationNotificationEKDataSource *)v21 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 remoteMutator:v88 dataSourceEventRepresentationProvider:v19 preferences:v22];

  v78 = [[CALNEventInvitationNotificationSource alloc] initWithDataSource:v81 notificationManager:v17 iconIdentifierProvider:v90 dateProvider:v20];
  v23 = [CALNEventInvitationResponseNotificationEKDataSource alloc];
  v24 = [MEMORY[0x277CC59D8] calendarPreferences];
  v87 = v19;
  v80 = [(CALNEventInvitationResponseNotificationEKDataSource *)v23 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 dataSourceEventRepresentationProvider:v19 preferences:v24];

  v73 = [[CALNEventInvitationResponseNotificationSource alloc] initWithDataSource:v80 notificationManager:v17 iconIdentifierProvider:v90 dateProvider:v20];
  v25 = [CALNEventCanceledNotificationEKDataSource alloc];
  v26 = [MEMORY[0x277CC59D8] calendarPreferences];
  v79 = [(CALNEventCanceledNotificationEKDataSource *)v25 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 remoteMutator:v88 dataSourceEventRepresentationProvider:v19 preferences:v26];

  v69 = [[CALNEventCanceledNotificationSource alloc] initWithDataSource:v79 notificationManager:v17 iconIdentifierProvider:v90 dateProvider:v20];
  v77 = +[CALNCLCoreLocationProvider sharedInstance];
  v75 = +[CALNEKTTLEventTracker sharedInstance];
  v76 = +[CALNEKFoundInAppsEventTracker sharedInstance];
  v74 = +[CALNEKSuggestionsServiceLogger sharedInstance];
  v72 = +[CALNGEORouteHypothesizerProvider sharedInstance];
  v71 = +[CALNEKDebugPreferences sharedInstance];
  v27 = [CALNTriggeredEventNotificationMailtoURLProvider alloc];
  v28 = +[CALNMSMailAccounts sharedInstance];
  v70 = [(CALNTriggeredEventNotificationMailtoURLProvider *)v27 initWithMailAccounts:v28];

  v83 = [[CALNTriggeredEventNotificationEKDataSource alloc] initWithEventStoreProvider:v16 remoteMutator:v88 dataSourceEventRepresentationProvider:v19 coreLocationProvider:v77 ttlEventTracker:v75 alarmEngineMonitor:v65 travelEngine:v61 foundInAppsEventTracker:v76 suggestionsServiceLogger:v74 routeHypothesizerProvider:v72 timeToLeaveRefreshMonitor:v63 debugPreferences:v71 mailtoURLProvider:v70];
  v66 = objc_alloc_init(CALNDefaultTravelAdvisoryAuthority);
  v59 = [[CALNDefaultTriggeredEventNotificationTriggerHelper alloc] initWithTravelAdvisoryAuthority:v66 dateProvider:v20 eventStoreProvider:self->_eventStoreProvider];
  v58 = [[CALNDefaultTriggeredEventNotificationTransitionProvider alloc] initWithTravelAdvisoryAuthority:v66 dateProvider:v20];
  v64 = objc_alloc_init(CALNCUIKTravelAdvisoryDescriptionGenerator);
  v57 = [[CALNDefaultTriggeredEventNotificationBodyDescriptionProvider alloc] initWithTravelAdvisoryDescriptionGenerator:v64 dateProvider:v20];
  v62 = [objc_alloc(MEMORY[0x277CC5AF0]) initWithDateProvider:v20];
  v55 = [[CALNEKTravelAdvisoryTimelinessAuthority alloc] initWithTravelAdvisoryTimelinessAuthority:v62];
  v54 = [objc_opt_class() _unprotectedTriggeredEventNotificationDataStorage];
  v29 = [CALNDefaultAppURLHandler alloc];
  v30 = +[CALNLaunchServicesURLHandler sharedInstance];
  v53 = [(CALNDefaultAppURLHandler *)v29 initWithFallbackHandler:v30];

  v52 = +[CALNDefaultTriggeredEventNotificationMapItemURLProvider sharedInstance];
  v60 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v60, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
  v56 = [[CALNXPCActivityScheduler alloc] initWithActivityIdentifier:@"com.apple.calendar.notification.snoozeRefresh" otherCriteria:v60];
  v85 = v20;
  v31 = [[CALNSchedulingSnoozeUpdateTimer alloc] initWithDateProvider:v20 scheduler:v56];
  snoozeUpdateTimer = self->_snoozeUpdateTimer;
  self->_snoozeUpdateTimer = v31;

  v33 = [[CALNTriggeredEventNotificationSource alloc] initWithDataSource:v83 notificationManager:v17 iconIdentifierProvider:v90 sourceEventRepresentationProvider:v86 triggerHelper:v59 transitionProvider:v58 bodyDescriptionProvider:v57 travelAdvisoryTimelinessAuthority:v55 dateProvider:v20 notificationDataStorage:v54 urlHandler:v53 mapItemURLProvider:v52 timeToLeaveRefreshStorage:v67 snoozeUpdateTimer:self->_snoozeUpdateTimer];
  triggeredEventNotificationSource = self->_triggeredEventNotificationSource;
  self->_triggeredEventNotificationSource = v33;

  v35 = [CALNSharedCalendarInvitationNotificationEKDataSource alloc];
  v36 = [MEMORY[0x277CC59D8] calendarPreferences];
  v68 = [(CALNSharedCalendarInvitationNotificationEKDataSource *)v35 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 dataAccessExpressConnection:v89 preferences:v36];

  v50 = [[CALNSharedCalendarInvitationNotificationSource alloc] initWithDataSource:v68 notificationManager:v17 iconIdentifierProvider:v90 sourceEventRepresentationProvider:v86];
  v37 = [CALNSharedCalendarInvitationResponseNotificationEKDataSource alloc];
  v38 = [MEMORY[0x277CC59D8] calendarPreferences];
  v51 = [(CALNSharedCalendarInvitationResponseNotificationEKDataSource *)v37 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 preferences:v38];

  v39 = [[CALNSharedCalendarInvitationResponseNotificationSource alloc] initWithDataSource:v51 notificationManager:v17 iconIdentifierProvider:v90 sourceEventRepresentationProvider:v86];
  v40 = [CALNCalendarResourceChangedNotificationEKDataSource alloc];
  v41 = [MEMORY[0x277CC59D8] calendarPreferences];
  v42 = [(CALNCalendarResourceChangedNotificationEKDataSource *)v40 initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18 preferences:v41];

  v43 = [[CALNCalendarResourceChangedNotificationSource alloc] initWithDataSource:v42 notificationManager:v17 iconIdentifierProvider:v90 sourceEventRepresentationProvider:v86 dateProvider:v20];
  v44 = [[CALNSuggestedEventNotificationEKDataSource alloc] initWithEventStoreProvider:v16 inboxNotificationProvider:v15 notificationReferenceProvider:v18];

  v45 = [[CALNSuggestedEventNotificationSource alloc] initWithDataSource:v44 notificationManager:v17 iconIdentifierProvider:v90];
  v46 = [[CALNFakeNotificationSource alloc] initWithNotificationManager:v17 iconIdentifierProvider:v90 sourceIdentifierSuffix:@"calendar"];

  v91[0] = v78;
  v91[1] = v73;
  v47 = self->_triggeredEventNotificationSource;
  v91[2] = v69;
  v91[3] = v47;
  v91[4] = v50;
  v91[5] = v39;
  v91[6] = v43;
  v91[7] = v45;
  v91[8] = v46;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v91 count:9];

  v48 = *MEMORY[0x277D85DE8];

  return v84;
}

- (void)activate
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CALNNotificationServerModule *)self modules];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) activate];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([MEMORY[0x277CF77B8] hasBeenUnlockedSinceBoot])
  {
    [(CALNNotificationServerModule *)self _updateSourceClientIdentifiersIfNeeded];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deactivate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CALNNotificationServerModule *)self modules];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) deactivate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receivedNotificationNamed:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_transaction_create();
  if ([v4 isEqualToString:*MEMORY[0x277CF7560]])
  {
    [(CALNNotificationServerModule *)self refreshEventStoreInResponseToDatabaseChangeNotification:v4];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CALNNotificationServerModule *)self modules];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v10++) receivedNotificationNamed:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ([v4 isEqualToString:*MEMORY[0x277CF7908]])
  {
    v11 = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [v11 refreshNotifications];

    v12 = [(CALNNotificationServerModule *)self snoozeUpdateTimer];
    [v12 significantTimeChange];
LABEL_16:

    goto LABEL_17;
  }

  if (([v4 isEqualToString:*MEMORY[0x277CC5928]] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CC5970]) & 1) != 0 || objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CF7578]))
  {
    v12 = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [v12 refreshNotifications];
    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)refreshEventStoreInResponseToDatabaseChangeNotification:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_lastCreatedEventStore);
  if (WeakRetained)
  {
    v6 = [(EKEphemeralCacheEventStoreProvider *)self->_eventStoreProvider eventStore];
    v7 = +[CALNLogSubsystem calendar];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6 == WeakRetained)
    {
      if (v8)
      {
        *v10 = 0;
        _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Got a database changed notification and we have an EKEventStore. Letting the event store handle the notification first.", v10, 2u);
      }

      [WeakRetained handleExternalDatabaseChangeNotification:v4];
    }

    else
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Missed refreshing EKEventStore in response to handling database change notification; continuing without refreshing.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Not refreshing EKEventStore before handling database change notification because we don't have an EKEventStore right now.", v9, 2u);
    }
  }
}

- (void)_registerSettingsCaptureHandlers
{
  CADStatsRegisterCollectionCallback();
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.calendar.notifications.stateCaptureQ", v2);

  CalAddStateCaptureBlock();
}

void __64__CALNNotificationServerModule__registerSettingsCaptureHandlers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  v4 = [v2 userNotificationCenter];
  [v4 collectSettingsStats:v3];
}

id __64__CALNNotificationServerModule__registerSettingsCaptureHandlers__block_invoke_2(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(*(a1 + 32) + 32) userNotificationCenter];
  [v3 collectSettingsStats:v2];

  return v2;
}

- (void)_updateLocaleReloadIfDifferent:(BOOL)a3
{
  v3 = a3;
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 localeIdentifier];

  v7 = [MEMORY[0x277CF77A8] shared];
  v8 = [v7 objectForKey:@"NotificationsLastLocale"];

  if (([v6 isEqualToString:v8] & 1) == 0)
  {
    if (v3)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CALNNotificationServerModule__updateLocaleReloadIfDifferent___block_invoke;
      block[3] = &unk_278D6F318;
      v13 = v8;
      v14 = v6;
      v15 = self;
      dispatch_async(MEMORY[0x277D85CD0], block);

      v9 = v13;
    }

    else
    {
      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Updating locale from %{public}@ to %{public}@", buf, 0x16u);
      }

      v9 = [MEMORY[0x277CF77A8] shared];
      [v9 setObject:v6 forKey:@"NotificationsLastLocale"];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__CALNNotificationServerModule__updateLocaleReloadIfDifferent___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11 = 138543618;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    _os_log_impl(&dword_242909000, v2, OS_LOG_TYPE_DEFAULT, "Reloading notifications because locale changed from %{public}@ to %{public}@", &v11, 0x16u);
  }

  v5 = +[CALNNotificationServerModule _protectedCalendarNotificationStorage];
  v6 = *(a1 + 48);
  v7 = [v5 notificationRecords];
  v8 = [*(a1 + 48) calendarNotificationServer];
  [v6 _reloadNotificationRecords:v7 forNotificationServer:v8];

  v9 = [MEMORY[0x277CF77A8] shared];
  [v9 setObject:*(a1 + 40) forKey:@"NotificationsLastLocale"];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_reloadTriggeredEventNotificationData
{
  v3 = +[CALNNotificationServerModule _unprotectedTriggeredEventNotificationDataStorage];
  v4 = +[CALNNotificationServerModule _protectedTriggeredEventNotificationDataStorage];
  v5 = [(CALNTriggeredEventNotificationSource *)self->_triggeredEventNotificationSource migrateToStorage:v4];
  v6 = +[CALNLogSubsystem calendar];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Reloaded triggered event notification data after first unlock", buf, 2u);
    }

    [v3 removeNotificationData];
  }

  else
  {
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Already reloaded triggered event notification data after first unlock; not doing it again", v8, 2u);
    }
  }
}

- (void)_reloadNotificationsAfterFirstUnlock
{
  v3 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_242909000, v3, OS_LOG_TYPE_DEFAULT, "Reloading calendar notifications after first unlock", v8, 2u);
  }

  v4 = [(CALNNotificationServerModule *)self calendarNotificationServer];
  v5 = [objc_opt_class() _unprotectedCalendarNotificationStorage];
  v6 = [objc_opt_class() _protectedCalendarNotificationStorage];
  v7 = [(CALNNotificationServerModule *)self calendarStorageWrapper];
  [(CALNNotificationServerModule *)self _reloadNotificationsFromUnprotectedStorage:v5 intoProtectedStorage:v6 withStorageWrapper:v7 forNotificationServer:v4];
}

- (void)_reloadNotificationsFromUnprotectedStorage:(id)a3 intoProtectedStorage:(id)a4 withStorageWrapper:(id)a5 forNotificationServer:(id)a6
{
  v10 = a6;
  v12 = a3;
  [a5 setWrappedStorage:a4];
  v11 = [v12 notificationRecords];
  [(CALNNotificationServerModule *)self _reloadNotificationRecords:v11 forNotificationServer:v10];

  [(CALNNotificationServerModule *)self _removeNotificationsFromUnprotectedStorage:v12];
}

- (void)didRegisterForAlarms
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CALNNotificationServerModule *)self modules];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) didRegisterForAlarms];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)receivedAlarmNamed:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_transaction_create();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(CALNNotificationServerModule *)self modules];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) receivedAlarmNamed:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)protectedDataDidBecomeAvailable
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  +[CALNNotificationUtilities createSentinelFileIfNeeded];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CALNNotificationServerModule *)self modules];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) protectedDataDidBecomeAvailable];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(CALNNotificationServerModule *)self _reloadTriggeredEventNotificationData];
  [(CALNNotificationServerModule *)self _reloadNotificationsAfterFirstUnlock];
  [(CALNNotificationServerModule *)self _updateSourceClientIdentifiersIfNeeded];
  [(CALNNotificationServerModule *)self updateIconsToNewVersionIfNeeded];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateSourceClientIdentifiersIfNeeded
{
  v3 = [MEMORY[0x277CF77A8] shared];
  v4 = [v3 integerForKey:@"NotificationSourceClientIdentifierVersion"];

  if (v4 != 1)
  {
    v5 = [MEMORY[0x277CF77A8] shared];
    [v5 setInteger:1 forKey:@"NotificationSourceClientIdentifierVersion"];

    v6 = [(CALNNotificationServerModule *)self notificationSourceRefresher];
    [v6 refreshNotifications];
  }
}

- (void)_reloadNotificationRecords:(id)a3 forNotificationServer:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v35;
    v11 = 0x278D6E000uLL;
    *&v8 = 138412546;
    v30 = v8;
    v31 = v6;
    do
    {
      v12 = 0;
      v32 = v9;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v34 + 1) + 8 * v12);
        v14 = [v13 sourceIdentifier];
        v15 = [v6 notificationSourceForSourceIdentifier:v14];

        if (v15)
        {
          v16 = [v13 mutableCopy];
          v17 = [v13 sourceClientIdentifier];
          v18 = [v15 contentForNotificationWithSourceClientIdentifier:v17];
          [v16 setContent:v18];

          v19 = [v16 copy];
          [v6 updateRecord:v19];

          v20 = [*(v11 + 2344) calendar];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v16 sourceIdentifier];
            v22 = [v16 sourceClientIdentifier];
            v23 = [v16 content];
            [v23 title];
            v24 = v11;
            v26 = v25 = v10;
            *buf = 138543874;
            v39 = v21;
            v40 = 2114;
            v41 = v22;
            v42 = 2112;
            v43 = v26;
            _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Reloaded notification record with source identifier = %{public}@, source client identifier = %{public}@, title = %@", buf, 0x20u);

            v10 = v25;
            v11 = v24;
            v6 = v31;

            v9 = v32;
          }
        }

        else
        {
          v16 = [*(v11 + 2344) defaultCategory];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v27 = [v13 sourceClientIdentifier];
            v28 = [v13 sourceIdentifier];
            *buf = v30;
            v39 = v27;
            v40 = 2114;
            v41 = v28;
            _os_log_error_impl(&dword_242909000, v16, OS_LOG_TYPE_ERROR, "Cannot reload notification with sourceClientIdentifier = %@. Failed to find notification source with sourceIdentifier = %{public}@.", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v9);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)_notificationStoragePathWithName:(id)a3
{
  v3 = a3;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

+ (void)_setProtectedClassForStorageAtPath:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = *MEMORY[0x277CCA1B0];
  v12[0] = *MEMORY[0x277CCA1A0];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v10 = 0;
  v6 = [v4 setAttributes:v5 ofItemAtPath:v3 error:&v10];
  v7 = v10;

  if ((v6 & 1) == 0)
  {
    v8 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNNotificationServerModule *)v3 _setProtectedClassForStorageAtPath:v8];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)_unprotectedCalendarNotificationStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CALNNotificationServerModule__unprotectedCalendarNotificationStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_unprotectedCalendarNotificationStorage_onceToken != -1)
  {
    dispatch_once(&_unprotectedCalendarNotificationStorage_onceToken, block);
  }

  v2 = _unprotectedCalendarNotificationStorage_storage;

  return v2;
}

void __71__CALNNotificationServerModule__unprotectedCalendarNotificationStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _notificationStoragePathWithName:@"Notifications.Calendar.Unprotected"];
  v2 = [*(a1 + 32) _createNotificationStorageAtPath:v4 protected:0];
  v3 = _unprotectedCalendarNotificationStorage_storage;
  _unprotectedCalendarNotificationStorage_storage = v2;
}

+ (id)_protectedCalendarNotificationStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__CALNNotificationServerModule__protectedCalendarNotificationStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_protectedCalendarNotificationStorage_onceToken != -1)
  {
    dispatch_once(&_protectedCalendarNotificationStorage_onceToken, block);
  }

  v2 = _protectedCalendarNotificationStorage_storage;

  return v2;
}

void __69__CALNNotificationServerModule__protectedCalendarNotificationStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _notificationStoragePathWithName:@"Notifications.Calendar.Protected"];
  v2 = [*(a1 + 32) _createNotificationStorageAtPath:v4 protected:1];
  v3 = _protectedCalendarNotificationStorage_storage;
  _protectedCalendarNotificationStorage_storage = v2;

  [*(a1 + 32) _setProtectedClassForStorageAtPath:v4];
}

+ (id)_unprotectedTriggeredEventNotificationDataStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__CALNNotificationServerModule__unprotectedTriggeredEventNotificationDataStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_unprotectedTriggeredEventNotificationDataStorage_onceToken != -1)
  {
    dispatch_once(&_unprotectedTriggeredEventNotificationDataStorage_onceToken, block);
  }

  v2 = _unprotectedTriggeredEventNotificationDataStorage_storage;

  return v2;
}

void __81__CALNNotificationServerModule__unprotectedTriggeredEventNotificationDataStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _triggeredEventNotificationDataStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.NotificationData.Unprotected"];
  v2 = [*(a1 + 32) _createTriggeredEventNotificationDataStorageAtPath:v4 protected:0];
  v3 = _unprotectedTriggeredEventNotificationDataStorage_storage;
  _unprotectedTriggeredEventNotificationDataStorage_storage = v2;
}

+ (id)_protectedTriggeredEventNotificationDataStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CALNNotificationServerModule__protectedTriggeredEventNotificationDataStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_protectedTriggeredEventNotificationDataStorage_onceToken != -1)
  {
    dispatch_once(&_protectedTriggeredEventNotificationDataStorage_onceToken, block);
  }

  v2 = _protectedTriggeredEventNotificationDataStorage_storage;

  return v2;
}

void __79__CALNNotificationServerModule__protectedTriggeredEventNotificationDataStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _triggeredEventNotificationDataStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.NotificationData"];
  v2 = [*(a1 + 32) _createTriggeredEventNotificationDataStorageAtPath:v4 protected:1];
  v3 = _protectedTriggeredEventNotificationDataStorage_storage;
  _protectedTriggeredEventNotificationDataStorage_storage = v2;

  [*(a1 + 32) _setProtectedClassForStorageAtPath:v4];
}

+ (id)_triggeredEventNotificationDataStoragePathWithName:(id)a3
{
  v3 = a3;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

+ (id)_timeToLeaveRefreshStorage
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CALNNotificationServerModule__timeToLeaveRefreshStorage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_timeToLeaveRefreshStorage_onceToken != -1)
  {
    dispatch_once(&_timeToLeaveRefreshStorage_onceToken, block);
  }

  v2 = _timeToLeaveRefreshStorage_storage;

  return v2;
}

void __58__CALNNotificationServerModule__timeToLeaveRefreshStorage__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _timeToLeaveRefreshStoragePathWithName:@"Notifications.Calendar.TriggeredEvent.TimeToLeaveRefresh"];
  v2 = [*(a1 + 32) _createTimeToLeaveRefreshStorageAtPath:v4];
  v3 = _timeToLeaveRefreshStorage_storage;
  _timeToLeaveRefreshStorage_storage = v2;
}

+ (id)_timeToLeaveRefreshStoragePathWithName:(id)a3
{
  v3 = a3;
  v4 = CALNDefaultCalendarDirectory();
  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

+ (void)_migrateNotificationFiles
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = CALNOldCalendarDirectory();
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = 0;
    if ([v4 fileExistsAtPath:v3 isDirectory:&v7]&& (v7 & 1) != 0)
    {
      v5 = CALNDefaultCalendarDirectory();
      [a1 _migrateNotificationFilesFromDirectory:v3 toDirectory:v5];
    }

    else
    {
      v5 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v9 = v3;
        _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_INFO, "Migration not required because folder %@ doesn't exist or isn't a directory.", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      +[(CALNNotificationServerModule *)v4];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)_migrateNotificationFilesFromDirectory:(id)a3 toDirectory:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4;
  v7 = [a1 _filesToMigrate];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v30;
    *&v11 = 138543618;
    v23 = v11;
    v25 = *v30;
    v26 = v9;
    v24 = v6;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v6 stringByAppendingPathComponent:{v15, v23}];
        if ([v8 fileExistsAtPath:v16])
        {
          v17 = +[CALNLogSubsystem calendar];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v34 = v15;
            _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Not attempting to migrate file %{public}@ because it already exists in the destination directory", buf, 0xCu);
          }
        }

        else
        {
          v17 = [v27 stringByAppendingPathComponent:v15];
          if ([v8 fileExistsAtPath:v17])
          {
            v28 = 0;
            v18 = [v8 moveItemAtPath:v17 toPath:v16 error:&v28];
            v19 = v28;
            v20 = +[CALNLogSubsystem calendar];
            v21 = v20;
            if (v18)
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v34 = v15;
                _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, "Successfully moved file %{public}@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              *buf = v23;
              v34 = v15;
              v35 = 2112;
              v36 = v19;
              _os_log_error_impl(&dword_242909000, v21, OS_LOG_TYPE_ERROR, "Error moving file %{public}@: %@", buf, 0x16u);
            }

            v6 = v24;
            v13 = v25;
            v9 = v26;
          }

          else
          {
            v19 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v34 = v15;
              _os_log_impl(&dword_242909000, v19, OS_LOG_TYPE_DEFAULT, "Not attempting to migrate file %{public}@ because it doesn't exist in the source directory", buf, 0xCu);
            }
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v12);
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (void)_setProtectedClassForStorageAtPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to set data class protection for path %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end