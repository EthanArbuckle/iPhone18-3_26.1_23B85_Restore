@interface MFUserNotificationCenterController
- (BOOL)_protectedDataAvailable;
- (BOOL)hasFavoriteMailboxes;
- (BOOL)willUseGeneratedSummaries;
- (MFUserNotificationCenterController)initWithSystemUserNotificationCenter:(id)center conversationSubscriptionProvider:(id)provider favoritesReader:(id)reader vipReader:(id)vipReader blockedSenderReader:(id)senderReader messageChangeManager:(id)manager messagePersistence:(id)persistence hookRegistry:(id)self0 analyticsCollector:(id)self1;
- (MFUserNotificationCenterController)initWithSystemUserNotificationCenter:(id)center persistence:(id)persistence favoritesReader:(id)reader analyticsCollector:(id)collector;
- (double)_postingDelayFromDefaults;
- (double)_postingDelayIsMailForeground:(BOOL)foreground;
- (id)_coreAnaltyicsForSettings:(id)settings;
- (id)_currentSettingsStringForSettingsByTopic:(id)topic;
- (id)_libraryMessagesForMessageReferences:(id)references;
- (id)coreAnalyticsPeriodicEvent;
- (id)defaultTopicRequests;
- (id)delayedNotificationsPresenter:(id)presenter userNotificationRequestForNotificationMessage:(id)message context:(id)context;
- (id)notificationRequestForNotificationMessage:(id)message destinations:(unint64_t)destinations;
- (id)notificationRequestForNotificationMessage:(id)message destinations:(unint64_t)destinations isAdd:(BOOL)add soundController:(id)controller;
- (id)topicRequestsForAccounts:(id)accounts;
- (int64_t)_swipeActionForNotificationActionIdentifier:(id)identifier;
- (void)_applicationForegroundStateChanged:(id)changed;
- (void)_loadCurrentSettingsAndNotifyObservers;
- (void)_logCurrentSettings;
- (void)_networkConfigurationChanged:(id)changed;
- (void)_nts_invalidateClient:(id)client summaryClientsByReference:(id)reference;
- (void)_performCleanup;
- (void)_performCleanupForNotifications:(id)notifications;
- (void)_performCleanupForRemindMeNotifications:(id)notifications;
- (void)_performCleanupOnStartup;
- (void)_persistenceDidUpdateSummaryForMessage:(id)message;
- (void)_registerStateCapture;
- (void)_setupPostingDelayDefaultsObserver;
- (void)activeAccountsDidChangeForNotificationCenterObserver:(id)observer;
- (void)addSettingsObserver:(id)observer;
- (void)cancelSummaryRequestForMessageWithExternalReference:(id)reference;
- (void)cancelSummaryRequestsForAccountWithID:(id)d;
- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state;
- (void)controller:(id)controller messageTimerFired:(id)fired;
- (void)conversationFlagsDidChangeForNotificationCenterObserver:(id)observer;
- (void)dealloc;
- (void)delayedNotificationsPresenter:(id)presenter handleUserNotificationRequest:(id)request notificationMessage:(id)message context:(id)context;
- (void)handleDidFetchMessages:(id)messages postImmediately:(BOOL)immediately;
- (void)notificationCenterObserver:(id)observer didStopListeningForChangesForAccountIDs:(id)ds;
- (void)notificationCenterObserver:(id)observer messagesDeleted:(id)deleted;
- (void)notificationCenterObserver:(id)observer messagesUpdated:(id)updated flags:(id)flags;
- (void)notificationCenterObserver:(id)observer removedVIPs:(id)ps;
- (void)notifyMessagesAdded:(id)added context:(id)context;
- (void)nts_removeNotificationsForRemovedAccounts;
- (void)nts_resetUserNotificationCenterTopics;
- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window;
- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window;
- (void)persistenceDidInitializeConversationSubscriptionProvider;
- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window;
- (void)processNotificationActionForMessageReferenceURL:(id)l actionIdentifier:(id)identifier;
- (void)removeNotificationsWithIdentifiers:(id)identifiers;
- (void)removeSettingsObserver:(id)observer;
- (void)requestSummaryForMessage:(id)message;
- (void)requestSummaryWithClient:(id)client;
- (void)resetUserNotificationCenterTopics;
- (void)start;
- (void)startUpgradeIfNecessary;
- (void)stop;
- (void)updateMessage:(id)message withSummary:(id)summary;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)vipsChangedForNotificationCenterObserver:(id)observer;
@end

@implementation MFUserNotificationCenterController

- (MFUserNotificationCenterController)initWithSystemUserNotificationCenter:(id)center persistence:(id)persistence favoritesReader:(id)reader analyticsCollector:(id)collector
{
  centerCopy = center;
  persistenceCopy = persistence;
  readerCopy = reader;
  collectorCopy = collector;
  conversationPersistence = [persistenceCopy conversationPersistence];
  vipManager = [persistenceCopy vipManager];
  blockedSenderManager = [persistenceCopy blockedSenderManager];
  messageChangeManager = [persistenceCopy messageChangeManager];
  messagePersistence = [persistenceCopy messagePersistence];
  hookRegistry = [persistenceCopy hookRegistry];
  v17 = [(MFUserNotificationCenterController *)self initWithSystemUserNotificationCenter:centerCopy conversationSubscriptionProvider:conversationPersistence favoritesReader:readerCopy vipReader:vipManager blockedSenderReader:blockedSenderManager messageChangeManager:messageChangeManager messagePersistence:messagePersistence hookRegistry:hookRegistry analyticsCollector:collectorCopy];

  return v17;
}

