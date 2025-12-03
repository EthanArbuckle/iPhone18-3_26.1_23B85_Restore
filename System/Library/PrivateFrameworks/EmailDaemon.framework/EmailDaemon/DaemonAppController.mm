@interface DaemonAppController
+ (OS_os_log)log;
+ (id)_startNonAcceptingServer;
+ (void)_deregisterBackgroundTasks;
+ (void)_unregisterAllXPCActivities;
+ (void)_unregisterPushTopics;
+ (void)run;
- (BOOL)_isAppForeground;
- (DaemonAppController)init;
- (id)messageSummaryLoaderForMessage:(id)message;
- (void)_callMobileMailAppRemovalService;
- (void)_configureAnalytics;
- (void)_delayedStartupTasks;
- (void)_registerServices;
- (void)_setupSnapshotInvalidation;
- (void)_start;
- (void)autofetchAccount:(id)account mailboxUid:(id)uid;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)dealloc;
- (void)registerXPCActivityForResettingXPCAlarms;
- (void)resetPushStateWithCompletion:(id)completion;
- (void)scheduleDelayedStartupTasks;
- (void)systemDidWake;
- (void)systemWillSleep;
- (void)vipManager:(id)manager hasVIPNotificationsEnabledWithCompletion:(id)completion;
@end

@implementation DaemonAppController

- (void)systemDidWake
{
  v2 = +[MailAccount activeAccounts];
  [v2 makeObjectsPerformSelector:"systemDidWake"];
}

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E7D0;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001854F8 != -1)
  {
    dispatch_once(&qword_1001854F8, block);
  }

  v2 = qword_1001854F0;

  return v2;
}

+ (void)run
{
  _set_user_dir_suffix();
  v3 = +[DaemonAppController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 objectForInfoDictionaryKey:kCFBundleVersionKey];
    v19 = 138543362;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting maild version %{public}@", &v19, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  if ((+[EMDaemonInterface cachedMailAppIsInstalled]& 1) != 0)
  {
    goto LABEL_8;
  }

  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v8 = [v7 applicationIsInstalled:kMFMobileMailBundleIdentifier];

  if (v8)
  {
    v9 = +[DaemonAppController log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cachedMailAppIsInstalled = NO, but workspace indicates it is installed. Updating cached installation status.", &v19, 2u);
    }

    [EMDaemonInterface setCachedMailAppIsInstalled:1];
LABEL_8:
    if (EFIsCustomerBuild())
    {
      v10 = [EFWatchdog alloc];
      v11 = [v10 initWithMonitoredBundleIdentifier:kMFMobileMailBundleIdentifier];
      [v11 start];
    }

    else
    {
      v11 = 0;
    }

    v12 = objc_alloc_init(DaemonAppController);
    v13 = qword_100185500;
    qword_100185500 = v12;

    [qword_100185500 _start];
    _startNonAcceptingServer = 0;
    v15 = 0;
    goto LABEL_15;
  }

  v16 = +[DaemonAppController log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Mail app is not installed, switching to EDNonAcceptingServer", &v19, 2u);
  }

  [self _unregisterAllXPCActivities];
  [self _unregisterPushTopics];
  [self _deregisterBackgroundTasks];
  _startNonAcceptingServer = [self _startNonAcceptingServer];
  v15 = objc_opt_new();
  v17 = +[LSApplicationWorkspace defaultWorkspace];
  [v17 addObserver:v15];

  v11 = 0;
LABEL_15:
  objc_autoreleasePoolPop(v6);
  v18 = +[NSRunLoop mainRunLoop];
  [v18 run];
}

- (void)registerXPCActivityForResettingXPCAlarms
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10000EE60;
  v3[3] = &unk_100156748;
  objc_copyWeak(&v4, &location);
  v2 = objc_retainBlock(v3);
  ef_xpc_activity_register();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  v7 = +[DaemonAppController log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [NSNumber numberWithInteger:state];
    v9 = [NSNumber numberWithInteger:changed];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Content protection state changed from %@ to %@", &v10, 0x16u);
  }

  if (!changed)
  {
    EFUnregisterContentProtectionObserver();
    dispatch_semaphore_signal(self->_contentProtectionSemaphore);
  }
}