- (MFUserNotificationCenterController)initWithSystemUserNotificationCenter:(id)center conversationSubscriptionProvider:(id)provider favoritesReader:(id)reader vipReader:(id)vipReader blockedSenderReader:(id)senderReader messageChangeManager:(id)manager messagePersistence:(id)persistence hookRegistry:(id)self0 analyticsCollector:(id)self1
{
  centerCopy = center;
  providerCopy = provider;
  readerCopy = reader;
  vipReaderCopy = vipReader;
  senderReaderCopy = senderReader;
  managerCopy = manager;
  persistenceCopy = persistence;
  registryCopy = registry;
  collectorCopy = collector;
  v68.receiver = self;
  v68.super_class = MFUserNotificationCenterController;
  v18 = [(MFUserNotificationCenterController *)&v68 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_messagePersistence, persistence);
    objc_storeStrong(&v19->_systemUserNotificationCenter, center);
    objc_storeStrong(&v19->_conversationSubscriptionProvider, provider);
    objc_storeStrong(&v19->_favoritesReader, reader);
    objc_storeStrong(&v19->_vipReader, vipReader);
    objc_storeStrong(&v19->_hookRegistry, registry);
    objc_storeStrong(&v19->_messageChangeManager, manager);
    *&v19->_settingsLock._os_unfair_lock_opaque = 0;
    v20 = [[MFUserNotificationCenterObserver alloc] initWithVIPReader:v19->_vipReader favoritesReader:v19->_favoritesReader delegate:v19];
    observer = v19->_observer;
    v19->_observer = v20;

    v22 = [[MFUserNotificationSoundController alloc] initWithUserNotificationCenterObserver:v19->_observer systemUserNotificationCenter:v19->_systemUserNotificationCenter];
    soundController = v19->_soundController;
    v19->_soundController = v22;

    v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v25 = dispatch_queue_attr_make_with_qos_class(v24, QOS_CLASS_UTILITY, 0);
    v26 = dispatch_queue_create("com.apple.mail.UserNotificationCenter", v25);
    queue = v19->_queue;
    v19->_queue = v26;

    v28 = [[EDUserNotificationFilter alloc] initWithBlockedSenderReader:senderReaderCopy vipReader:v19->_vipReader];
    notificationFilter = v19->_notificationFilter;
    v19->_notificationFilter = v28;

    v30 = objc_alloc_init(EDUserNotificationMailboxCutoffController);
    mailboxCutoffController = v19->_mailboxCutoffController;
    v19->_mailboxCutoffController = v30;

    [(MFSystemUserNotificationCenter *)v19->_systemUserNotificationCenter setDelegate:v19];
    [(MFSystemUserNotificationCenter *)v19->_systemUserNotificationCenter setPrivateDelegate:v19];
    [(MFSystemUserNotificationCenter *)v19->_systemUserNotificationCenter setWantsNotificationResponsesDelivered];
    v32 = +[NSNotificationCenter defaultCenter];
    [v32 addObserver:v19 selector:"_applicationForegroundStateChanged:" name:EDClientStateForegroundStateDidChangeNotification object:0];

    v33 = objc_alloc_init(MFDelayedNotificationPresenter);
    delayedNotificationPresenter = v19->_delayedNotificationPresenter;
    v19->_delayedNotificationPresenter = v33;

    [(MFDelayedNotificationPresenter *)v19->_delayedNotificationPresenter setDelegate:v19];
    v35 = MFUserAgent();
    -[MFUserNotificationCenterController _updatePostingDelay:](v19, "_updatePostingDelay:", [v35 isForeground]);

    v36 = [EFLocked alloc];
    v37 = +[NSMapTable strongToWeakObjectsMapTable];
    v38 = [v36 initWithObject:v37];
    summaryClientsByReference = v19->_summaryClientsByReference;
    v19->_summaryClientsByReference = v38;

    v40 = objc_alloc_init(NSMutableArray);
    settingsObservers = v19->_settingsObservers;
    v19->_settingsObservers = v40;

    [(EDPersistenceHookRegistry *)v19->_hookRegistry registerMessageChangeHookResponder:v19];
    [(EDPersistenceHookRegistry *)v19->_hookRegistry registerDatabaseChangeHookResponder:v19];
    v42 = [EFLocked alloc];
    v43 = objc_alloc_init(NSMutableSet);
    v44 = [v42 initWithObject:v43];
    notificationsNeedingSummaries = v19->_notificationsNeedingSummaries;
    v19->_notificationsNeedingSummaries = v44;

    v46 = [EFLocked alloc];
    v47 = objc_alloc_init(NSMutableDictionary);
    v48 = [v46 initWithObject:v47];
    remindMeNotificationsNeedingSummaries = v19->_remindMeNotificationsNeedingSummaries;
    v19->_remindMeNotificationsNeedingSummaries = v48;

    objc_storeStrong(&v19->_analyticsCollector, collector);
    v50 = [(EMCoreAnalyticsCollector *)v19->_analyticsCollector registerForLogEventsWithPeriodicDataProvider:v19];
    v51 = [[MSUserNotificationCenterAnalyticsLogger alloc] initWithCoreAnalyticsCollector:collectorCopy];
    notificationAnalyticsLogger = v19->_notificationAnalyticsLogger;
    v19->_notificationAnalyticsLogger = v51;

    v53 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v54 = dispatch_queue_attr_make_with_qos_class(v53, QOS_CLASS_USER_INITIATED, 0);
    v55 = dispatch_queue_create("com.apple.email.MFUserNotificationCenterController.contentProtectionQueue", v54);
    contentProtectionQueue = v19->_contentProtectionQueue;
    v19->_contentProtectionQueue = v55;

    v57 = v19->_contentProtectionQueue;
    EFRegisterContentProtectionObserver();
    [(MFUserNotificationCenterController *)v19 _setupPostingDelayDefaultsObserver];
    [(MFUserNotificationCenterController *)v19 _registerStateCapture];
  }

  return v19;
}

- (void)dealloc
{
  [(EFCancelable *)self->_stateCancelable cancel];
  EFUnregisterContentProtectionObserver();
  v3.receiver = self;
  v3.super_class = MFUserNotificationCenterController;
  [(MFUserNotificationCenterController *)&v3 dealloc];
}

- (void)start
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009A940;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_sync(queue, block);
  v4 = objc_alloc_init(MFNanoServer);
  nanoServer = self->_nanoServer;
  self->_nanoServer = v4;

  [(MFUserNotificationCenterController *)self startUpgradeIfNecessary];
  [(MFUserNotificationCenterController *)self _loadCurrentSettingsAndNotifyObservers];
  observer = [(MFUserNotificationCenterController *)self observer];
  [observer startObserving];

  [(MFUserNotificationCenterController *)self _performCleanupOnStartup];
  v7 = +[NSNotificationCenter defaultCenter];
  v8 = +[MFNetworkController sharedInstance];
  [v7 addObserver:self selector:"_networkConfigurationChanged:" name:NetworkConfigurationDidChangeNotification object:v8];
}

- (void)stop
{
  observer = [(MFUserNotificationCenterController *)self observer];
  [observer startObserving];

  v5 = +[NSNotificationCenter defaultCenter];
  v3 = +[MFNetworkController sharedInstance];
  [v5 removeObserver:self name:NetworkConfigurationDidChangeNotification object:v3];
}

- (void)_registerStateCapture
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  objc_copyWeak(&v6, &location);
  v4 = EFLogRegisterStateCaptureBlock();
  stateCancelable = self->_stateCancelable;
  self->_stateCancelable = v4;

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (BOOL)willUseGeneratedSummaries
{
  os_unfair_lock_lock(&self->_summarizationSettingLock);
  notificationSummarizationEnabled = [(MFUserNotificationCenterController *)self notificationSummarizationEnabled];
  os_unfair_lock_unlock(&self->_summarizationSettingLock);
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    LOBYTE(v4) = EMIsGreymatterAvailable() & notificationSummarizationEnabled;
  }

  return v4;
}

- (void)startUpgradeIfNecessary
{
  v3 = [MFUserNotificationCenterUpgrader alloc];
  systemUserNotificationCenter = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
  conversationSubscriptionProvider = [(MFUserNotificationCenterController *)self conversationSubscriptionProvider];
  favoritesReader = [(MFUserNotificationCenterController *)self favoritesReader];
  vipReader = [(MFUserNotificationCenterController *)self vipReader];
  observer = [(MFUserNotificationCenterController *)self observer];
  activeAccounts = [observer activeAccounts];
  v9 = [(MFUserNotificationCenterUpgrader *)v3 initWithDelegate:self systemUserNotificationCenter:systemUserNotificationCenter conversationSubscriptionProvider:conversationSubscriptionProvider favoritesReader:favoritesReader vipReader:vipReader activeAccounts:activeAccounts];
  [(MFUserNotificationCenterController *)self setUpgrader:v9];

  upgrader = [(MFUserNotificationCenterController *)self upgrader];
  [upgrader performUpgradeIfNecessary];
}

- (double)_postingDelayIsMailForeground:(BOOL)foreground
{
  if (foreground && ![(MFUserNotificationCenterController *)self willUseGeneratedSummaries])
  {
    return 2.0;
  }

  [(MFUserNotificationCenterController *)self _postingDelayFromDefaults];
  return result;
}

- (void)_applicationForegroundStateChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKeyedSubscript:EDClientStateForegroundStateDidChangeKeyIsForeground];
  bOOLValue = [v4 BOOLValue];

  [(MFUserNotificationCenterController *)self _updatePostingDelay:bOOLValue];
}

- (double)_postingDelayFromDefaults
{
  v2 = +[NSUserDefaults em_userDefaults];
  v3 = [v2 valueForKey:EMUserDefaultNotificationPostingDelayTime];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = MSUserNotificationCenterPostingDelay;
  }

  return v5;
}

- (void)_setupPostingDelayDefaultsObserver
{
  objc_initWeak(&location, self);
  v3 = +[NSUserDefaults em_userDefaults];
  v4 = EMUserDefaultNotificationPostingDelayTime;
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10009B118;
  v9 = &unk_1001574D8;
  objc_copyWeak(&v10, &location);
  v5 = [v3 ef_observeKeyPath:v4 options:5 autoCancelToken:1 usingBlock:&v6];
  [(MFUserNotificationCenterController *)self setNotificationPostingDelayToken:v5, v6, v7, v8, v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)notifyMessagesAdded:(id)added context:(id)context
{
  addedCopy = added;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009B374;
  block[3] = &unk_1001573C0;
  block[4] = self;
  v12 = addedCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = addedCopy;
  dispatch_async(queue, block);
}

- (void)nts_removeNotificationsForRemovedAccounts
{
  dispatch_assert_queue_V2(self->_queue);
  observer = [(MFUserNotificationCenterController *)self observer];
  activeAccounts = [observer activeAccounts];
  v5 = [activeAccounts ef_map:&stru_100159D38];

  deliveredNotifications = [(MFSystemUserNotificationCenter *)self->_systemUserNotificationCenter deliveredNotifications];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009BC8C;
  v11[3] = &unk_100159D60;
  v7 = v5;
  v12 = v7;
  v8 = [deliveredNotifications ef_compactMap:v11];
  if ([v8 count])
  {
    v9 = MSUserNotificationsLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      *buf = 134217984;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing %lu notifications due to account changes.", buf, 0xCu);
    }

    [(MFUserNotificationCenterController *)self removeNotificationsWithIdentifiers:v8];
  }
}

- (void)handleDidFetchMessages:(id)messages postImmediately:(BOOL)immediately
{
  messagesCopy = messages;
  v6 = MSUserNotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = messagesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetched messages = %{public}@", buf, 0xCu);
  }

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [messagesCopy count]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = messagesCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        notificationID = [v11 notificationID];
        delayedNotificationPresenter = [(MFUserNotificationCenterController *)self delayedNotificationPresenter];
        [delayedNotificationPresenter schedulePendingNotificationMessage:v11 identifier:notificationID context:@"add"];

        willUseGeneratedSummaries = [(MFUserNotificationCenterController *)self willUseGeneratedSummaries];
        if (immediately)
        {
          goto LABEL_13;
        }

        if (!willUseGeneratedSummaries)
        {
          summary = [v11 summary];
          v18 = summary == 0;

          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        libraryMessage = [v11 libraryMessage];
        generatedSummary = [libraryMessage generatedSummary];
        if (generatedSummary)
        {

LABEL_13:
          [v7 addObject:notificationID];
          goto LABEL_14;
        }

LABEL_14:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v19 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v8 = v19;
    }

    while (v19);
  }

  if ([v7 count])
  {
    delayedNotificationPresenter2 = [(MFUserNotificationCenterController *)self delayedNotificationPresenter];
    [delayedNotificationPresenter2 immediatelyProcessPendingMessagesWithIdentifiers:v7];
  }
}

- (void)removeNotificationsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v19 = [identifiersCopy count];
    v20 = 2112;
    v21 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing %lu notifications with identifiers: %@", buf, 0x16u);
  }

  notificationAnalyticsLogger = [(MFUserNotificationCenterController *)self notificationAnalyticsLogger];
  [notificationAnalyticsLogger notificationRemovedWithNotificationIDs:identifiersCopy];

  delayedNotificationPresenter = [(MFUserNotificationCenterController *)self delayedNotificationPresenter];
  [delayedNotificationPresenter removePendingMessagesWithIdentifiers:identifiersCopy];

  systemUserNotificationCenter = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
  [systemUserNotificationCenter removePendingNotificationRequestsWithIdentifiers:identifiersCopy];

  systemUserNotificationCenter2 = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
  [systemUserNotificationCenter2 removeDeliveredNotificationsWithIdentifiers:identifiersCopy];

  notificationsNeedingSummaries = self->_notificationsNeedingSummaries;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009C33C;
  v16[3] = &unk_100159D88;
  v11 = identifiersCopy;
  v17 = v11;
  [(EFLocked *)notificationsNeedingSummaries performWhileLocked:v16];
  remindMeNotificationsNeedingSummaries = self->_remindMeNotificationsNeedingSummaries;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009C348;
  v14[3] = &unk_100159DB0;
  v13 = v11;
  v15 = v13;
  [(EFLocked *)remindMeNotificationsNeedingSummaries performWhileLocked:v14];
}