- (DaemonAppController)init
{
  v113.receiver = self;
  v113.super_class = DaemonAppController;
  v2 = [(DaemonAppController *)&v113 init];
  v3 = v2;
  if (v2)
  {
    if ((EFDeviceUnlockedSinceBoot() & 1) == 0)
    {
      v4 = +[DaemonAppController log];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device has not been unlocked after boot, waiting for unlock...", buf, 2u);
      }

      v5 = dispatch_semaphore_create(0);
      v6 = *(v2 + 12);
      *(v2 + 12) = v5;

      v7 = dispatch_queue_create("com.apple.mail.maild.contentProtectionObserver", 0);
      v8 = *(v2 + 13);
      *(v2 + 13) = v7;

      v9 = *(v2 + 13);
      EFRegisterContentProtectionObserver();
      dispatch_semaphore_wait(*(v2 + 12), 0xFFFFFFFFFFFFFFFFLL);
      v10 = *(v2 + 12);
      *(v2 + 12) = 0;

      v11 = *(v2 + 13);
      *(v2 + 13) = 0;
    }

    v12 = [EFProcessTransaction transactionWithDescription:@"DaemonAppController startup"];
    v13 = *(v2 + 15);
    *(v2 + 15) = v12;

    if (notify_register_dispatch("AppleLanguagePreferencesChangedNotification", v2 + 14, &_dispatch_main_q, &stru_100156788))
    {
      *(v2 + 14) = -1;
    }

    MFSetUserAgent();
    v14 = +[MFMailMessageLibrary defaultInstance];
    v15 = *(v2 + 2);
    *(v2 + 2) = v14;

    if (_os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      [*(v2 + 2) addPostMigrationStep:objc_opt_class()];
    }

    v16 = [[MFAttachmentLibraryManager alloc] initWithPrimaryLibrary:*(v2 + 2)];
    v17 = *(v2 + 1);
    *(v2 + 1) = v16;

    v18 = [UNUserNotificationCenter alloc];
    v19 = [v18 initWithBundleIdentifier:kMFMobileMailBundleIdentifier];
    v20 = *(v2 + 14);
    *(v2 + 14) = v19;

    v21 = objc_alloc_init(EMFocusController);
    v22 = *(v2 + 34);
    *(v2 + 34) = v21;

    v23 = [[MFDaemonAccountsProvider alloc] initWithFocusController:*(v2 + 34)];
    objc_storeStrong(v2 + 18, v23);
    v24 = objc_alloc_init(EDSyncableSettings);
    v25 = *(v2 + 25);
    *(v2 + 25) = v24;

    [*(v2 + 25) setProxyChangeHandler:&stru_1001567C8];
    v26 = +[NSUserDefaults em_userDefaults];
    v27 = [v26 integerForKey:EMUserDefaultLoadRemoteContentKey];

    if (v27)
    {
      objc_initWeak(buf, v2);
      v28 = +[EFScheduler globalAsyncScheduler];
      v111[0] = _NSConcreteStackBlock;
      v111[1] = 3221225472;
      v111[2] = sub_10000FC0C;
      v111[3] = &unk_1001567F0;
      objc_copyWeak(&v112, buf);
      [v28 performBlock:v111];

      objc_destroyWeak(&v112);
      objc_destroyWeak(buf);
    }

    else
    {
      [*(v2 + 25) beginSyncing];
    }

    persistence = [*(v2 + 2) persistence];
    v30 = *(v2 + 4);
    *(v2 + 4) = persistence;

    [*(v2 + 4) setAccountsProvider:v23];
    v31 = [EDVIPManager alloc];
    v32 = +[EMPersistenceLayoutManager mailDataDirectory];
    v33 = [v31 initWithDirectoryURL:v32 accountsProvider:*(v2 + 18) delegate:v2];
    [*(v2 + 4) setVipManager:v33];

    v34 = +[MFUserProfileProvider_iOS defaultProvider];
    [*(v2 + 4) setUserProfileProvider:v34];

    v35 = [[MFMailboxProvider alloc] initWithAccountsProvider:v23];
    v36 = *(v2 + 9);
    *(v2 + 9) = v35;

    v37 = [MFRemoteSearchProvider_iOS alloc];
    messagePersistence = [*(v2 + 4) messagePersistence];
    v39 = [(MFRemoteSearchProvider_iOS *)v37 initWithMessagePersistence:messagePersistence];
    v40 = *(v2 + 10);
    *(v2 + 10) = v39;

    objc_initWeak(&location, v23);
    v108[0] = _NSConcreteStackBlock;
    v108[1] = 3221225472;
    v108[2] = sub_10000FC74;
    v108[3] = &unk_100156818;
    objc_copyWeak(&v109, &location);
    v41 = [EFFuture lazyFutureWithBlock:v108];
    v42 = *(v2 + 37);
    *(v2 + 37) = v41;

    objc_initWeak(&from, *(v2 + 37));
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_10000FD04;
    v105[3] = &unk_100156840;
    objc_copyWeak(&v106, &from);
    v94 = objc_retainBlock(v105);
    [*(v2 + 4) setUpWithMailboxProvider:*(v2 + 9) remoteSearchProvider:*(v2 + 10) serverMessagesIndexerProvider:v94];
    v43 = [MFMailPurgeableStorage alloc];
    accountsProvider = [v2 accountsProvider];
    v45 = [(MFMailPurgeableStorage *)v43 initWithAccountsProvider:accountsProvider];
    [v2 setPurgeableStorage:v45];

    v46 = [MFMailPurgeableStorageMonitor alloc];
    purgeableStorage = [v2 purgeableStorage];
    v48 = [(MFMailPurgeableStorageMonitor *)v46 initWithPurgeableStorage:purgeableStorage];
    [v2 setPurgeableStorageMonitor:v48];

    v49 = [MFMessageRuleLibraryHook alloc];
    messageChangeManager = [*(v2 + 4) messageChangeManager];
    v51 = [(MFMessageRuleLibraryHook *)v49 initWithMessageChangeManager:messageChangeManager];
    v52 = *(v2 + 3);
    *(v2 + 3) = v51;

    hookRegistry = [*(v2 + 4) hookRegistry];
    [hookRegistry registerMessageChangeHookResponder:*(v2 + 3)];

    messagePersistence2 = [*(v2 + 4) messagePersistence];
    [messagePersistence2 setSummaryLoaderProvider:v2];
    v55 = [OutgoingMessageRepository_iOS alloc];
    messageChangeManager2 = [*(v2 + 4) messageChangeManager];
    v57 = [(OutgoingMessageRepository_iOS *)v55 initWithMessagePersistence:messagePersistence2 messageChangeManager:messageChangeManager2];

    objc_storeStrong(v2 + 35, v57);
    v58 = [[MFListUnsubscribeHandler_iOS alloc] initWithOutgoingMessageRepository:v57];
    [(MFPersistence_iOS *)v3->_persistence setListUnsubscribeHandler:v58];
    *buf = 0;
    v100 = buf;
    v101 = 0x3032000000;
    v102 = sub_10000FD60;
    v103 = sub_10000FD70;
    v104 = 0;
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_10000FD78;
    v96[3] = &unk_100156868;
    v98 = buf;
    v59 = messagePersistence2;
    v97 = v59;
    v60 = objc_retainBlock(v96);
    [MFLibraryCompressionActivityManager scheduleLibraryCompressionIfNeededRequiringClassA:v60];
    [MFMarkLibraryPurgeableActivityManager scheduleIfNeededRequiringClassA:v60];
    blockedSenderManager = [(MFPersistence_iOS *)v3->_persistence blockedSenderManager];
    blockedSenderManager = v3->_blockedSenderManager;
    v3->_blockedSenderManager = blockedSenderManager;

    vipManager = [(MFPersistence_iOS *)v3->_persistence vipManager];
    [VIPManager setBackingManager:vipManager];

    MFRegisterPowerObserver();
    v64 = objc_alloc_init(EMCoreAnalyticsCollector);
    coreAnalyticsCollector = v3->_coreAnalyticsCollector;
    v3->_coreAnalyticsCollector = v64;

    categoryPersistence = [(MFPersistence_iOS *)v3->_persistence categoryPersistence];
    analyticsLogger = [categoryPersistence analyticsLogger];
    categoryCoreAnalyticsLogger = v3->_categoryCoreAnalyticsLogger;
    v3->_categoryCoreAnalyticsLogger = analyticsLogger;

    accountsProvider2 = [(MFPersistence_iOS *)v3->_persistence accountsProvider];
    [(EDCategoryCoreAnalyticsLogger *)v3->_categoryCoreAnalyticsLogger setAccountsProvider:accountsProvider2];

    v70 = +[DaemonAppController log];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *v95 = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[BlackPearl] [AccountMapper] AccountMapper initialized...", v95, 2u);
    }

    v71 = [FavoritesPersistence alloc];
    conversationPersistence = [(MFPersistence_iOS *)v3->_persistence conversationPersistence];
    mailboxPersistence = [(MFPersistence_iOS *)v3->_persistence mailboxPersistence];
    v74 = [(FavoritesPersistence *)v71 initWithConversationSubscriptionProvider:conversationPersistence accountsProvider:v23 mailboxPersistence:mailboxPersistence daemonInterface:0 analyticsCollector:v3->_coreAnalyticsCollector];
    favoritesPersistence = v3->_favoritesPersistence;
    v3->_favoritesPersistence = v74;

    v76 = [DaemonFetchController alloc];
    v77 = v3->_favoritesPersistence;
    hookRegistry2 = [(MFPersistence_iOS *)v3->_persistence hookRegistry];
    v79 = [(DaemonFetchController *)v76 initWithAccountsProvider:v23 favoritesPersistence:v77 hookRegistry:hookRegistry2];
    fetchController = v3->_fetchController;
    v3->_fetchController = v79;

    v81 = [[MFUserNotificationCenterController alloc] initWithSystemUserNotificationCenter:v3->_systemUserNotificationCenter persistence:v3->_persistence favoritesReader:v3->_favoritesPersistence analyticsCollector:v3->_coreAnalyticsCollector];
    userNotificationCenterController = v3->_userNotificationCenterController;
    v3->_userNotificationCenterController = v81;

    [(MFUserNotificationCenterController *)v3->_userNotificationCenterController addSettingsObserver:v3->_favoritesPersistence];
    remindMeNotificationController = [(MFPersistence_iOS *)v3->_persistence remindMeNotificationController];
    v84 = [remindMeNotificationController addRemindMeObserver:v3->_userNotificationCenterController];

    v85 = objc_alloc_init(MFTrashCompactor);
    trashCompactor = v3->_trashCompactor;
    v3->_trashCompactor = v85;

    v87 = [EDSendLaterUpdateController alloc];
    hookRegistry3 = [(MFPersistence_iOS *)v3->_persistence hookRegistry];
    alarmScheduler = [(MFPersistence_iOS *)v3->_persistence alarmScheduler];
    v90 = [v87 initWithHookRegistry:hookRegistry3 messagePersistence:v59 outgoingRepository:v57 alarmScheduler:alarmScheduler];
    sendLaterUpdateController = v3->_sendLaterUpdateController;
    v3->_sendLaterUpdateController = v90;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_10000FDF0, DAReListenForAccounts, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(&v106);
    objc_destroyWeak(&from);
    objc_destroyWeak(&v109);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)dealloc
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  v4.receiver = self;
  v4.super_class = DaemonAppController;
  [(DaemonAppController *)&v4 dealloc];
}