- (id)delayedNotificationsPresenter:(id)presenter userNotificationRequestForNotificationMessage:(id)message context:(id)context
{
  messageCopy = message;
  v8 = [@"add" isEqual:context];
  if ([messageCopy isRemindMe] & 1) != 0 || (-[MFUserNotificationCenterController mailboxCutoffController](self, "mailboxCutoffController"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(messageCopy, "libraryMessage"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isMessageAboveMailboxCutoff:", v10), v10, v9, (v11))
  {
    v12 = 0;
  }

  else
  {
    v13 = MSUserNotificationsLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      v18 = messageCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Notification is below cutoff. Sending directly to NotificationCener. %{public}@", &v17, 0xCu);
    }

    v12 = 4;
  }

  soundController = [(MFUserNotificationCenterController *)self soundController];
  v15 = [(MFUserNotificationCenterController *)self notificationRequestForNotificationMessage:messageCopy destinations:v12 isAdd:v8 soundController:soundController];

  return v15;
}

- (id)notificationRequestForNotificationMessage:(id)message destinations:(unint64_t)destinations
{
  v4 = [(MFUserNotificationCenterController *)self notificationRequestForNotificationMessage:message destinations:destinations isAdd:0 soundController:0];

  return v4;
}

- (id)notificationRequestForNotificationMessage:(id)message destinations:(unint64_t)destinations isAdd:(BOOL)add soundController:(id)controller
{
  addCopy = add;
  messageCopy = message;
  controllerCopy = controller;
  notificationID = [messageCopy notificationID];
  v9 = MSUserNotificationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [messageCopy ef_publicDescription];
    *buf = 138543874;
    v76 = ef_publicDescription;
    v77 = 2048;
    destinationsCopy = destinations;
    v79 = 1026;
    v80 = addCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "notificationRequestForNotificationMessage: %{public}@, destinations=%lu, isAdd=%{public}d", buf, 0x1Cu);
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  nanoServer = self->_nanoServer;
  account = [messageCopy account];
  libraryMessage = [messageCopy libraryMessage];
  mailbox = [libraryMessage mailbox];
  uRLString = [mailbox URLString];
  status = [messageCopy status];
  dateReceived = [messageCopy dateReceived];
  v64 = [(MFNanoServer *)nanoServer nanoBulletinFlagsForMessageFromAccount:account mailboxURLString:uRLString status:status dateReceived:dateReceived];

  if (v64)
  {
    v19 = v64;
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  [v11 setObject:v19 forKeyedSubscript:MSUserNotificationContentKeyNanoFlags];
  messageReference = [messageCopy messageReference];
  [v11 setObject:messageReference forKeyedSubscript:MSUserNotificationContentKeyMessageReference];

  accountID = [messageCopy accountID];
  [v11 setObject:accountID forKeyedSubscript:MSUserNotificationContentKeyAccountReference];

  nanoMessageId = [messageCopy nanoMessageId];
  [v11 setObject:nanoMessageId forKeyedSubscript:MSUserNotificationContentKeyNanoMessageId];

  senderAddress = [messageCopy senderAddress];
  [v11 setObject:? forKeyedSubscript:?];
  suppressionContexts = [messageCopy suppressionContexts];
  if (suppressionContexts && ([messageCopy isRemindMe] & 1) == 0)
  {
    allObjects = [suppressionContexts allObjects];
    v24 = [allObjects componentsJoinedByString:{@", "}];

    [v11 setObject:v24 forKeyedSubscript:MSUserNotificationContentKeySuppressionContext];
  }

  coalesceThreadID = [messageCopy coalesceThreadID];
  v25 = objc_alloc_init(UNMutableNotificationContent);
  title = [messageCopy title];
  [v25 setTitle:title];

  subtitle = [messageCopy subtitle];
  [v25 setSubtitle:subtitle];

  dateReceived2 = [messageCopy dateReceived];
  if (!dateReceived2)
  {
    goto LABEL_12;
  }

  dateReceived3 = [messageCopy dateReceived];
  v30 = +[NSDate date];
  v31 = [dateReceived3 ef_isEarlierThanDate:v30];

  if (v31)
  {
    dateReceived4 = [messageCopy dateReceived];
    [v25 setDate:dateReceived4];
  }

  else
  {
LABEL_12:
    dateReceived4 = +[NSDate date];
    [v25 setDate:dateReceived4];
  }

  [v25 setCategoryIdentifier:@"mail-message"];
  messageReference2 = [messageCopy messageReference];
  v34 = [NSURL URLWithString:messageReference2];
  [v25 setDefaultActionURL:v34];

  v74[0] = MSUserNotificationCenterTopicVIP;
  v74[1] = MSUserNotificationCenterTopicNotifiedThreads;
  v74[2] = MSUserNotificationCenterTopicPrimary;
  v74[3] = MSUserNotificationCenterTopicPrimaryMessageBadges;
  v74[4] = MSUserNotificationCenterTopicAllMessages;
  v57 = [NSArray arrayWithObjects:v74 count:5];
  notificationSettingsForTopics = [(MFSystemUserNotificationCenter *)self->_systemUserNotificationCenter notificationSettingsForTopics];
  topicIdentifiers = [messageCopy topicIdentifiers];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_10009D118;
  v71[3] = &unk_100159DD8;
  v36 = notificationSettingsForTopics;
  v72 = v36;
  v37 = v57;
  v73 = v37;
  v38 = [topicIdentifiers ef_filter:v71];
  [v25 setTopicIdentifiers:v38];

  accountID2 = [messageCopy accountID];
  [v25 setFilterCriteria:accountID2];

  if ([messageCopy isRemindMe])
  {
    remindMeDate = [messageCopy remindMeDate];
    [v25 setDate:remindMeDate];
  }

  summary = [messageCopy summary];
  if ([summary length])
  {
    [v25 setBody:summary];
    v42 = @"Summary added";
LABEL_19:
    v44 = 1;
    goto LABEL_20;
  }

  if (summary)
  {
    v43 = MFLookupLocalizedString();
    [v25 setBody:v43];

    v42 = @"Summary not found";
    goto LABEL_19;
  }

  if ([messageCopy isRemindMe])
  {
    +[EDRemindMeNotificationController localizedRemindMeNotificationTitle];
  }

  else
  {
    MFLookupLocalizedString();
  }
  v53 = ;
  [v25 setBody:v53];

  [v11 setObject:&__kCFBooleanTrue forKeyedSubscript:MSUserNotificationContentKeyMissingSummary];
  isRemindMe = [messageCopy isRemindMe];
  v55 = @"Summary loading";
  if (isRemindMe)
  {
    v55 = @"Summary for RemindMe will load on unlock";
  }

  v42 = v55;
  v44 = 0;
LABEL_20:
  v45 = MSUserNotificationsLog();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v76 = v42;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Notification Request For Message: %{public}@", buf, 0xCu);
  }

  if ([messageCopy isRemindMe])
  {
    remindMeNotificationsNeedingSummaries = self->_remindMeNotificationsNeedingSummaries;
    v47 = v69;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10009D1AC;
    v69[3] = &unk_100159E00;
    v70 = v44;
    v69[4] = messageCopy;
    [(EFLocked *)remindMeNotificationsNeedingSummaries performWhileLocked:v69];
  }

  else
  {
    notificationsNeedingSummaries = self->_notificationsNeedingSummaries;
    v47 = v66;
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10009D318;
    v66[3] = &unk_100159E28;
    v67 = v44;
    v66[4] = messageCopy;
    v68 = addCopy;
    [(EFLocked *)notificationsNeedingSummaries performWhileLocked:v66];
  }

  [v25 setThreadIdentifier:coalesceThreadID];
  [v25 setUserInfo:v11];
  v49 = [messageCopy isRemindMe] ^ 1;
  if (!controllerCopy)
  {
    v49 = 1;
  }

  if (v49)
  {
    if (controllerCopy && addCopy)
    {
      [controllerCopy addSoundForAccountIfNecessaryForNotificationContent:v25 notificationMessage:messageCopy];
    }
  }

  else
  {
    v50 = MSUserNotificationsLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D51AC(v50);
    }

    [controllerCopy addRemindMeSoundForNotificationContent:v25];
  }

  if (destinations)
  {
    [UNNotificationRequest requestWithIdentifier:notificationID content:v25 trigger:0 destinations:?];
  }

  else
  {
    [UNNotificationRequest requestWithIdentifier:notificationID content:v25 trigger:0];
  }
  v51 = ;

  return v51;
}

- (void)delayedNotificationsPresenter:(id)presenter handleUserNotificationRequest:(id)request notificationMessage:(id)message context:(id)context
{
  requestCopy = request;
  messageCopy = message;
  contextCopy = context;
  v12 = [@"add" isEqual:contextCopy];
  v13 = [@"modify" isEqual:contextCopy];
  content = [requestCopy content];
  userInfo = [content userInfo];
  v16 = [userInfo objectForKeyedSubscript:MSUserNotificationContentKeyMissingSummary];
  bOOLValue = [v16 BOOLValue];

  notificationID = [messageCopy notificationID];
  objc_initWeak(&location, self);
  if (v12)
  {
    systemUserNotificationCenter = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10009D7F8;
    v29[3] = &unk_100159E50;
    v20 = &v32;
    objc_copyWeak(&v32, &location);
    v30 = requestCopy;
    v33 = bOOLValue ^ 1;
    v31 = notificationID;
    [systemUserNotificationCenter addNotificationRequest:v30 withCompletionHandler:v29];
    v21 = &v30;
    v22 = &v31;
LABEL_5:

    objc_destroyWeak(v20);
    goto LABEL_6;
  }

  if (v13)
  {
    systemUserNotificationCenter = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
    content2 = [requestCopy content];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10009DA5C;
    v24[3] = &unk_100159E50;
    v20 = &v27;
    objc_copyWeak(&v27, &location);
    v25 = requestCopy;
    v28 = bOOLValue ^ 1;
    v26 = notificationID;
    [systemUserNotificationCenter replaceContentForRequestWithIdentifier:v26 replacementContent:content2 completionHandler:v24];
    v21 = &v25;
    v22 = &v26;

    goto LABEL_5;
  }

LABEL_6:
  objc_destroyWeak(&location);
}

- (void)resetUserNotificationCenterTopics
{
  queue = [(MFUserNotificationCenterController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009DD20;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)nts_resetUserNotificationCenterTopics
{
  dispatch_assert_queue_V2(self->_queue);
  observer = [(MFUserNotificationCenterController *)self observer];
  activeAccounts = [observer activeAccounts];

  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [activeAccounts count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Generating new topics based on %lu active accounts", buf, 0xCu);
  }

  v6 = [NSSet setWithArray:activeAccounts];
  v7 = [(MFUserNotificationCenterController *)self topicRequestsForAccounts:v6];

  defaultTopicRequests = [(MFUserNotificationCenterController *)self defaultTopicRequests];
  if ([v7 count] && objc_msgSend(defaultTopicRequests, "count"))
  {
    v9 = [v7 setByAddingObjectsFromSet:defaultTopicRequests];

    v7 = v9;
  }

  v10 = MSUserNotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting new NotificationCenter topics: %@", buf, 0xCu);
  }

  systemUserNotificationCenter = [(MFUserNotificationCenterController *)self systemUserNotificationCenter];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009DFC8;
  v13[3] = &unk_100156918;
  v12 = v7;
  v14 = v12;
  [systemUserNotificationCenter setNotificationTopics:v12 withCompletionHandler:v13];
}

- (id)topicRequestsForAccounts:(id)accounts
{
  v3 = [accounts ef_compactMap:&stru_100159E90];

  return v3;
}

- (id)defaultTopicRequests
{
  v3 = objc_alloc_init(NSMutableSet);
  vipReader = [(MFUserNotificationCenterController *)self vipReader];
  hasVIPs = [vipReader hasVIPs];

  if (hasVIPs)
  {
    v6 = MFLookupLocalizedString();
    v7 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicVIP displayName:v6 priority:3 sortIdentifier:@"vip" supportedOptions:5 enabledOptions:5];
    [v3 addObject:v7];
  }

  if ([(MFUserNotificationCenterController *)self hasFavoriteMailboxes])
  {
    v8 = MFLookupLocalizedString();
    v9 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicFavoriteMailboxes displayName:v8 priority:1 sortIdentifier:@"favorites" supportedOptions:4 enabledOptions:0];
    [v3 addObject:v9];
  }

  conversationSubscriptionProvider = [(MFUserNotificationCenterController *)self conversationSubscriptionProvider];
  hasSubscribedConversations = [conversationSubscriptionProvider hasSubscribedConversations];

  if (hasSubscribedConversations)
  {
    v12 = MFLookupLocalizedString();
    v13 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicNotifiedThreads displayName:v12 priority:4 sortIdentifier:@"Thread" supportedOptions:5 enabledOptions:5];
    [v3 addObject:v13];
  }

  v14 = MFLookupLocalizedString();
  v15 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicRemindMe displayName:v14 priority:5 sortIdentifier:@"RemindMe" supportedOptions:7 enabledOptions:7];
  [v3 addObject:v15];

  if (EMBlackPearlIsFeatureEnabled())
  {
    v16 = MFLookupLocalizedString();
    v17 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicPrimary displayName:v16 priority:2 sortIdentifier:@"Primary Inbox" supportedOptions:6 enabledOptions:0];
    [v3 addObject:v17];

    v18 = MFLookupLocalizedString();
    v19 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicPrimaryMessageBadges displayName:v18 priority:2 sortIdentifier:@"Unread Messages in Primary" supportedOptions:5 enabledOptions:1];
    [v3 addObject:v19];

    v20 = MFLookupLocalizedString();
    v21 = [UNNotificationTopicRequest topicRequestWithIdentifier:MSUserNotificationCenterTopicAllMessages displayName:v20 priority:2 sortIdentifier:@"All Unread Messages" supportedOptions:5 enabledOptions:0];
    [v3 addObject:v21];
  }

  return v3;
}

- (BOOL)hasFavoriteMailboxes
{
  favoritesReader = [(MFUserNotificationCenterController *)self favoritesReader];
  hasFavoriteMailboxes = [favoritesReader hasFavoriteMailboxes];

  return hasFavoriteMailboxes;
}

- (void)notificationCenterObserver:(id)observer messagesUpdated:(id)updated flags:(id)flags
{
  updatedCopy = updated;
  flagsCopy = flags;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009E740;
  block[3] = &unk_1001573C0;
  block[4] = self;
  v13 = updatedCopy;
  v14 = flagsCopy;
  v10 = flagsCopy;
  v11 = updatedCopy;
  dispatch_async(queue, block);
}

- (void)notificationCenterObserver:(id)observer messagesDeleted:(id)deleted
{
  deletedCopy = deleted;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009EC04;
  v9[3] = &unk_100158500;
  v9[4] = self;
  v6 = [deletedCopy ef_compactMap:v9];
  v7 = MSUserNotificationsLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *buf = 134349314;
    v11 = v8;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Removing notifications for %{public}lu deleted messages: %{public}@", buf, 0x16u);
  }

  [(MFUserNotificationCenterController *)self removeNotificationsWithIdentifiers:v6];
}

- (void)vipsChangedForNotificationCenterObserver:(id)observer
{
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reloading User Notification Center topics due to VIPs change", v5, 2u);
  }

  [(MFUserNotificationCenterController *)self resetUserNotificationCenterTopics];
}

- (void)notificationCenterObserver:(id)observer removedVIPs:(id)ps
{
  v5 = [(MFUserNotificationCenterController *)self queue:observer];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009ED90;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)conversationFlagsDidChangeForNotificationCenterObserver:(id)observer
{
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reloading User Notification Center topics due to Conversation Flags change", v5, 2u);
  }

  [(MFUserNotificationCenterController *)self resetUserNotificationCenterTopics];
}

- (void)notificationCenterObserver:(id)observer didStopListeningForChangesForAccountIDs:(id)ds
{
  dsCopy = ds;
  v6 = MSUserNotificationsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = dsCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No longer listenting for changes for accounts: %{public}@", buf, 0xCu);
  }

  delayedNotificationPresenter = [(MFUserNotificationCenterController *)self delayedNotificationPresenter];
  [delayedNotificationPresenter removePendingMessagesWithAccountIdentifiers:dsCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [(MFUserNotificationCenterController *)self cancelSummaryRequestsForAccountWithID:*(*(&v12 + 1) + 8 * v11), v12];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)activeAccountsDidChangeForNotificationCenterObserver:(id)observer
{
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Active accounts changes. Will rebuild topics and remove stale notifictions", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009F638;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)controller:(id)controller messageTimerFired:(id)fired
{
  firedCopy = fired;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firedCopy;
    v7 = MSUserNotificationsLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [v6 ef_publicDescription];
      *buf = 138543362;
      v14 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Remind Me: messageTimerFired message:%{public}@", buf, 0xCu);
    }

    v9 = objc_alloc_init(_MFUserNotificationCenterControllerContext);
    [(_MFUserNotificationCenterControllerContext *)v9 setIsRemindMe:1];
    v10 = +[NSDate now];
    [(_MFUserNotificationCenterControllerContext *)v9 setRemindMeDate:v10];

    v12 = v6;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [(MFUserNotificationCenterController *)self notifyMessagesAdded:v11 context:v9];
  }
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v9 = [EFProcessTransaction transactionWithDescription:@"Handle Notification Action Transaction"];
  notification = [responseCopy notification];
  actionIdentifier = [responseCopy actionIdentifier];
  v12 = MSUserNotificationsLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543874;
    v27 = responseCopy;
    v28 = 2114;
    v29 = notification;
    v30 = 2114;
    v31 = actionIdentifier;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Did receive response %{public}@ for notification: %{public}@ and action: %{public}@", &v26, 0x20u);
  }

  notification2 = [responseCopy notification];
  request = [notification2 request];
  content = [request content];
  userInfo = [content userInfo];

  v17 = [userInfo objectForKeyedSubscript:MSUserNotificationContentKeyMessageReference];
  v18 = [NSURL URLWithString:v17];

  if (v18)
  {
    [(MFUserNotificationCenterController *)self processNotificationActionForMessageReferenceURL:v18 actionIdentifier:actionIdentifier];
  }

  else
  {
    v19 = MSUserNotificationsLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1000D52CC(responseCopy, v19, v20, v21, v22, v23, v24, v25);
    }
  }

  [v9 invalidate];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