+ (id)_startNonAcceptingServer
{
  v2 = [EDNonAcceptingServer alloc];
  v7[0] = EMDaemonServiceName;
  v7[1] = @"com.apple.mobilemail.services.xpc";
  v7[2] = @"com.apple.mobilemail.nano.pairedsync";
  v3 = [NSArray arrayWithObjects:v7 count:3];
  v4 = [v2 initWithMachServiceNames:v3];

  v5 = dispatch_time(0, 10000000000);
  dispatch_after(v5, &_dispatch_main_q, &stru_100156888);

  return v4;
}

- (void)_start
{
  [(MFMailMessageLibrary *)self->_library start];
  v3 = +[DaemonAppController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting up MailXPCServices.", buf, 2u);
  }

  [(DaemonAppController *)self _registerServices];
  v4 = +[DaemonAppController log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting up UserNotificationCenterController.", buf, 2u);
  }

  userNotificationCenterController = [(DaemonAppController *)self userNotificationCenterController];
  [userNotificationCenterController start];

  v6 = +[MFUserSyncStakeholder sharedStakeholder];
  v7 = +[MFUserProfileProvider_iOS defaultProvider];
  v8 = +[VIPManager defaultInstance];
  v9 = [MFCategorySubsystem_iOS alloc];
  persistence = self->_persistence;
  categoryCoreAnalyticsLogger = [(DaemonAppController *)self categoryCoreAnalyticsLogger];
  v12 = [v9 initWithPersistence:persistence userProfileProvider:v7 vipManager:v8 sourceApplicationBundleIdentifier:kMFMobileMailBundleIdentifier categorizationAnalyticsLogger:categoryCoreAnalyticsLogger];
  [(DaemonAppController *)self setCategorySubsystem:v12];

  v13 = [DaemonInterfaceFactory alloc];
  v14 = self->_persistence;
  categorySubsystem = [(DaemonAppController *)self categorySubsystem];
  v16 = [(DaemonInterfaceFactory *)v13 initWithPersistence:v14 categorySubsystem:categorySubsystem sharedFetchController:self->_fetchController];

  v17 = [[EDServer alloc] initWithDaemonInterfaceFactory:v16];
  server = self->_server;
  self->_server = v17;

  v19 = [[MFLibraryReconciler alloc] initWithLibrary:self->_library queryProvider:self->_server accountsProvider:self->_accountsProvider];
  libraryReconciler = self->_libraryReconciler;
  self->_libraryReconciler = v19;

  [(EDServer *)self->_server start];
  [(EFProcessTransaction *)self->_startupTransaction invalidate];
  startupTransaction = self->_startupTransaction;
  self->_startupTransaction = 0;

  v22 = +[BGSystemTaskScheduler sharedScheduler];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000105C8;
  v23[3] = &unk_1001568B0;
  v23[4] = self;
  [v22 registerForTaskWithIdentifier:@"com.apple.mail.fileProtectionClassMigration" usingQueue:0 launchHandler:v23];

  [(DaemonAppController *)self scheduleDelayedStartupTasks];
}