- (void)addSettingsObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_settingsLock);
  settingsObservers = [(MFUserNotificationCenterController *)self settingsObservers];
  [settingsObservers addObject:observerCopy];

  currentSettingsByTopic = [(MFUserNotificationCenterController *)self currentSettingsByTopic];
  os_unfair_lock_unlock(&self->_settingsLock);
  if (currentSettingsByTopic)
  {
    [observerCopy userNotificationCenterSettingsDidChange:currentSettingsByTopic];
  }
}

- (void)removeSettingsObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_settingsLock);
  settingsObservers = [(MFUserNotificationCenterController *)self settingsObservers];
  [settingsObservers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_settingsLock);
}

- (void)_loadCurrentSettingsAndNotifyObservers
{
  objc_initWeak(&location, self);
  systemUserNotificationCenter = self->_systemUserNotificationCenter;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10009FD9C;
  v7[3] = &unk_100159F20;
  objc_copyWeak(&v8, &location);
  [(MFSystemUserNotificationCenter *)systemUserNotificationCenter getNotificationSettingsWithCompletionHandler:v7];
  v4 = self->_systemUserNotificationCenter;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10009FF18;
  v5[3] = &unk_1001574D8;
  objc_copyWeak(&v6, &location);
  [(MFSystemUserNotificationCenter *)v4 getNotificationSettingsForTopicsWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)_logCurrentSettings
{
  os_unfair_lock_lock(&self->_settingsLock);
  v3 = self->_currentSettingsByTopic;
  os_unfair_lock_unlock(&self->_settingsLock);
  v4 = MSUserNotificationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(MFUserNotificationCenterController *)self _currentSettingsStringForSettingsByTopic:v3];
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v6, 0xCu);
  }
}

- (id)_currentSettingsStringForSettingsByTopic:(id)topic
{
  topicCopy = topic;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A0290;
  v6[3] = &unk_100159F48;
  v4 = [[NSMutableString alloc] initWithString:@"User Notification Settings\n"];
  v7 = v4;
  [topicCopy enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (id)coreAnalyticsPeriodicEvent
{
  os_unfair_lock_lock(&self->_settingsLock);
  v3 = [(NSDictionary *)self->_currentSettingsByTopic copy];
  os_unfair_lock_unlock(&self->_settingsLock);
  v4 = [(MFUserNotificationCenterController *)self _coreAnaltyicsForSettings:v3];

  return v4;
}

- (id)_coreAnaltyicsForSettings:(id)settings
{
  v103 = 0;
  v104 = &v103;
  v105 = 0x2020000000;
  v106 = 0;
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x2020000000;
  v98 = 0;
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000A0D7C;
  v26[3] = &unk_100159F70;
  v26[4] = self;
  v26[5] = &v83;
  v26[6] = &v79;
  v26[7] = &v75;
  v26[8] = &v71;
  v26[9] = &v35;
  v26[10] = &v67;
  v26[11] = &v63;
  v26[12] = &v59;
  v26[13] = &v55;
  v26[14] = &v27;
  v26[15] = &v51;
  v26[16] = &v47;
  v26[17] = &v43;
  v26[18] = &v39;
  v26[19] = &v31;
  v26[20] = &v103;
  v26[21] = &v99;
  v26[22] = &v95;
  v26[23] = &v91;
  v26[24] = &v87;
  [settings enumerateKeysAndObjectsUsingBlock:v26];
  v107[0] = @"totalAccounts";
  v108[0] = [NSNumber numberWithInteger:v104[3]];
  v107[1] = @"accountsWithAlertsEnabled";
  v25 = v108[0];
  v24 = [NSNumber numberWithInteger:v100[3]];
  v108[1] = v24;
  v107[2] = @"accountsWithLockScreenEnabled";
  v23 = [NSNumber numberWithInteger:v96[3]];
  v108[2] = v23;
  v107[3] = @"accountsWithSoundEnabled";
  v22 = [NSNumber numberWithInteger:v92[3]];
  v108[3] = v22;
  v107[4] = @"accountsWithBadgesEnabled";
  v21 = [NSNumber numberWithInteger:v88[3]];
  v108[4] = v21;
  v107[5] = @"hasVIP";
  v20 = [NSNumber numberWithBool:*(v36 + 24)];
  v108[5] = v20;
  v107[6] = @"vipAlertsEnabled";
  v19 = [NSNumber numberWithBool:*(v84 + 24)];
  v108[6] = v19;
  v107[7] = @"vipLockScreenEnabled";
  v18 = [NSNumber numberWithBool:*(v80 + 24)];
  v108[7] = v18;
  v107[8] = @"vipSoundsEnabled";
  v17 = [NSNumber numberWithBool:*(v76 + 24)];
  v108[8] = v17;
  v107[9] = @"vipBadgesEnabled";
  v16 = [NSNumber numberWithBool:*(v72 + 24)];
  v108[9] = v16;
  v107[10] = @"hasNotifyThreads";
  v15 = [NSNumber numberWithBool:*(v28 + 24)];
  v108[10] = v15;
  v107[11] = @"notifyThreadAlertsEnabled";
  v3 = [NSNumber numberWithBool:*(v68 + 24)];
  v108[11] = v3;
  v107[12] = @"notifyThreadsLockScreenEnabled";
  v4 = [NSNumber numberWithBool:*(v64 + 24)];
  v108[12] = v4;
  v107[13] = @"notifyThreadSoundsEnabled";
  v5 = [NSNumber numberWithBool:*(v60 + 24)];
  v108[13] = v5;
  v107[14] = @"notifyThreadBadgesEnabled";
  v6 = [NSNumber numberWithBool:*(v56 + 24)];
  v108[14] = v6;
  v107[15] = @"hasFavorites";
  v7 = [NSNumber numberWithBool:*(v32 + 24)];
  v108[15] = v7;
  v107[16] = @"favoritesAlertsEnabled";
  v8 = [NSNumber numberWithBool:*(v52 + 24)];
  v108[16] = v8;
  v107[17] = @"favoritesLockScreenEnabled";
  v9 = [NSNumber numberWithBool:*(v48 + 24)];
  v108[17] = v9;
  v107[18] = @"favoritesSoundsEnabled";
  v10 = [NSNumber numberWithBool:*(v44 + 24)];
  v108[18] = v10;
  v107[19] = @"favoritesBadgesEnabled";
  v11 = [NSNumber numberWithBool:*(v40 + 24)];
  v108[19] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:20];

  v13 = [[EMCoreAnalyticsEvent alloc] initWithEventName:@"com.apple.mail.usernotifications.settings" collectionData:v12];
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);
  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v103, 8);

  return v13;
}