- (void)_registerServices
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000108AC;
  v2[3] = &unk_100156360;
  v2[4] = self;
  v2[5] = a2;
  if (qword_100185508 != -1)
  {
    dispatch_once(&qword_100185508, v2);
  }
}

- (BOOL)_isAppForeground
{
  v2 = +[MFAppStateMonitor sharedInstance];
  isVisible = [v2 isVisible];

  return isVisible;
}

+ (void)_unregisterAllXPCActivities
{
  xpc_activity_unregister("com.apple.MobileMail.pushPurgeableSpaceUpdate");
  xpc_activity_unregister("com.apple.email.ConversationDailyExporter");
  xpc_activity_unregister("com.apple.email.ConversationPruning");
  xpc_activity_unregister("com.apple.email.maild.suggestionsLostMessageProcessing");
  xpc_activity_unregister("com.apple.email.searchableIndex.scheduler.budgeted");
  xpc_activity_unregister("com.apple.email.searchableIndex.scheduler.maintenance");
  xpc_activity_unregister("com.apple.email.spotlightVerification");
  xpc_activity_unregister("com.apple.emaildaemon.protecteddatabasepersistence.cleanup");
  xpc_activity_unregister("com.apple.message.LibraryPurgeableMigrator");
  xpc_activity_unregister("com.apple.message.db.vacuum");
  xpc_activity_unregister("com.apple.message.journal-reconciliation");
  xpc_activity_unregister("com.apple.message.libraryCompression");
  xpc_activity_unregister("com.apple.message.statisticsLogging");
  xpc_activity_unregister("com.apple.mobilemail.powernapFetches");
  xpc_activity_unregister("com.apple.mobilemail.scheduledFetches");
  xpc_activity_unregister("com.apple.mobilemail.compactingFetches");
  xpc_activity_unregister("com.apple.email.updateWidget");
  xpc_activity_unregister("com.apple.mobilemail.indexState");
  xpc_activity_unregister("com.apple.email.EMCoreAnalyticsCollector");
  xpc_activity_unregister("com.apple.mobilemail.activity.reset-device-activity-alarms");
  xpc_activity_unregister("com.apple.email.maild.sendlaterdelivery.alarmrestart");
  xpc_activity_unregister("com.apple.email.ProcessSQLQueryPerformanceData");
  xpc_activity_unregister("com.apple.email.EDRemoteContentManager.requestScheduler");
  xpc_activity_unregister("com.apple.email.EDRemoteContentPersistence.analyticsScheduler");
  xpc_activity_unregister("com.apple.mail.searchableIndex.indexingDiagnosticsCollector");

  xpc_activity_unregister("com.apple.mail.mailboxPersistence.statisticsReportingScheduler");
}

+ (void)_deregisterBackgroundTasks
{
  sub_100010BEC(@"com.apple.email.searchIndexerBGTask");
  sub_100010BEC(@"com.apple.mail.blackpearl.categorizer");
  sub_100010BEC(@"com.apple.email.categorization.FastPass");
  sub_100010BEC(@"com.apple.email.search.FastPass");
  sub_100010BEC(@"com.apple.mail.messageauthentication");

  sub_100010BEC(@"com.apple.mail.businessconnectgrouping");
}

+ (void)_unregisterPushTopics
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create("com.apple.mail.maild.unregisterPushTopics", v2);

  v3 = [APSConnection alloc];
  v4 = [v3 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.email.maild.aps" queue:v5];
  [v4 setEnabledTopics:&__NSArray0__struct ignoredTopics:&__NSArray0__struct opportunisticTopics:&__NSArray0__struct];
  [v4 shutdown];
}

- (void)resetPushStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v3 = +[AutoFetchController sharedController];
  [v3 resetPushStateWithCompletion:completionCopy];
}

- (void)autofetchAccount:(id)account mailboxUid:(id)uid
{
  accountCopy = account;
  uidCopy = uid;
  v7 = uidCopy;
  if (uidCopy)
  {
    primaryMailboxUid = uidCopy;
  }

  else
  {
    primaryMailboxUid = [accountCopy primaryMailboxUid];
  }

  v9 = primaryMailboxUid;
  v10 = MFAutoFetchLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    ef_publicDescription = [accountCopy ef_publicDescription];
    v20 = 138543362;
    v21 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Autofetching after abort %{public}@", &v20, 0xCu);
  }

  v12 = [accountCopy storeForMailboxUid:v9];
  v13 = [MessageBodyLoader loaderForAccount:accountCopy];
  [v13 beginAddingNewMessagesForStore:v12];

  if (([v12 fetchMobileSynchronously:{objc_msgSend(v12, "fetchWindow")}] & 0x8000000000000000) != 0)
  {
    connectionError = [accountCopy connectionError];
    if (!connectionError)
    {
      v18 = +[MFActivityMonitor currentMonitor];
      connectionError = [v18 error];
    }

    v15 = MFLogGeneral();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription2 = [connectionError ef_publicDescription];
      sub_1000D0874(ef_publicDescription2, &v20, v15);
    }
  }

  else
  {
    connectionError = +[MailPersistentStorage sharedStorage];
    v15 = +[NSDate date];
    mailbox = [v12 mailbox];
    uRLString = [mailbox URLString];
    [connectionError setFetchDate:v15 forSource:uRLString];
  }
}