- (void)processNotificationActionForMessageReferenceURL:(id)l actionIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  v8 = [(MFUserNotificationCenterController *)self _swipeActionForNotificationActionIdentifier:identifierCopy];
  messagePersistence = [(MFUserNotificationCenterController *)self messagePersistence];
  v10 = [messagePersistence messageObjectIDForURL:lCopy];

  messagePersistence2 = [(MFUserNotificationCenterController *)self messagePersistence];
  v47 = v10;
  v12 = [NSArray arrayWithObjects:&v47 count:1];
  v13 = [messagePersistence2 persistedMessagesForMessageObjectIDs:v12 requireProtectedData:0 temporarilyUnavailableMessageObjectIDs:0];

  if ([v13 count])
  {
    if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 8)
    {
      firstObject = [v13 firstObject];
      account = [firstObject account];
      v16 = account;
      if (v8 == 9)
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }

      v18 = [account mailboxForType:v17];
      messageChangeManager = [(MFUserNotificationCenterController *)self messageChangeManager];
      v20 = [v18 URL];
      v21 = [messageChangeManager moveMessages:v13 destinationMailboxURL:v20 userInitiated:0];

      v22 = MSUserNotificationsLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = ECNSStringFromMailboxMailboxType();
        v43 = 138543618;
        v44 = v23;
        v45 = 2114;
        v46 = lCopy;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "process notification %{public}@ action for messageID: %{public}@.", &v43, 0x16u);
      }

      goto LABEL_20;
    }

    if (v8 == 6)
    {
      messageChangeManager2 = [(MFUserNotificationCenterController *)self messageChangeManager];
      v35 = +[ECMessageFlagChange setFlagged];
      v36 = [messageChangeManager2 applyFlagChange:v35 toMessages:v13];

      firstObject = MSUserNotificationsLog();
      if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v43 = 138543362;
      v44 = lCopy;
      v33 = "process notification flag action for messageID: %{public}@.";
      goto LABEL_17;
    }

    if (v8 == 2)
    {
      messageChangeManager3 = [(MFUserNotificationCenterController *)self messageChangeManager];
      v31 = +[ECMessageFlagChange setRead];
      v32 = [messageChangeManager3 applyFlagChange:v31 toMessages:v13];

      firstObject = MSUserNotificationsLog();
      if (!os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      v43 = 138543362;
      v44 = lCopy;
      v33 = "process notification mark as read action for messageID: %{public}@.";
LABEL_17:
      _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_DEFAULT, v33, &v43, 0xCu);
      goto LABEL_20;
    }

    firstObject = MSUserNotificationsLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      sub_1000D5338(identifierCopy, firstObject, v37, v38, v39, v40, v41, v42);
    }
  }

  else
  {
    firstObject = MSUserNotificationsLog();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      sub_1000D53A4(lCopy, firstObject, v24, v25, v26, v27, v28, v29);
    }
  }

LABEL_20:
}

- (int64_t)_swipeActionForNotificationActionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = MSMailNotificationActionIdentifierPrefix;
  if ([identifierCopy hasPrefix:MSMailNotificationActionIdentifierPrefix])
  {
    v5 = [identifierCopy substringFromIndex:{objc_msgSend(v4, "length")}];
    v6 = [MFTriageActionUtilities triageActionForActionKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)persistenceDidInitializeConversationSubscriptionProvider
{
  v3 = MSUserNotificationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Generating new topics due to conversation provider initialization", v4, 2u);
  }

  [(MFUserNotificationCenterController *)self resetUserNotificationCenterTopics];
}

- (void)persistenceDidUpdateProperties:(id)properties message:(id)message generationWindow:(id)window
{
  propertiesCopy = properties;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [propertiesCopy containsObject:ECMessagePropertySummary];
    v10 = [propertiesCopy containsObject:EDPersistedMessagePropertyGeneratedSummary];
    v11 = v10;
    if (v9)
    {
      [(MFUserNotificationCenterController *)self _persistenceDidUpdateSummaryForMessage:messageCopy];
      if ((v11 & 1) == 0)
      {
LABEL_9:
        notificationAnalyticsLogger = [(MFUserNotificationCenterController *)self notificationAnalyticsLogger];
        notificationID = [messageCopy notificationID];
        [notificationAnalyticsLogger messageSummaryAddedForNotificationID:notificationID isGeneratedSummary:v11];

        goto LABEL_10;
      }

LABEL_6:
      v12 = MSUserNotificationsLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        notificationID2 = [messageCopy notificationID];
        *buf = 138543362;
        v21 = notificationID2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Generated summary updated for %{public}@", buf, 0xCu);
      }

      delayedNotificationPresenter = [(MFUserNotificationCenterController *)self delayedNotificationPresenter];
      notificationID3 = [messageCopy notificationID];
      v19 = notificationID3;
      v16 = [NSArray arrayWithObjects:&v19 count:1];
      [delayedNotificationPresenter immediatelyProcessPendingMessagesWithIdentifiers:v16];

      goto LABEL_9;
    }

    if (v10)
    {
      goto LABEL_6;
    }
  }

LABEL_10:
}

- (void)_persistenceDidUpdateSummaryForMessage:(id)message
{
  messageCopy = message;
  notificationID = [messageCopy notificationID];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  notificationsNeedingSummaries = self->_notificationsNeedingSummaries;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000A1C54;
  v21[3] = &unk_100159F98;
  v23 = &v24;
  v7 = notificationID;
  v22 = v7;
  [(EFLocked *)notificationsNeedingSummaries performWhileLocked:v21];
  summaryClientsByReference = self->_summaryClientsByReference;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000A1D40;
  v18[3] = &unk_100159FC0;
  v9 = messageCopy;
  v19 = v9;
  v20 = &v24;
  [(EFLocked *)summaryClientsByReference performWhileLocked:v18];
  if (*(v25 + 24) == 1)
  {
    v10 = MSUserNotificationsLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      summary = [v9 summary];
      v12 = [summary length];
      ef_publicDescription = [v9 ef_publicDescription];
      *buf = 67109378;
      v30 = v12;
      v31 = 2114;
      v32 = ef_publicDescription;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Persistence did update summary=%u, message=%{public}@", buf, 0x12u);
    }

    v28 = v9;
    v14 = [NSArray arrayWithObjects:&v28 count:1];
    [(MFUserNotificationCenterController *)self notifyMessagesAdded:v14 isSummaryDownload:1];
  }

  else
  {
    v14 = MSUserNotificationsLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [v9 summary];
      v16 = [summary2 length];
      ef_publicDescription2 = [v9 ef_publicDescription];
      *buf = 67109378;
      v30 = v16;
      v31 = 2114;
      v32 = ef_publicDescription2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Persistence did update summary=%u, message=%{public}@, but there were no notifications needing summaries", buf, 0x12u);
    }
  }

  _Block_object_dispose(&v24, 8);
}

- (void)persistenceDidChangeGlobalMessageID:(int64_t)d orConversationID:(int64_t)iD message:(id)message generationWindow:(id)window
{
  messageCopy = message;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1EB8;
  block[3] = &unk_100157098;
  selfCopy = self;
  iDCopy = iD;
  v12 = messageCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)persistenceDidChangeReadLaterDate:(id)date messages:(id)messages changeIsRemote:(BOOL)remote generationWindow:(id)window
{
  messagesCopy = messages;
  v10 = MSUserNotificationsLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v17 = 138543618;
    v18 = v11;
    v19 = 2048;
    v20 = [messagesCopy count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ message.count:%ld", &v17, 0x16u);
  }

  v12 = messagesCopy;
  v13 = v12;
  if (!date)
  {
    v14 = [v12 ef_compactMap:&stru_10015A008];
    v15 = MSUserNotificationsLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      v17 = 134349314;
      v18 = v16;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing Remind Me notifications for %{public}lu messages: %{public}@", &v17, 0x16u);
    }

    [(MFUserNotificationCenterController *)self removeNotificationsWithIdentifiers:v14];
  }
}