- (id)messageSummaryLoaderForMessage:(id)message
{
  messageCopy = message;
  v4 = [[MessageSummaryLoader alloc] initWithMessage:messageCopy];

  return v4;
}

- (void)scheduleDelayedStartupTasks
{
  [(DaemonAppController *)self registerXPCActivityForResettingXPCAlarms];
  v3 = [EFProcessTransaction transactionWithDescription:@"Delayed Startup Transaction"];
  v4 = +[EFScheduler mainThreadScheduler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100011288;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v5 = v3;
  v8 = v5;
  v6 = [v4 afterDelay:v7 performBlock:2.0];
}

- (void)_delayedStartupTasks
{
  v3 = +[DaemonAppController log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing delayed startup tasks.", v39, 2u);
  }

  serverMessagesIndexerFuture = [(DaemonAppController *)self serverMessagesIndexerFuture];
  [serverMessagesIndexerFuture result];

  v5 = +[MFPowerController sharedInstance];
  [v5 startListeningForBatterySaverNotifications];

  v6 = +[MFVIPSendersLibrary defaultInstance];
  [v6 checkForAddressBookChanges];

  conversationPersistence = [(MFPersistence_iOS *)self->_persistence conversationPersistence];
  [conversationPersistence initializeConversationManagerAndPerformInitialSync];

  v8 = [AppBadgeController alloc];
  messagePersistence = [(MFPersistence_iOS *)self->_persistence messagePersistence];
  hookRegistry = [(MFPersistence_iOS *)self->_persistence hookRegistry];
  mailboxProvider = self->_mailboxProvider;
  focusController = self->_focusController;
  v13 = [MSBucketBarConfigurationController alloc];
  v14 = objc_alloc_init(MSUserDefaultsBucketBarConfigurationProvider);
  v15 = [v13 initWithProvider:v14];
  v16 = [(AppBadgeController *)v8 initWithMessagePersistence:messagePersistence hookRegistry:hookRegistry mailboxProvider:mailboxProvider focusController:focusController bucketBarController:v15];
  badgeController = self->_badgeController;
  self->_badgeController = v16;

  [(MFUserNotificationCenterController *)self->_userNotificationCenterController addSettingsObserver:self->_badgeController];
  v18 = [MFApplicationShortcutProvider alloc];
  accountsProvider = [(DaemonAppController *)self accountsProvider];
  favoritesPersistence = self->_favoritesPersistence;
  messagePersistence2 = [(MFPersistence_iOS *)self->_persistence messagePersistence];
  hookRegistry2 = [(MFPersistence_iOS *)self->_persistence hookRegistry];
  v23 = [(MFApplicationShortcutProvider *)v18 initWithAccountsProvider:accountsProvider favoritesPersistence:favoritesPersistence messagePersistence:messagePersistence2 hookRegistry:hookRegistry2];
  appShortcutProvider = self->_appShortcutProvider;
  self->_appShortcutProvider = v23;

  if (+[SuggestionsDataProvider isHarvestingSupported])
  {
    v25 = [[SuggestionsDataProvider alloc] initWithLibrary:self->_library];
    suggestionsDataProvider = self->_suggestionsDataProvider;
    self->_suggestionsDataProvider = v25;

    [(SuggestionsDataProvider *)self->_suggestionsDataProvider resumeFullDownloadProcessing];
  }

  v27 = [EDWidgetUpdateController alloc];
  v40 = MFWidgetKindMessages;
  v28 = [NSArray arrayWithObjects:&v40 count:1];
  hookRegistry3 = [(MFPersistence_iOS *)self->_persistence hookRegistry];
  v30 = [v27 initWithWidgetBundleIdentifier:MFMobileMailWidgetBundleIdentifier widgetKindIdentifiers:v28 hookRegistry:hookRegistry3];
  widgetUpdateController = self->_widgetUpdateController;
  self->_widgetUpdateController = v30;

  v32 = +[MFDeliveryQueue sharedDeliveryQueue];
  [(DaemonAppController *)self _setupSnapshotInvalidation];
  [(MFPersistence_iOS *)self->_persistence scheduleRecurringActivity];
  remindMeNotificationController = [(MFPersistence_iOS *)self->_persistence remindMeNotificationController];
  [remindMeNotificationController performDelayedTasks];

  +[EMInternalPreferences registerForDefaultChanges];
  +[EMServerConfiguration refreshAsync];
  v34 = +[LSApplicationWorkspace defaultWorkspace];
  v35 = [v34 applicationIsInstalled:kMFMobileMailBundleIdentifier];

  [EMDaemonInterface setCachedMailAppIsInstalled:v35];
  if ((v35 & 1) == 0)
  {
    v36 = +[DaemonAppController log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1000D08C4(v36);
    }

    [(DaemonAppController *)self _callMobileMailAppRemovalService];
  }

  [(DaemonAppController *)self _configureAnalytics];
  categorySubsystem = [(DaemonAppController *)self categorySubsystem];
  [categorySubsystem start];

  _os_feature_enabled_impl();
  EDCategoryPowerLogDidCreateInstance();
  v38 = +[MailAccount mailAccounts];
  [MailAccount updatePersonalStatusForAccounts:v38 forceUpdate:1];
}

- (void)_callMobileMailAppRemovalService
{
  [@"/System/Library/AppRemovalServices/com.apple.mobilemail.appremoval.xpc" fileSystemRepresentation];
  xpc_add_bundle();
  v2 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.mobilemail.appremoval"];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LSAppRemovalServiceProtocol];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&stru_1001568F0];
  if (v4)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001195C;
    v6[3] = &unk_100156918;
    v7 = dispatch_semaphore_create(0);
    v5 = v7;
    [v4 removeAppWithReply:v6];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)systemWillSleep
{
  v2 = +[MailAccount activeAccounts];
  [v2 makeObjectsPerformSelector:"systemWillSleep"];
}

- (void)vipManager:(id)manager hasVIPNotificationsEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  systemUserNotificationCenter = self->_systemUserNotificationCenter;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100011B4C;
  v8[3] = &unk_100156940;
  v9 = completionCopy;
  v7 = completionCopy;
  [(MFSystemUserNotificationCenter *)systemUserNotificationCenter getNotificationSettingsForTopicsWithCompletionHandler:v8];
}

- (void)_setupSnapshotInvalidation
{
  v3 = [DaemonSnapshotInvalidator alloc];
  hookRegistry = [(MFPersistence_iOS *)self->_persistence hookRegistry];
  server = self->_server;
  focusController = [(DaemonAppController *)self focusController];
  v7 = [(DaemonSnapshotInvalidator *)v3 initWithApplicationBundleIdentifier:kMFMobileMailBundleIdentifier hookRegistry:hookRegistry remoteClientsProvider:server focusController:focusController];
  [(DaemonAppController *)self setSnapshotInvalidator:v7];

  v8 = +[EFDevice currentDevice];
  LODWORD(focusController) = [v8 isInternal];

  if (focusController)
  {
    objc_initWeak(&location, self);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100011F28;
    v25[3] = &unk_100156968;
    objc_copyWeak(&v26, &location);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100012000;
    v23[3] = &unk_100156990;
    v9 = objc_retainBlock(v25);
    v24 = v9;
    v10 = [EMInternalPreferences observeChangesForPreference:11 usingBlock:v23];
    snapshotOverrideObservation = self->_snapshotOverrideObservation;
    self->_snapshotOverrideObservation = v10;

    v12 = +[EDClientState sharedInstance];
    v13 = EDClientStateIsRunningTestsKey;
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100012084;
    v21 = &unk_100156940;
    v14 = v9;
    v22 = v14;
    v15 = [v12 ef_observeKeyPath:v13 options:1 autoCancelToken:0 usingBlock:&v18];
    clientIsTestingObservation = self->_clientIsTestingObservation;
    self->_clientIsTestingObservation = v15;

    v17 = [EDClientState sharedInstance:v18];
    (v14[2])(v14, [v17 isRunningTests], +[EMInternalPreferences preferenceEnabled:](EMInternalPreferences, "preferenceEnabled:", 11));

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)_configureAnalytics
{
  v3 = objc_alloc_init(MFSMIMEConfigurationProvider);
  v4 = [EDMailAnalyticsCollector alloc];
  coreAnalyticsCollector = self->_coreAnalyticsCollector;
  messagePersistence = [(MFPersistence_iOS *)self->_persistence messagePersistence];
  v7 = [v4 initWithAnalyticsCollector:coreAnalyticsCollector smimeConfigurationProvider:v3 messagePersistence:messagePersistence];
  mailAnalyticsCollector = self->_mailAnalyticsCollector;
  self->_mailAnalyticsCollector = v7;

  v9 = self->_persistence;
  objc_initWeak(&location, v9);
  v10 = self->_coreAnalyticsCollector;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000122BC;
  v12[3] = &unk_1001567F0;
  objc_copyWeak(&v13, &location);
  v11 = [(EMCoreAnalyticsCollector *)v10 registerForLogEventsWithBlock:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

@end