- (void)_networkConfigurationChanged:(id)changed
{
  v4 = +[MFNetworkController sharedInstance];
  isDataAvailable = [v4 isDataAvailable];

  if (isDataAvailable)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    notificationsNeedingSummaries = self->_notificationsNeedingSummaries;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000A24F0;
    v7[3] = &unk_10015A030;
    v7[4] = &v8;
    [(EFLocked *)notificationsNeedingSummaries performWhileLocked:v7];
    if (*(v9 + 24) == 1)
    {
      [(MFUserNotificationCenterController *)self _performCleanup];
    }

    _Block_object_dispose(&v8, 8);
  }
}

- (void)requestSummaryWithClient:(id)client
{
  clientCopy = client;
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [clientCopy ef_publicDescription];
    *buf = 138543362;
    v15 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requestSummaryWithClient=%{public}@", buf, 0xCu);
  }

  summaryClientsByReference = self->_summaryClientsByReference;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000A27E4;
  v12[3] = &unk_10015A058;
  v8 = clientCopy;
  v13 = v8;
  [(EFLocked *)summaryClientsByReference performWhileLocked:v12];
  message = [v8 message];
  account = [message account];
  v11 = [MessageBodyLoader loaderForAccount:account];
  [v11 addSingleMessageClient:v8];
}

- (void)requestSummaryForMessage:(id)message
{
  messageCopy = message;
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [messageCopy ef_publicDescription];
    v8 = 138543362;
    v9 = ef_publicDescription;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requestSummaryForMessage=%{public}@", &v8, 0xCu);
  }

  v7 = [[_MFUserNotificationCenterSummaryClient alloc] initWithObserver:self message:messageCopy];
  [(MFUserNotificationCenterController *)self requestSummaryWithClient:v7];
}

- (void)_nts_invalidateClient:(id)client summaryClientsByReference:(id)reference
{
  clientCopy = client;
  referenceCopy = reference;
  message = [clientCopy message];
  mf_externalReference = [message mf_externalReference];

  [clientCopy setObserver:0];
  message2 = [clientCopy message];
  account = [message2 account];
  v10 = [MessageBodyLoader loaderForAccount:account];
  [v10 removeSingleMessageClient:clientCopy];

  if (mf_externalReference)
  {
    [referenceCopy removeObjectForKey:mf_externalReference];
  }
}

- (void)cancelSummaryRequestForMessageWithExternalReference:(id)reference
{
  referenceCopy = reference;
  summaryClientsLock = [(MFUserNotificationCenterController *)self summaryClientsLock];
  [summaryClientsLock lock];

  summaryClientsByReference = self->_summaryClientsByReference;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2BEC;
  v8[3] = &unk_10015A080;
  v7 = referenceCopy;
  v9 = v7;
  selfCopy = self;
  [(EFLocked *)summaryClientsByReference performWhileLocked:v8];
}

- (void)cancelSummaryRequestsForAccountWithID:(id)d
{
  dCopy = d;
  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cancelSummaryRequestsForAccountWithID=%{public}@", buf, 0xCu);
  }

  summaryClientsByReference = self->_summaryClientsByReference;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2DC0;
  v8[3] = &unk_10015A080;
  v7 = dCopy;
  v9 = v7;
  selfCopy = self;
  [(EFLocked *)summaryClientsByReference performWhileLocked:v8];
}

- (void)updateMessage:(id)message withSummary:(id)summary
{
  messageCopy = message;
  summaryClientsByReference = self->_summaryClientsByReference;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A3024;
  v8[3] = &unk_10015A058;
  v9 = messageCopy;
  v7 = messageCopy;
  [(EFLocked *)summaryClientsByReference performWhileLocked:v8];
}

- (void)_performCleanupOnStartup
{
  if ([(MFUserNotificationCenterController *)self _protectedDataAvailable])
  {

    [(MFUserNotificationCenterController *)self _performCleanup];
  }

  else
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"_performCleanupOnStartup" name:MailMessageLibraryDidFinishReconciliation object:0];
  }
}

- (void)_performCleanup
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A31CC;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_performCleanupForRemindMeNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = sub_1000A33C0;
  v10[4] = sub_1000A33D0;
  v11 = objc_alloc_init(NSMutableArray);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A33D8;
  block[3] = &unk_10015A110;
  block[4] = self;
  v8 = notificationsCopy;
  v9 = v10;
  v6 = notificationsCopy;
  dispatch_async(queue, block);

  _Block_object_dispose(v10, 8);
}

- (id)_libraryMessagesForMessageReferences:(id)references
{
  v3 = [references ef_compactMap:&stru_10015A130];
  v4 = [MFMessageCriterion orCompoundCriterionWithCriteria:v3];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:v4 options:6297663];

  return v6;
}

- (void)_performCleanupForNotifications:(id)notifications
{
  notificationsCopy = notifications;
  selfCopy = self;
  if (![(MFUserNotificationCenterController *)self _protectedDataAvailable])
  {
    v4 = MSUserNotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not performing cleanup. Protected data is not available.", buf, 2u);
    }
  }

  v5 = MSUserNotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Performing cleanup", buf, 2u);
  }

  v35 = objc_alloc_init(NSMutableArray);
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = objc_alloc_init(NSMutableSet);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = notificationsCopy;
  v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v8)
  {
    v9 = *v41;
    v10 = MSUserNotificationContentKeyMessageReference;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        request = [v12 request];
        identifier = [request identifier];

        [v7 addObject:identifier];
        request2 = [v12 request];
        content = [request2 content];
        userInfo = [content userInfo];

        [v6 setObject:userInfo forKeyedSubscript:identifier];
        v18 = [userInfo objectForKeyedSubscript:v10];
        [v35 ef_addOptionalObject:v18];
      }

      v8 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v8);
  }

  [(MFUserNotificationCenterController *)selfCopy _libraryMessagesForMessageReferences:v35];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v34 = v37 = 0u;
  v19 = [v34 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v19)
  {
    v20 = *v37;
    v32 = MSUserNotificationContentKeyMissingSummary;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v34);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        notificationID = [v22 notificationID];
        if (([v22 read] & 1) == 0 && (objc_msgSend(v22, "deleted") & 1) == 0)
        {
          [v7 removeObject:notificationID];
          v24 = [v6 objectForKeyedSubscript:notificationID];
          v25 = [v24 objectForKeyedSubscript:v32];
          bOOLValue = [v25 BOOLValue];

          if (bOOLValue)
          {
            [(MFUserNotificationCenterController *)selfCopy requestSummaryForMessage:v22];
          }
        }
      }

      v19 = [v34 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v19);
  }

  if ([v7 count])
  {
    v27 = MSUserNotificationsLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v7 count];
      *buf = 134218242;
      v45 = v28;
      v46 = 2114;
      v47 = v7;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Removing %lu stale notifications during cleanup. %{public}@", buf, 0x16u);
    }

    allObjects = [v7 allObjects];
    [(MFUserNotificationCenterController *)selfCopy removeNotificationsWithIdentifiers:allObjects];
  }
}

- (BOOL)_protectedDataAvailable
{
  v2 = +[MFMailMessageLibrary defaultInstance];
  protectedDataAvailability = [v2 protectedDataAvailability];

  return protectedDataAvailability == 0;
}

- (void)contentProtectionStateChanged:(int64_t)changed previousState:(int64_t)state
{
  if (!changed)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1000A33C0;
    v11 = sub_1000A33D0;
    v12 = 0;
    remindMeNotificationsNeedingSummaries = self->_remindMeNotificationsNeedingSummaries;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000A42BC;
    v6[3] = &unk_10015A158;
    v6[4] = &v7;
    [(EFLocked *)remindMeNotificationsNeedingSummaries performWhileLocked:v6, state];
    if ([v8[5] count])
    {
      [(MFUserNotificationCenterController *)self _performCleanupForRemindMeNotifications:v8[5]];
    }

    _Block_object_dispose(&v7, 8);
  }
}

@end