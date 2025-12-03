@interface BMDaemon
+ (BMDSLGraphValidator)DSLValidator;
+ (void)_donateDeviceBootSessionEventsWithBootDate:(id)date queue:(id)queue;
+ (void)_donateDeviceMetadataWithBootDate:(id)date;
+ (void)_registerWithSpaceAttributionWithActivity:(id)activity domain:(unint64_t)domain completion:(id)completion;
+ (void)donateLaunchEventsWithQueue:(id)queue;
+ (void)pruneFeatureStoreWithActivity:(id)activity;
+ (void)prunePrivateStreamDirectory:(id)directory maxAge:(double)age maxStreamSize:(unint64_t)size activity:(id)activity;
+ (void)prunePublicStreamsWithActivity:(id)activity;
+ (void)pruneRestrictedStreamsInDomain:(unint64_t)domain account:(id)account activity:(id)activity protectionClass:(unint64_t)class;
+ (void)pruneRestrictedStreamsWithActivity:(id)activity protectionClass:(unint64_t)class;
+ (void)pruneTemporaryFiles;
+ (void)pruneTemporaryFilesInDirectory:(id)directory;
+ (void)registerWithSpaceAttributionWithActivity:(id)activity completion:(id)completion;
+ (void)registerXPCActivities;
+ (void)runLaunchTasks;
- (BMDaemon)initWithQueue:(id)queue eventReporter:(id)reporter;
- (id)_bookmarkStorage;
- (id)_publisherServer;
- (void)_subscribeStreamsForViews;
- (void)_subscribeSystemStream:(id)stream subscriptionIdentifier:(id)identifier useCase:(id)case;
- (void)eventsPrunedWithStreamIdentifier:(id)identifier account:(id)account remoteName:(id)name reason:(unint64_t)reason;
- (void)publisherServer:(id)server didAddSubscription:(id)subscription;
- (void)publisherServer:(id)server didClaimSubscription:(id)subscription;
- (void)publisherServer:(id)server didRemoveSubscription:(id)subscription;
- (void)sendEventWithStreamIdentifier:(id)identifier timestamp:(id)timestamp account:(id)account remoteName:(id)name storeEvent:(id)event;
@end

@implementation BMDaemon

- (id)_publisherServer
{
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  serviceName = [currentConnection serviceName];

  if (!serviceName)
  {
    isAgent = [objc_opt_class() isAgent];
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [(BMDaemon *)isAgent _publisherServer];
    }

    if (!isAgent)
    {
      goto LABEL_13;
    }

LABEL_12:
    userPublisherServer = self->_userPublisherServer;
LABEL_14:
    v12 = userPublisherServer;
    goto LABEL_15;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(BMDaemon *)currentConnection _publisherServer];
  }

  serviceName2 = [currentConnection serviceName];
  v8 = [serviceName2 isEqualToString:*MEMORY[0x1E698E8F0]];

  if (v8)
  {
    goto LABEL_12;
  }

  serviceName3 = [currentConnection serviceName];
  v10 = [serviceName3 isEqualToString:*MEMORY[0x1E698E8D8]];

  if (v10)
  {
LABEL_13:
    userPublisherServer = self->_systemPublisherServer;
    goto LABEL_14;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    [(BMDaemon *)currentConnection _publisherServer];
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)_bookmarkStorage
{
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  userBookmarkStorage = self->_userBookmarkStorage;

  return userBookmarkStorage;
}

void __36__BMDaemon_setUpNotificationHandler__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (MEMORY[0x1865F7D40]() == MEMORY[0x1E69E9E80])
  {
    v3 = objc_autoreleasePoolPush();
    string = xpc_dictionary_get_string(v2, *MEMORY[0x1E69E9E40]);
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v6 = os_transaction_create();
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_INFO, "Received notifyd notification: %@", &v20, 0xCu);
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.Preferences.ResetPrivacyWarningsNotification"];
    v9 = [v5 isEqualToString:v8];

    if (v9)
    {
      +[BMLibraryStreamsPruner pruneForResetPrivacyAndLocationWarnings];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.siri.history.deletion.requested"];
      v11 = [v5 isEqualToString:v10];

      if (v11)
      {
        +[BMLibraryStreamsPruner pruneSiriAndDictationHistory];
      }

      else
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AFAssistantEnablementDidChangeDarwinNotification"];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          if (!CFPreferencesGetAppBooleanValue(@"Assistant Enabled", @"com.apple.assistant.support", 0))
          {
            +[BMLibraryStreamsPruner pruneSiriDisabled];
          }
        }

        else if ([v5 isEqualToString:@"com.apple.suggestions.settingsChanged"])
        {
          if (+[BMDaemon isAgentOrEmbedded])
          {
            v14 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
            v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
            [BMLibraryStreamsPruner pruneLearnFromThisAppDisabled:v15];
          }
        }

        else
        {
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"com.apple.TextInput.RemoveAllDynamicDictionariesNotification"];
          v17 = [v5 isEqualToString:v16];

          if (v17)
          {
            +[BMLibraryStreamsPruner pruneForResetKeyboardDictionary];
          }
        }
      }
    }

    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = string;
      _os_log_impl(&dword_1848EE000, v18, OS_LOG_TYPE_INFO, "--- handled event %s ---", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
  }

  v19 = *MEMORY[0x1E69E9840];
}

+ (BMDSLGraphValidator)DSLValidator
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = BiomeLibraryAndInternalLibraryNode();
  allValidKeyPaths = [v2 allValidKeyPaths];
  legacyValidKeyPaths = [MEMORY[0x1E698E898] legacyValidKeyPaths];
  v5 = [allValidKeyPaths setByAddingObjectsFromSet:legacyValidKeyPaths];

  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = +[BMDSLStreamPublisher name];
  name = [MEMORY[0x1E698E890] name];
  name2 = [MEMORY[0x1E698E8B8] name];
  name3 = [MEMORY[0x1E698E8B0] name];
  v11 = [v6 initWithObjects:{v7, name, name2, name3, 0}];

  v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1EF3091D0, &unk_1EF3091E8, 0}];
  v13 = objc_alloc(MEMORY[0x1E695DF90]);
  legacyStreamClassMapping = [MEMORY[0x1E698E898] legacyStreamClassMapping];
  v15 = [v13 initWithDictionary:legacyStreamClassMapping];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = BiomeLibraryAndInternalLibraryNode();
  allValidEventClasses = [v16 allValidEventClasses];

  v18 = [allValidEventClasses countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(allValidEventClasses);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        v23 = NSStringFromClass(v22);
        [v15 setObject:v22 forKeyedSubscript:v23];
      }

      v19 = [allValidEventClasses countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v19);
  }

  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  [v15 setObject:v24 forKeyedSubscript:v26];

  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  [v15 setObject:v27 forKeyedSubscript:v29];

  v30 = objc_alloc(MEMORY[0x1E698E898]);
  v31 = [v15 copy];
  v32 = [v30 initWithValidKeyPaths:v5 allowedOperations:v11 allowedStreamTypes:v12 eventStreamClassMapping:v31];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (BMDaemon)initWithQueue:(id)queue eventReporter:(id)reporter
{
  v69 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  reporterCopy = reporter;
  dispatch_assert_queue_V2(queueCopy);
  v67.receiver = self;
  v67.super_class = BMDaemon;
  v9 = [(BMDaemon *)&v67 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_eventReporter, reporter);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.biomed.background", v11);
    internalQueue = v10->_internalQueue;
    v10->_internalQueue = v12;

    v14 = MEMORY[0x1E698E898];
    v15 = +[BMDaemon DSLValidator];
    [v14 setCurrentProcessValidator:v15];

    v16 = [BMComputePublisherStorage alloc];
    v17 = *MEMORY[0x1E698E948];
    v18 = [(BMComputePublisherStorage *)v16 initWithUseCase:*MEMORY[0x1E698E948] domain:0 isClient:0];
    userBookmarkStorage = v10->_userBookmarkStorage;
    v10->_userBookmarkStorage = v18;

    [(BMComputePublisherStorage *)v10->_userBookmarkStorage initializeBiomeDSLDirectoryForBootSession];
    v20 = [[BMComputePublisherStorage alloc] initWithUseCase:v17 domain:1 isClient:0];
    systemBookmarkStorage = v10->_systemBookmarkStorage;
    v10->_systemBookmarkStorage = v20;

    [(BMComputePublisherStorage *)v10->_systemBookmarkStorage initializeBiomeDSLDirectoryForBootSession];
    v22 = [[BMComputeSubscriptionSubstreamManager alloc] initWithQueue:v10->_queue];
    subscriptionSubstreamManager = v10->_subscriptionSubstreamManager;
    v10->_subscriptionSubstreamManager = v22;

    v24 = [[BMComputeSourceServer alloc] initWithQueue:queueCopy domain:0 source:v10];
    userSourceServer = v10->_userSourceServer;
    v10->_userSourceServer = v24;

    v26 = [[BMComputePublisherServer alloc] initWithQueue:queueCopy domain:0 delegate:v10];
    p_userPublisherServer = &v10->_userPublisherServer;
    userPublisherServer = v10->_userPublisherServer;
    v10->_userPublisherServer = v26;

    v29 = [[BMComputeSourceServer alloc] initWithQueue:queueCopy domain:1 source:v10];
    systemSourceServer = v10->_systemSourceServer;
    v10->_systemSourceServer = v29;

    v31 = [[BMComputePublisherServer alloc] initWithQueue:queueCopy domain:1 delegate:v10];
    systemPublisherServer = v10->_systemPublisherServer;
    v10->_systemPublisherServer = v31;

    v33 = objc_opt_new();
    activeSystemSubscriptionIdentifiers = v10->_activeSystemSubscriptionIdentifiers;
    v10->_activeSystemSubscriptionIdentifiers = v33;

    v35 = objc_opt_new();
    subscribedSystemStreams = v10->_subscribedSystemStreams;
    v10->_subscribedSystemStreams = v35;

    v66[0] = 0;
    v66[1] = v66;
    v66[2] = 0x2020000000;
    v37 = v10->_userPublisherServer == 0;
    if (v10->_systemPublisherServer)
    {
      v38 = (*p_userPublisherServer != 0) + 1;
    }

    else
    {
      v38 = *p_userPublisherServer != 0;
    }

    v66[3] = v38;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__BMDaemon_initWithQueue_eventReporter___block_invoke;
    aBlock[3] = &unk_1E6E52C18;
    v65 = v66;
    v39 = v10;
    v64 = v39;
    v40 = _Block_copy(aBlock);
    v41 = v10->_systemPublisherServer;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __40__BMDaemon_initWithQueue_eventReporter___block_invoke_2;
    v60[3] = &unk_1E6E52C40;
    v42 = v39;
    v61 = v42;
    v43 = v40;
    v62 = v43;
    [(BMComputePublisherServer *)v41 activateWithCompletion:v60];
    v44 = v10->_userPublisherServer;
    v54 = MEMORY[0x1E69E9820];
    v55 = 3221225472;
    v56 = __40__BMDaemon_initWithQueue_eventReporter___block_invoke_18;
    v57 = &unk_1E6E52C40;
    v45 = v42;
    v58 = v45;
    v46 = v43;
    v59 = v46;
    [(BMComputePublisherServer *)v44 activateWithCompletion:&v54];
    if ([BMDaemon isAgent:v54])
    {
      +[BMDaemon BiomeAgentLaunchNotification];
    }

    else
    {
      +[BMDaemon biomedLaunchNotification];
    }
    v47 = ;
    v48 = v47;
    v49 = notify_post([v47 UTF8String]);
    if (v49)
    {
      v50 = __biome_log_for_category();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v49];
        [(BMDaemon *)v47 initWithQueue:v51 eventReporter:buf, v50];
      }
    }

    [(BMDaemon *)v45 _subscribeStreamsForViews];

    _Block_object_dispose(v66, 8);
  }

  v52 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t __40__BMDaemon_initWithQueue_eventReporter___block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  v2 = *(v1 + 24) - 1;
  *(v1 + 24) = v2;
  if (!v2)
  {
    return [*(*(result + 32) + 32) initialCheckinsComplete];
  }

  return result;
}

uint64_t __40__BMDaemon_initWithQueue_eventReporter___block_invoke_2(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__BMDaemon_initWithQueue_eventReporter___block_invoke_2_cold_1(v2);
  }

  [*(*(a1 + 32) + 80) activate];
  return (*(*(a1 + 40) + 16))();
}

uint64_t __40__BMDaemon_initWithQueue_eventReporter___block_invoke_18(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__BMDaemon_initWithQueue_eventReporter___block_invoke_18_cold_1(v2);
  }

  [*(*(a1 + 32) + 72) activate];
  return (*(*(a1 + 40) + 16))();
}

- (void)_subscribeStreamsForViews
{
  v22 = *MEMORY[0x1E69E9840];
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[BMDaemon isAgent];
  v5 = 96;
  if (v4)
  {
    v5 = 88;
  }

  subscriptionMarkerManager = [*(&self->super.isa + v5) subscriptionMarkerManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = +[_TtC12BiomeStreams21BMDatabaseInitializer viewSubscribedStreams];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&dword_1848EE000, v13, OS_LOG_TYPE_INFO, "Adding subscription marker for view subscribed stream: %@", buf, 0xCu);
        }

        [subscriptionMarkerManager addSubscriptionWithStreamIdentifier:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_subscribeSystemStream:(id)stream subscriptionIdentifier:(id)identifier useCase:(id)case
{
  streamCopy = stream;
  identifierCopy = identifier;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  identifier = [streamCopy identifier];
  subscribedSystemStreams = [(BMDaemon *)self subscribedSystemStreams];
  v12 = [subscribedSystemStreams objectForKeyedSubscript:identifier];

  if (!v12)
  {
    v13 = objc_opt_new();
    subscribedSystemStreams2 = [(BMDaemon *)self subscribedSystemStreams];
    [subscribedSystemStreams2 setObject:v13 forKeyedSubscript:identifier];
  }

  subscribedSystemStreams3 = [(BMDaemon *)self subscribedSystemStreams];
  v16 = [subscribedSystemStreams3 objectForKeyedSubscript:identifier];
  [v16 addObject:identifierCopy];

  activeSystemSubscriptionIdentifiers = [(BMDaemon *)self activeSystemSubscriptionIdentifiers];
  v18 = [activeSystemSubscriptionIdentifiers objectForKeyedSubscript:identifier];

  if (!v18)
  {
    v19 = [streamCopy DSLPublisherWithUseCase:*MEMORY[0x1E698E910]];
    v20 = [BMComputeSubscription alloc];
    current = [MEMORY[0x1E698E9D8] current];
    identifier2 = [current identifier];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __66__BMDaemon__subscribeSystemStream_subscriptionIdentifier_useCase___block_invoke;
    v30[3] = &unk_1E6E52C68;
    v30[4] = self;
    v23 = [(BMComputeSubscription *)v20 initWithIdentifier:identifier client:identifier2 waking:1 DSLGraph:v19 block:v30];

    systemStreamsPublisherClient = [(BMDaemon *)self systemStreamsPublisherClient];

    if (!systemStreamsPublisherClient)
    {
      queue2 = [(BMDaemon *)self queue];
      v26 = [BMComputePublisherClient sharedWithQueue:queue2 domain:1];
      [(BMDaemon *)self setSystemStreamsPublisherClient:v26];
    }

    systemStreamsPublisherClient2 = [(BMDaemon *)self systemStreamsPublisherClient];
    [systemStreamsPublisherClient2 subscribe:v23];

    identifier3 = [(BMComputeSubscription *)v23 identifier];
    activeSystemSubscriptionIdentifiers2 = [(BMDaemon *)self activeSystemSubscriptionIdentifiers];
    [activeSystemSubscriptionIdentifiers2 setObject:identifier3 forKeyedSubscript:identifier];
  }
}

void __66__BMDaemon__subscribeSystemStream_subscriptionIdentifier_useCase___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 queue];
  dispatch_assert_queue_V2(v5);

  v6 = *(a1 + 32);
  v8 = [v4 identifier];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  [v6 sendEventWithStreamIdentifier:v8 timestamp:v7 account:0 remoteName:0 storeEvent:0];
}

- (void)publisherServer:(id)server didAddSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  [(BMComputeSubscriptionSubstreamManager *)self->_subscriptionSubstreamManager addSubscription:subscriptionCopy];
}

- (void)publisherServer:(id)server didClaimSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  [(BMComputeSubscriptionSubstreamManager *)self->_subscriptionSubstreamManager addSubscription:subscriptionCopy];
}

- (void)publisherServer:(id)server didRemoveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  [(BMComputeSubscriptionSubstreamManager *)self->_subscriptionSubstreamManager removeSubscription:subscriptionCopy];
}

- (void)sendEventWithStreamIdentifier:(id)identifier timestamp:(id)timestamp account:(id)account remoteName:(id)name storeEvent:(id)event
{
  v105 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  timestampCopy = timestamp;
  accountCopy = account;
  nameCopy = name;
  eventCopy = event;
  selfCopy = self;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  _publisherServer = [(BMDaemon *)self _publisherServer];
  v15 = [_publisherServer subscriptionsForStream:identifierCopy];

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    _publisherServer2 = [(BMDaemon *)self _publisherServer];
    [_publisherServer2 domain];
    v18 = BMStringForServiceDomain();
    _bookmarkStorage = [(BMDaemon *)selfCopy _bookmarkStorage];
    [_bookmarkStorage domain];
    v20 = BMStringForServiceDomain();
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
    *buf = 138413314;
    *&buf[4] = v18;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    *&buf[22] = 2112;
    v100 = identifierCopy;
    v101 = 2112;
    v102 = v21;
    v103 = 2112;
    v104 = eventCopy;
    _os_log_impl(&dword_1848EE000, v16, OS_LOG_TYPE_INFO, "Using publisher server for domain: %@, bookmark storage domain: %@ when processing new event write for stream %@ subscription count: %@, event: %@", buf, 0x34u);
  }

  if (accountCopy)
  {
    [BMDaemon sendEventWithStreamIdentifier:a2 timestamp:selfCopy account:? remoteName:? storeEvent:?];
  }

  eventReporter = selfCopy->_eventReporter;
  v93 = 0;
  v23 = [(BMViewEventReporter *)eventReporter streamUpdatedWithStreamIdentifier:identifierCopy remoteName:nameCopy error:&v93];
  v24 = v93;
  if ((v23 & 1) == 0)
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [BMDaemon sendEventWithStreamIdentifier:timestamp:account:remoteName:storeEvent:];
    }
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v15;
  v26 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
  if (v26)
  {
    v72 = *v90;
    *&v27 = 138412802;
    v64 = v27;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v90 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v89 + 1) + 8 * i);
        v30 = objc_autoreleasePoolPush();
        subscriber = [v29 subscriber];
        if (subscriber)
        {
          v32 = __biome_log_for_category();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            *&buf[4] = v29;
            _os_log_fault_impl(&dword_1848EE000, v32, OS_LOG_TYPE_FAULT, "Biome compute subscriptions with subscribers are no longer supported, subscription %@", buf, 0xCu);
          }
        }

        else if (eventCopy)
        {
          v33 = __biome_log_for_category();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            identifier = [v29 identifier];
            *buf = 138413058;
            *&buf[4] = eventCopy;
            *&buf[12] = 2112;
            *&buf[14] = timestampCopy;
            *&buf[22] = 2112;
            v100 = identifierCopy;
            v101 = 2112;
            v102 = identifier;
            _os_log_impl(&dword_1848EE000, v33, OS_LOG_TYPE_INFO, "Processing local store event %@ at time %@ for %@ instead of reading from BiomeStorage for subscription %@", buf, 0x2Au);
          }

          v35 = MEMORY[0x1E695DF00];
          [eventCopy timestamp];
          v36 = [v35 dateWithTimeIntervalSinceReferenceDate:?];
          [v29 setInitialBookmarkTimestamp:v36];

          v37 = __biome_log_for_category();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = eventCopy;
            _os_log_impl(&dword_1848EE000, v37, OS_LOG_TYPE_INFO, "Publishing local store events, event: %@", buf, 0xCu);
          }

          graph = [v29 graph];
          v32 = BMDSLGetPublisherForEvent(graph, eventCopy);

          v39 = MEMORY[0x1E69E9820];
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke;
          v86[3] = &unk_1E6E52C90;
          v86[4] = v29;
          v40 = identifierCopy;
          v87 = v40;
          v88 = eventCopy;
          v80[0] = v39;
          v80[1] = 3221225472;
          v80[2] = __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_43;
          v80[3] = &unk_1E6E52CB8;
          v81 = v88;
          v82 = timestampCopy;
          v83 = v29;
          v84 = v40;
          v85 = selfCopy;
          v41 = [v32 sinkWithCompletion:v86 receiveInput:v80];
        }

        else
        {
          _bookmarkStorage2 = [(BMDaemon *)selfCopy _bookmarkStorage];
          v79 = v24;
          v32 = [v29 fetchBookmarkFromStorage:_bookmarkStorage2 error:&v79];
          v43 = v79;

          if (v43)
          {
            bpsPublisher = __biome_log_for_category();
            if (os_log_type_enabled(bpsPublisher, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v29;
              *&buf[12] = 2112;
              *&buf[14] = identifierCopy;
              _os_log_error_impl(&dword_1848EE000, bpsPublisher, OS_LOG_TYPE_ERROR, "Failed to fetch bookmark for subscription %@ when processing event write for %@", buf, 0x16u);
            }
          }

          else
          {
            if (!v32)
            {
              v45 = __biome_log_for_category();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                identifier2 = [v29 identifier];
                *buf = 138412546;
                *&buf[4] = identifierCopy;
                *&buf[12] = 2112;
                *&buf[14] = identifier2;
                _os_log_impl(&dword_1848EE000, v45, OS_LOG_TYPE_DEFAULT, "No bookmark found for stream: %@ identifier: %@", buf, 0x16u);
              }
            }

            graph2 = [v29 graph];
            bpsPublisher = [graph2 bpsPublisher];

            if (BPSPipelineSupportsPullBasedPublishers())
            {
              v67 = [bpsPublisher validateBookmarkNode:v32];
              if (v67)
              {
                v48 = __biome_log_for_category();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                {
                  *buf = v64;
                  *&buf[4] = v29;
                  *&buf[12] = 2112;
                  *&buf[14] = identifierCopy;
                  *&buf[22] = 2112;
                  v100 = v67;
                  _os_log_error_impl(&dword_1848EE000, v48, OS_LOG_TYPE_ERROR, "Bookmark failed validation %@ when processing event write for %@ %@", buf, 0x20u);
                }

                _bookmarkStorage3 = [(BMDaemon *)selfCopy _bookmarkStorage];
                identifier3 = [v29 identifier];
                client = [v29 client];
                [_bookmarkStorage3 removeBookmarkFileForSubscriptionWithIdentifier:identifier3 client:client];

                _bookmarkStorage4 = [(BMDaemon *)selfCopy _bookmarkStorage];
                v78 = 0;
                v53 = [v29 fetchBookmarkFromStorage:_bookmarkStorage4 error:&v78];
                v43 = v78;

                v32 = v53;
              }

              else
              {
                v43 = 0;
              }

              [bpsPublisher applyBookmarkNode:v32];
              v55 = v67;
            }

            else
            {
              v54 = [bpsPublisher withBookmark:v32];
              v43 = 0;
              v55 = bpsPublisher;
              bpsPublisher = v54;
            }

            v56 = v26;
            v57 = MEMORY[0x1E69E9820];
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            LOBYTE(v100) = 0;
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_45;
            v75[3] = &unk_1E6E52CE0;
            v75[4] = v29;
            v58 = identifierCopy;
            v59 = v57;
            v26 = v56;
            v76 = v58;
            v77 = selfCopy;
            v74[0] = v59;
            v74[1] = 3221225472;
            v74[2] = __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_47;
            v74[3] = &unk_1E6E52D08;
            v74[4] = buf;
            v60 = [bpsPublisher sinkWithBookmark:v32 completion:v75 receiveInput:v74];
            if (*(*&buf[8] + 24) == 1)
            {
              v61 = __biome_log_for_category();
              if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
              {
                *v94 = 138412546;
                v95 = v29;
                v96 = 2112;
                v97 = identifierCopy;
                _os_log_impl(&dword_1848EE000, v61, OS_LOG_TYPE_INFO, "Publishing downstream for subscription %@ based on new %@ event", v94, 0x16u);
              }

              _publisherServer3 = [(BMDaemon *)selfCopy _publisherServer];
              [_publisherServer3 receiveInputForSubscription:v29 streamIdentifier:v58 timestamp:timestampCopy storeEvent:0];
            }

            _Block_object_dispose(buf, 8);
          }

          v24 = v43;
        }

        objc_autoreleasePoolPop(v30);
      }

      v26 = [obj countByEnumeratingWithState:&v89 objects:v98 count:16];
    }

    while (v26);
  }

  v63 = *MEMORY[0x1E69E9840];
}

void __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_cold_1(a1, v3, v4);
  }
}

void __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_43(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_1848EE000, v4, OS_LOG_TYPE_INFO, "Publishing event %@ with timestamp %@ downstream for subscription %@ based on write to %@", &v11, 0x2Au);
  }

  v9 = [*(a1 + 64) _publisherServer];
  [v9 receiveInputForSubscription:*(a1 + 48) streamIdentifier:*(a1 + 56) timestamp:*(a1 + 40) storeEvent:v3];

  v10 = *MEMORY[0x1E69E9840];
}

void __82__BMDaemon_sendEventWithStreamIdentifier_timestamp_account_remoteName_storeEvent___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = __biome_log_for_category();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v14 = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_INFO, "Completed sink for subscription %@ based on new %@ event, completion: %@. Bookmark: %@", &v14, 0x2Au);
  }

  if (![v5 state])
  {
    v10 = [*(a1 + 48) _bookmarkStorage];
    v11 = [*(a1 + 32) identifier];
    v12 = [*(a1 + 32) client];
    [v10 writeBookmark:v6 forSubscriptionWithIdentifier:v11 client:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)eventsPrunedWithStreamIdentifier:(id)identifier account:(id)account remoteName:(id)name reason:(unint64_t)reason
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  queue = [(BMDaemon *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = identifierCopy;
    v23 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_1848EE000, v12, OS_LOG_TYPE_INFO, "Received events pruned notification for stream %@ with reason: %lu", buf, 0x16u);
  }

  eventReporter = self->_eventReporter;
  if (reason == 1)
  {
    v20 = 0;
    v14 = [(BMViewEventReporter *)eventReporter streamPrunedWithStreamIdentifier:identifierCopy remoteName:nameCopy error:&v20];
    v15 = v20;
  }

  else
  {
    v19 = 0;
    v14 = [(BMViewEventReporter *)eventReporter streamDeletionWithStreamIdentifier:identifierCopy remoteName:nameCopy error:&v19];
    v15 = v19;
  }

  v16 = v15;
  if ((v14 & 1) == 0)
  {
    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [BMDaemon eventsPrunedWithStreamIdentifier:account:remoteName:reason:];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)registerXPCActivities
{
  v2 = *MEMORY[0x1E69E9C50];
  xpc_activity_register("com.apple.biome.prune-expired-events.A", *MEMORY[0x1E69E9C50], &__block_literal_global_1);
  xpc_activity_register("com.apple.biome.prune-expired-events.B", v2, &__block_literal_global_68);

  xpc_activity_register("com.apple.biome.prune-expired-events.C", v2, &__block_literal_global_73);
}

void __33__BMDaemon_registerXPCActivities__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.biome.prune-expired-events.A", v3);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__BMDaemon_registerXPCActivities__block_invoke_2;
    block[3] = &unk_1E6E52D50;
    v6 = v2;
    dispatch_sync(v4, block);
  }
}

void __33__BMDaemon_registerXPCActivities__block_invoke_2(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1848EE000, "com.apple.biome.prune-expired-events.A", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "running activity com.apple.biome.prune-expired-events.A", v8, 2u);
  }

  v4 = objc_alloc(MEMORY[0x1E698EA20]);
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"com.apple.biome.prune-expired-events.A"];
  v7 = [v4 initWithActivity:v5 activityName:v6];

  [BMDaemon pruneRestrictedStreamsWithActivity:v7 protectionClass:0];
  os_activity_scope_leave(&state);
}

void __33__BMDaemon_registerXPCActivities__block_invoke_66(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.biome.prune-expired-events.B", v3);

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__BMDaemon_registerXPCActivities__block_invoke_2_69;
    block[3] = &unk_1E6E52D50;
    v6 = v2;
    dispatch_sync(v4, block);
  }
}

void __33__BMDaemon_registerXPCActivities__block_invoke_2_69(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1848EE000, "com.apple.biome.prune-expired-events.B", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "running activity com.apple.biome.prune-expired-events.B", v8, 2u);
  }

  v4 = objc_alloc(MEMORY[0x1E698EA20]);
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"com.apple.biome.prune-expired-events.B"];
  v7 = [v4 initWithActivity:v5 activityName:v6];

  [BMDaemon pruneRestrictedStreamsWithActivity:v7 protectionClass:2];
  os_activity_scope_leave(&state);
}

void __33__BMDaemon_registerXPCActivities__block_invoke_71(uint64_t a1, void *a2)
{
  v2 = a2;
  if (xpc_activity_get_state(v2) == 2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.biome.prune-expired-events.C", v3);

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__BMDaemon_registerXPCActivities__block_invoke_2_74;
    v6[3] = &unk_1E6E529D0;
    v7 = v2;
    v8 = v4;
    v5 = v4;
    dispatch_sync(v5, v6);
  }
}

void __33__BMDaemon_registerXPCActivities__block_invoke_2_74(uint64_t a1)
{
  v2 = _os_activity_create(&dword_1848EE000, "com.apple.biome.prune-expired-events.C", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v3, OS_LOG_TYPE_INFO, "running activity com.apple.biome.prune-expired-events.C", buf, 2u);
  }

  v4 = objc_alloc(MEMORY[0x1E698EA20]);
  v5 = *(a1 + 32);
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:"com.apple.biome.prune-expired-events.C"];
  v7 = [v4 initWithActivity:v5 activityName:v6];

  [BMDaemon prunePublicStreamsWithActivity:v7];
  if (([v7 didDefer] & 1) == 0)
  {
    [BMDaemon pruneRestrictedStreamsWithActivity:v7 protectionClass:3];
    if (([v7 didDefer] & 1) == 0)
    {
      +[BMDaemon pruneTemporaryFiles];
      if (([v7 didDefer] & 1) == 0)
      {
        [BMDaemon pruneFeatureStoreWithActivity:v7];
        [v7 setContinue];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __33__BMDaemon_registerXPCActivities__block_invoke_75;
        v8[3] = &unk_1E6E529D0;
        v9 = *(a1 + 40);
        v10 = v7;
        [BMDaemon registerWithSpaceAttributionWithActivity:v10 completion:v8];
      }
    }
  }

  os_activity_scope_leave(&state);
}

void __33__BMDaemon_registerXPCActivities__block_invoke_75(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__BMDaemon_registerXPCActivities__block_invoke_2_76;
  block[3] = &unk_1E6E52D50;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

uint64_t __33__BMDaemon_registerXPCActivities__block_invoke_2_76(uint64_t a1)
{
  result = [*(a1 + 32) didDefer];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setDone];
  }

  return result;
}

+ (void)runLaunchTasks
{
  if (!+[BMDaemon isAgent])
  {
    v2 = objc_alloc_init(MEMORY[0x1E698EA10]);
    [v2 migrate];
  }
}

+ (void)donateLaunchEventsWithQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v5 = MEMORY[0x1E69C5D08];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__BMDaemon_LaunchDonations__donateLaunchEventsWithQueue___block_invoke;
  v7[3] = &unk_1E6E539A8;
  v8 = queueCopy;
  selfCopy = self;
  v6 = queueCopy;
  [v5 runBlockWhenDeviceIsClassCUnlocked:v7];
}

void __57__BMDaemon_LaunchDonations__donateLaunchEventsWithQueue___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0;
  *v9 = 0x1500000001;
  v6 = 16;
  v7 = 0;
  if (sysctl(v9, 2u, &v7, &v6, 0, 0) == -1 || v7 == 0)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__BMDaemon_LaunchDonations__donateLaunchEventsWithQueue___block_invoke_cold_1();
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:v8 / 1000000.0 + v7];
    [*(a1 + 40) _donateDeviceMetadataWithBootDate:v4];
    [*(a1 + 40) _donateDeviceBootSessionEventsWithBootDate:v4 queue:*(a1 + 32)];
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_donateDeviceMetadataWithBootDate:(id)date
{
  v37 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dateCopy;
    _os_log_impl(&dword_1848EE000, v4, OS_LOG_TYPE_DEFAULT, "Starting _donateDeviceMetadataWithBootDate, with bootDate: %@", &buf, 0xCu);
  }

  [dateCopy timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = _BiomeLibrary();
  device = [v7 Device];
  metadata = [device Metadata];

  osBuildVersion = [MEMORY[0x1E698E9A0] osBuildVersion];
  osBuildSupplementalVersion = [MEMORY[0x1E698E9A0] osBuildSupplementalVersion];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v14 = [osBuildVersion stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];
  alphanumericCharacterSet2 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v16 = [osBuildSupplementalVersion stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet2];
  v17 = [v12 initWithFormat:@"%@-%@", v14, v16];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v19 = [standardUserDefaults stringForKey:@"LastCombinedBuild"];

  if (!v19 || ([v17 isEqualToString:v19] & 1) == 0)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2050000000;
    v20 = getBMDeviceMetadataClass_softClass;
    v32 = getBMDeviceMetadataClass_softClass;
    if (!getBMDeviceMetadataClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v34 = __getBMDeviceMetadataClass_block_invoke;
      v35 = &unk_1E6E52EB0;
      v36 = &v29;
      __getBMDeviceMetadataClass_block_invoke(&buf);
      v20 = v30[3];
    }

    v21 = v20;
    _Block_object_dispose(&v29, 8);
    v22 = [v20 alloc];
    platform = [MEMORY[0x1E698E9A0] platform];
    if (platform >= 9)
    {
      v24 = __biome_log_for_category();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[BMDaemon(LaunchDonations) _donateDeviceMetadataWithBootDate:];
      }

      platform = 0;
    }

    v25 = [v22 initWithName:0 build:osBuildVersion platform:platform supplementalBuild:osBuildSupplementalVersion rapidSecurityResponsePreReboot:0];
    source = [metadata source];
    [source sendEvent:v25 timestamp:v6];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setObject:v17 forKey:@"LastCombinedBuild"];
  }

  v28 = *MEMORY[0x1E69E9840];
}

+ (void)_donateDeviceBootSessionEventsWithBootDate:(id)date queue:(id)queue
{
  v92 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  target = queue;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dateCopy;
    _os_log_impl(&dword_1848EE000, v6, OS_LOG_TYPE_DEFAULT, "Starting _donateDeviceBootSessionEventsWithBootDate, with bootDate: %@", &buf, 0xCu);
  }

  bm_bootSessionUUID = [MEMORY[0x1E696AFB0] bm_bootSessionUUID];
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = bm_bootSessionUUID;
    _os_log_impl(&dword_1848EE000, v8, OS_LOG_TYPE_DEFAULT, "Current boot session UUID found: %@", &buf, 0xCu);
  }

  v9 = _BiomeLibrary();
  device = [v9 Device];
  bootSession = [device BootSession];

  v12 = [[BMPublisherOptions alloc] initWithStartDate:0 endDate:0 maxEvents:1 lastN:1 reversed:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__4;
  v90 = __Block_byref_object_dispose__4;
  v91 = 0;
  v80 = 0;
  v81[0] = &v80;
  v81[1] = 0x3032000000;
  v81[2] = __Block_byref_object_copy__4;
  v81[3] = __Block_byref_object_dispose__4;
  v82 = 0;
  v13 = [bootSession publisherWithUseCase:*MEMORY[0x1E698E928] options:v12];
  last = [v13 last];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke;
  v79[3] = &unk_1E6E539D0;
  v79[4] = &v80;
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_2;
  v78[3] = &unk_1E6E539F8;
  v78[4] = &buf;
  v15 = [last sinkWithCompletion:v79 receiveInput:v78];

  if (!*(v81[0] + 40))
  {
    source = [bootSession source];
    v17 = [objc_alloc(getBMDeviceBootSessionClass()) initWithBootUUID:bm_bootSessionUUID starting:&unk_1EF309218];
    if (!*(*(&buf + 1) + 40))
    {
      [dateCopy timeIntervalSinceReferenceDate];
      [source sendEvent:v17 timestamp:?];
      goto LABEL_31;
    }

    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      eventBody = [*(*(&buf + 1) + 40) eventBody];
      bootUUID = [eventBody bootUUID];
      [*(*(&buf + 1) + 40) timestamp];
      *v83 = 138412546;
      *&v83[4] = bootUUID;
      *&v83[12] = 2048;
      *&v83[14] = v21;
      _os_log_impl(&dword_1848EE000, v18, OS_LOG_TYPE_DEFAULT, "Previously stored device boot session: %@ at time: %f, in the biome daemon launch donation", v83, 0x16u);
    }

    eventBody2 = [*(*(&buf + 1) + 40) eventBody];
    bootUUID2 = [eventBody2 bootUUID];
    v24 = [bootUUID2 isEqual:bm_bootSessionUUID];

    if (v24)
    {
      eventBody3 = [*(*(&buf + 1) + 40) eventBody];
      starting = [eventBody3 starting];

      if ((starting & 1) == 0)
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[BMDaemon(LaunchDonations) _donateDeviceBootSessionEventsWithBootDate:queue:];
        }

        goto LABEL_30;
      }

LABEL_31:

      goto LABEL_32;
    }

    v28 = objc_alloc(MEMORY[0x1E695DF00]);
    [*(*(&buf + 1) + 40) timestamp];
    v27 = [v28 initWithTimeIntervalSinceReferenceDate:?];
    if ([dateCopy compare:v27] == -1)
    {
      localStore = __biome_log_for_category();
      if (os_log_type_enabled(localStore, OS_LOG_TYPE_ERROR))
      {
        [(BMDaemon(LaunchDonations) *)dateCopy _donateDeviceBootSessionEventsWithBootDate:v27 queue:localStore];
      }
    }

    else
    {
      eventBody4 = [*(*(&buf + 1) + 40) eventBody];
      starting2 = [eventBody4 starting];

      if ((starting2 & 1) == 0)
      {
        [dateCopy timeIntervalSinceReferenceDate];
        [source sendEvent:v17 timestamp:?];
LABEL_30:

        goto LABEL_31;
      }

      localStore = [MEMORY[0x1E69AD3C8] localStore];
      *v83 = 0;
      *&v83[8] = v83;
      *&v83[16] = 0x3032000000;
      v84 = __Block_byref_object_copy__4;
      v85 = __Block_byref_object_dispose__4;
      v86 = 0;
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_22;
      v77[3] = &unk_1E6E53A20;
      v77[4] = v83;
      [localStore prepareWithCompletionHandler:v77];
      if (*(*&v83[8] + 40))
      {
        v32 = objc_alloc(MEMORY[0x1E69AD3D0]);
        v33 = [v32 initWithSource:*(*&v83[8] + 40)];
        [v33 setFlags:56];
        val = v33;
        v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v35 = dispatch_queue_attr_make_with_qos_class(v34, QOS_CLASS_BACKGROUND, 1);
        v43 = dispatch_queue_create_with_target_V2("com.apple.BMDaemon+LaunchDonations.DeviceBootSession", v35, target);

        [val _setQueue:v43];
        v75[0] = 0;
        v75[1] = v75;
        v75[2] = 0x3032000000;
        v75[3] = __Block_byref_object_copy__4;
        v75[4] = __Block_byref_object_dispose__4;
        v76 = 0;
        v73[0] = 0;
        v73[1] = v73;
        v73[2] = 0x3032000000;
        v73[3] = __Block_byref_object_copy__4;
        v73[4] = __Block_byref_object_dispose__4;
        v74 = 0;
        v71[0] = 0;
        v71[1] = v71;
        v71[2] = 0x2020000000;
        v72 = 0;
        v69[0] = 0;
        v69[1] = v69;
        v69[2] = 0x2020000000;
        v70 = 0;
        v67[0] = 0;
        v67[1] = v67;
        v67[2] = 0x3032000000;
        v67[3] = __Block_byref_object_copy__4;
        v67[4] = __Block_byref_object_dispose__4;
        v68 = os_transaction_create();
        objc_initWeak(&location, val);
        v36 = __biome_log_for_category();
        v37 = os_signpost_id_generate(v36);

        v38 = __biome_log_for_category();
        v39 = v38;
        if (v37 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
        {
          *v65 = 0;
          _os_signpost_emit_with_name_impl(&dword_1848EE000, v39, OS_SIGNPOST_INTERVAL_BEGIN, v37, "BootSessionLogReading", "", v65, 2u);
        }

        v58[0] = MEMORY[0x1E69E9820];
        v58[1] = 3221225472;
        v58[2] = __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_27;
        v58[3] = &unk_1E6E53A48;
        v60 = v69;
        v61 = v71;
        objc_copyWeak(&v64, &location);
        v40 = bm_bootSessionUUID;
        v59 = v40;
        v62 = v75;
        v63 = v73;
        [val setEventHandler:v58];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29;
        v46[3] = &unk_1E6E53A70;
        v57 = v37;
        v52 = v71;
        v53 = v75;
        p_buf = &buf;
        v55 = v73;
        v47 = source;
        v41 = dateCopy;
        v48 = v41;
        v49 = v17;
        v50 = v27;
        v51 = v40;
        v56 = v67;
        [val setInvalidationHandler:v46];
        [val activateStreamFromDate:v41];

        objc_destroyWeak(&v64);
        objc_destroyWeak(&location);
        _Block_object_dispose(v67, 8);

        _Block_object_dispose(v69, 8);
        _Block_object_dispose(v71, 8);
        _Block_object_dispose(v73, 8);

        _Block_object_dispose(v75, 8);
      }

      else
      {
        val = __biome_log_for_category();
        if (os_log_type_enabled(val, OS_LOG_TYPE_ERROR))
        {
          +[BMDaemon(LaunchDonations) _donateDeviceBootSessionEventsWithBootDate:queue:];
        }
      }

      _Block_object_dispose(v83, 8);
    }

    goto LABEL_30;
  }

  source = __biome_log_for_category();
  if (os_log_type_enabled(source, OS_LOG_TYPE_FAULT))
  {
    [BMDaemon(LaunchDonations) _donateDeviceBootSessionEventsWithBootDate:v81 queue:source];
  }

LABEL_32:

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&buf, 8);

  v42 = *MEMORY[0x1E69E9840];
}

void __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 error];

  if (v3)
  {
    v4 = [v7 error];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

void __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_22_cold_1();
    }
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_27(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 24);
    if (v6 < 500)
    {
      *(v5 + 24) = v6 + 1;
      v9 = [v3 bootUUID];
      v10 = [v3 date];
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_1848EE000, v11, OS_LOG_TYPE_DEFAULT, "Found log with eventBootUUID: %@, at eventDate: %@", &v14, 0x16u);
      }

      if (([v9 isEqual:*(a1 + 32)] & 1) == 0)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v10);
        WeakRetained = objc_loadWeakRetained((a1 + 72));
        [WeakRetained invalidate];

        *(*(*(a1 + 40) + 8) + 24) = 1;
      }
    }

    else
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_27_cold_1(a1 + 48, v7);
      }

      v8 = objc_loadWeakRetained((a1 + 72));
      [v8 invalidate];

      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v4);

  v13 = *MEMORY[0x1E69E9840];
}

void __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29(uint64_t a1, uint64_t a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = __biome_log_for_category();
  v7 = v6;
  v8 = *(a1 + 112);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v34[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1848EE000, v7, OS_SIGNPOST_INTERVAL_END, v8, "BootSessionLogReading", "", v34, 2u);
  }

  if ((a2 - 6) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29_cold_1(v5, a2, v9);
    }
  }

  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(*(a1 + 72) + 8) + 24);
    v12 = *(*(*(a1 + 80) + 8) + 40);
    v34[0] = 67109378;
    v34[1] = v11;
    v35 = 2112;
    v36 = v12;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEFAULT, "Found the previous boot session after viewing %d past logs in biome daemon launch donation, previous boot session: %@", v34, 0x12u);
  }

  v13 = objc_alloc(getBMDeviceBootSessionClass());
  v14 = [*(*(*(a1 + 88) + 8) + 40) eventBody];
  v15 = [v14 bootUUID];
  v16 = [v13 initWithBootUUID:v15 starting:&unk_1EF309230];

  v17 = *(*(*(a1 + 80) + 8) + 40);
  if (v17 && *(*(*(a1 + 96) + 8) + 40))
  {
    v18 = [*(*(*(a1 + 88) + 8) + 40) eventBody];
    v19 = [v18 bootUUID];
    v20 = [v17 isEqual:v19];

    if ((v20 & 1) == 0)
    {
      v21 = __biome_log_for_category();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29_cold_2();
      }
    }

    if ([*(*(*(a1 + 96) + 8) + 40) compare:*(a1 + 56)] == -1)
    {
      v30 = __biome_log_for_category();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29_cold_4(a1 + 96);
      }

      v31 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      [v31 sendEvent:v16 timestamp:?];
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
    }

    else if ([*(a1 + 40) compare:*(*(*(a1 + 96) + 8) + 40)] == -1)
    {
      v32 = __biome_log_for_category();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29_cold_3(a1, a1 + 96);
      }

      v33 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
      [v33 sendEvent:v16 timestamp:?];
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
    }

    else
    {
      v22 = *(a1 + 32);
      [*(*(*(a1 + 96) + 8) + 40) timeIntervalSinceReferenceDate];
      [v22 sendEvent:v16 timestamp:?];
      v23 = *(a1 + 48);
      v24 = *(a1 + 32);
      [*(a1 + 40) timeIntervalSinceReferenceDate];
    }
  }

  else
  {
    v25 = __biome_log_for_category();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __78__BMDaemon_LaunchDonations___donateDeviceBootSessionEventsWithBootDate_queue___block_invoke_29_cold_5(a1 + 80);
    }

    v26 = *(a1 + 32);
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    [v26 sendEvent:v16 timestamp:?];
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    [*(a1 + 40) timeIntervalSinceReferenceDate];
  }

  [v24 sendEvent:v23 timestamp:?];

  v27 = *(*(a1 + 104) + 8);
  v28 = *(v27 + 40);
  *(v27 + 40) = 0;

  v29 = *MEMORY[0x1E69E9840];
}

+ (void)prunePublicStreamsWithActivity:(id)activity
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [MEMORY[0x1E698E9C8] pathForStreamType:1 domain:0];
  [defaultManager removeItemAtPath:v4 error:0];

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [MEMORY[0x1E698E9C8] pathForStreamType:1 domain:1];
  [defaultManager2 removeItemAtPath:v5 error:0];
}

+ (void)pruneRestrictedStreamsWithActivity:(id)activity protectionClass:(unint64_t)class
{
  activityCopy = activity;
  v7 = _os_activity_create(&dword_1848EE000, "Pruning restricted streams", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v7, &v8);
  [self pruneRestrictedStreamsInDomain:0 account:0 activity:activityCopy protectionClass:class];
  [self pruneRestrictedStreamsInDomain:1 account:0 activity:activityCopy protectionClass:class];
  os_activity_scope_leave(&v8);
}

+ (void)pruneRestrictedStreamsInDomain:(unint64_t)domain account:(id)account activity:(id)activity protectionClass:(unint64_t)class
{
  v120 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  activityCopy = activity;
  domainCopy = domain;
  if (accountCopy)
  {
    [MEMORY[0x1E698E9C8] pathForSharedSyncWithAccount:accountCopy streamType:2 domain:domain];
  }

  else
  {
    [MEMORY[0x1E698E9C8] pathForStreamType:2 domain:domain];
  }
  v9 = ;
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x1E698E9C8] privacyPathname:v9];
    *buf = 138543618;
    v112 = v11;
    v113 = 2048;
    classCopy = class;
    _os_log_impl(&dword_1848EE000, v10, OS_LOG_TYPE_DEFAULT, "Started pruning restricted streams in directory: %{public}@ protectionClass: %tu", buf, 0x16u);
  }

  v12 = 0x1E696A000uLL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = [defaultManager contentsOfDirectoryAtPath:v9 error:0];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v85 = v14;
  v15 = [MEMORY[0x1E695DEC8] bm_shuffledArrayWithArray:v14];
  v103 = [v15 countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v103)
  {
    v100 = class & 0xFFFFFFFFFFFFFFFDLL;
    v102 = *v108;
    v89 = *MEMORY[0x1E698F178];
    v86 = *MEMORY[0x1E698F108];
    *&v16 = 138413058;
    v84 = v16;
    v90 = accountCopy;
    v92 = v9;
    v95 = v15;
LABEL_8:
    v17 = 0;
    while (1)
    {
      if (*v108 != v102)
      {
        objc_enumerationMutation(v15);
      }

      v18 = *(*(&v107 + 1) + 8 * v17);
      v19 = objc_autoreleasePoolPush();
      v106 = 0;
      v20 = [v9 stringByAppendingPathComponent:v18];
      defaultManager2 = [*(v12 + 3080) defaultManager];
      v22 = [defaultManager2 fileExistsAtPath:v20 isDirectory:&v106];

      if (!v22 || (v106 & 1) == 0)
      {
        v27 = __biome_log_for_category();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          +[BMDaemon(Pruning) pruneRestrictedStreamsInDomain:account:activity:protectionClass:];
        }

        goto LABEL_67;
      }

      v23 = BiomeLibraryAndInternalLibraryNode();
      v105 = 0;
      v24 = [v23 streamWithIdentifier:v18 error:&v105];
      v25 = v105;
      v101 = v25;
      if (!v100 && !v24)
      {
        v26 = __biome_log_for_category();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v112 = v18;
          _os_log_debug_impl(&dword_1848EE000, v26, OS_LOG_TYPE_DEBUG, "Ignoring %@ since it is not a library stream and we are pruning class A or B", buf, 0xCu);
        }

        goto LABEL_65;
      }

      v28 = [v18 hasPrefix:{@"_DKEvent.", v84}];
      v99 = v23;
      if (!v24 || (v28 & 1) != 0 || v25)
      {
        v33 = [MEMORY[0x1E698F130] newRestrictedStreamWithSegmentSize:v89 protectionClass:3 domain:domainCopy];
        pruningPolicy4 = v33;
        if ([v18 hasPrefix:@"_DKEvent."])
        {
          v34 = [BMDKEventStream eventStreamPropertiesForBiomeStreamName:v18];
          v35 = objc_opt_class();
          if (v34)
          {
            eventCountLimit = [v34 eventCountLimit];
            [v34 timeToLive];
            v38 = v37;
          }

          else
          {
            v38 = 2419200.0;
            eventCountLimit = 10000;
          }

          v42 = 52428800;
        }

        else
        {
          v34 = [objc_alloc(MEMORY[0x1E698F140]) initWithStream:v18 permission:2 config:v33 includeTombstones:0];
          metadata = [v34 metadata];
          pruningPolicy = [metadata pruningPolicy];
          maxStreamSize = [pruningPolicy maxStreamSize];
          if (maxStreamSize)
          {
            v42 = maxStreamSize;
          }

          else
          {
            v42 = 52428800;
          }

          pruningPolicy2 = [metadata pruningPolicy];
          [pruningPolicy2 maxAge];
          if (v44 == 0.0)
          {
            v38 = 2419200.0;
          }

          else
          {
            v38 = v44;
          }

          pruningPolicy3 = [metadata pruningPolicy];
          maxEventCount = [pruningPolicy3 maxEventCount];
          if (maxEventCount)
          {
            eventCountLimit = maxEventCount;
          }

          else
          {
            eventCountLimit = v86;
          }

          v33 = pruningPolicy4;
          v35 = 0;
        }

        v62 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:v42 maxStreamSize:eventCountLimit maxEventCount:v38];
        [v33 setPruningPolicy:v62];
        v63 = __biome_log_for_category();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          [v62 maxAge];
          v64 = BMPruningPolicyDescribeMaxAge();
          [v62 maxStreamSize];
          BMPruningPolicyDescribeMaxStreamSize();
          v87 = v24;
          v66 = v65 = v35;
          [v62 maxEventCount];
          v67 = BMPruningPolicyDescribeMaxEventCount();
          *buf = 138544130;
          v112 = v18;
          v113 = 2114;
          classCopy = v64;
          v115 = 2114;
          v116 = v66;
          v117 = 2114;
          v118 = v67;
          _os_log_impl(&dword_1848EE000, v63, OS_LOG_TYPE_INFO, "Pruning policy for %{public}@: maxAge, %{public}@, maxStreamSize, %{public}@, maxCount, %{public}@", buf, 0x2Au);

          v33 = pruningPolicy4;
          v35 = v65;
          v24 = v87;
        }

        v68 = [[BMStreamConfiguration alloc] initWithStreamIdentifier:v18 eventClass:v35 storeConfig:v33];
        v69 = [(BMStreamBase *)[BMStream alloc] initWithIdentifier:v18 schema:0 configuration:v68];
        v70 = __biome_log_for_category();
        accountCopy = v90;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v112 = v18;
          _os_log_impl(&dword_1848EE000, v70, OS_LOG_TYPE_DEFAULT, "Pruning non-library stream: %{public}@", buf, 0xCu);
        }

        [(BMStreamBase *)v69 executePruningPolicyForAccount:v90];
        v9 = v92;
LABEL_58:
        v15 = v95;
        v12 = 0x1E696A000;

        v23 = v99;
        if ([activityCopy didDefer])
        {
          v81 = __biome_log_for_category();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1848EE000, v81, OS_LOG_TYPE_DEFAULT, "Pausing pruning of restricted streams due to xpc activity deferral", buf, 2u);
          }

          objc_autoreleasePoolPop(v19);
          goto LABEL_77;
        }

        goto LABEL_66;
      }

      if (v100)
      {
        if (class != 3)
        {
          goto LABEL_42;
        }

        configuration = [v24 configuration];
        storeConfig = [configuration storeConfig];
        if ([storeConfig protectionClass])
        {
          configuration2 = [v24 configuration];
          storeConfig2 = [configuration2 storeConfig];
          protectionClass = [storeConfig2 protectionClass];

          v9 = v92;
          if (protectionClass != 2)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }

        v26 = __biome_log_for_category();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_64;
        }

        configuration3 = [v24 configuration];
        storeConfig3 = [configuration3 storeConfig];
        protectionClass2 = [storeConfig3 protectionClass];
        *buf = 138412546;
        v112 = v18;
        v113 = 2048;
        classCopy = protectionClass2;
        v73 = v26;
        v74 = "Ignoring %@ since it is class %tu which is handled by a separate job";
      }

      else
      {
        configuration4 = [v24 configuration];
        storeConfig4 = [configuration4 storeConfig];
        protectionClass3 = [storeConfig4 protectionClass];

        if (protectionClass3 == class)
        {
LABEL_42:
          configuration5 = [v24 configuration];
          storeConfig5 = [configuration5 storeConfig];
          domain = [storeConfig5 domain];

          if (domain == domainCopy)
          {
            configuration6 = [v24 configuration];
            storeConfig6 = [configuration6 storeConfig];
            pruningPolicy4 = [storeConfig6 pruningPolicy];

            v55 = __biome_log_for_category();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
              [pruningPolicy4 maxAge];
              v56 = BMPruningPolicyDescribeMaxAge();
              [pruningPolicy4 maxStreamSize];
              v57 = BMPruningPolicyDescribeMaxStreamSize();
              [pruningPolicy4 maxEventCount];
              v58 = BMPruningPolicyDescribeMaxEventCount();
              *buf = 138544130;
              v112 = v18;
              v113 = 2114;
              classCopy = v56;
              v115 = 2114;
              v116 = v57;
              v117 = 2114;
              v118 = v58;
              _os_log_impl(&dword_1848EE000, v55, OS_LOG_TYPE_INFO, "Pruning policy for %{public}@: maxAge, %{public}@, maxStreamSize, %{public}@, maxCount, %{public}@", buf, 0x2Au);

              v9 = v92;
            }

            v59 = __biome_log_for_category();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v112 = v18;
              _os_log_impl(&dword_1848EE000, v59, OS_LOG_TYPE_DEFAULT, "Pruning library stream: %{public}@", buf, 0xCu);
            }

            [v24 executePruningPolicyForAccount:accountCopy];
            goto LABEL_58;
          }

          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v104 = 0;
          [defaultManager3 removeItemAtPath:v20 error:&v104];
          v26 = v104;

          configuration3 = __biome_log_for_category();
          if (os_log_type_enabled(configuration3, OS_LOG_TYPE_ERROR))
          {
            configuration7 = [v24 configuration];
            storeConfig7 = [configuration7 storeConfig];
            [storeConfig7 domain];
            v75 = BMStringForServiceDomain();
            v76 = BMStringForServiceDomain();
            *buf = v84;
            v112 = v18;
            v113 = 2112;
            v77 = v75;
            classCopy = v75;
            v115 = 2112;
            v116 = v76;
            v117 = 2112;
            v118 = v26;
            _os_log_error_impl(&dword_1848EE000, configuration3, OS_LOG_TYPE_ERROR, "Removing directory for stream %@ with library domain %@ found in %@ domain stream folder, remove error: %@", buf, 0x2Au);

            v9 = v92;
          }

          goto LABEL_50;
        }

        v26 = __biome_log_for_category();
        if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_64;
        }

        configuration3 = [v24 configuration];
        storeConfig3 = [configuration3 storeConfig];
        protectionClass4 = [storeConfig3 protectionClass];
        *buf = 138412546;
        v112 = v18;
        v113 = 2048;
        classCopy = protectionClass4;
        v73 = v26;
        v74 = "Ignoring %@ since it is class %tu and we are pruning A or B";
      }

      _os_log_debug_impl(&dword_1848EE000, v73, OS_LOG_TYPE_DEBUG, v74, buf, 0x16u);

LABEL_50:
LABEL_64:
      v15 = v95;
      v23 = v99;
LABEL_65:

      v12 = 0x1E696A000;
LABEL_66:

LABEL_67:
      objc_autoreleasePoolPop(v19);
      if (v103 == ++v17)
      {
        v79 = [v15 countByEnumeratingWithState:&v107 objects:v119 count:16];
        v103 = v79;
        if (v79)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v80 = [MEMORY[0x1E698E9C8] privacyPathname:v9];
    *buf = 138543362;
    v112 = v80;
    _os_log_impl(&dword_1848EE000, v15, OS_LOG_TYPE_DEFAULT, "Done pruning restricted streams in directory: %{public}@", buf, 0xCu);
  }

LABEL_77:

  v83 = *MEMORY[0x1E69E9840];
}

+ (void)prunePrivateStreamDirectory:(id)directory maxAge:(double)age maxStreamSize:(unint64_t)size activity:(id)activity
{
  v45 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  activityCopy = activity;
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x1E698E9C8] privacyPathname:directoryCopy];
    buf = 138543362;
    v44 = v10;
    _os_log_impl(&dword_1848EE000, v9, OS_LOG_TYPE_DEFAULT, "Started pruning private streams in directory: %{public}@", &buf, 0xCu);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:0];

  v33 = [objc_alloc(MEMORY[0x1E698F120]) initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:size maxStreamSize:age];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        v35 = 0;
        v20 = [directoryCopy stringByAppendingPathComponent:v18];
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v22 = [defaultManager2 fileExistsAtPath:v20 isDirectory:&v35];

        if (v22 && (v35 & 1) != 0)
        {
          v23 = __biome_log_for_category();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v40 = 138543362;
            v41 = v18;
            _os_log_impl(&dword_1848EE000, v23, OS_LOG_TYPE_INFO, "Pruning stream: %{public}@", v40, 0xCu);
          }

          v24 = [MEMORY[0x1E698F130] newPrivateStreamDefaultConfigurationWithStoreBasePath:directoryCopy];
          [v24 setPruningPolicy:v33];
          v25 = [[BMStoreStream alloc] initWithPrivateStreamIdentifier:v18 storeConfig:v24 eventDataClass:0];
          [(BMStoreStream *)v25 pruneStreamBySize:size];
          [(BMStoreStream *)v25 pruneExpiredEventsWithBlock:&__block_literal_global_17];
          if ([activityCopy didDefer])
          {
            v29 = __biome_log_for_category();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [MEMORY[0x1E698E9C8] privacyPathname:directoryCopy];
              *v40 = 138543362;
              v41 = v30;
              _os_log_impl(&dword_1848EE000, v29, OS_LOG_TYPE_DEFAULT, "Pausing pruning of private streams in directory: %{public}@ due to xpc activity deferral", v40, 0xCu);
            }

            objc_autoreleasePoolPop(v19);
            v27 = v13;
            goto LABEL_24;
          }
        }

        else
        {
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            +[BMDaemon(Pruning) pruneRestrictedStreamsInDomain:account:activity:protectionClass:];
          }
        }

        objc_autoreleasePoolPop(v19);
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v27 = __biome_log_for_category();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [MEMORY[0x1E698E9C8] privacyPathname:directoryCopy];
    *v40 = 138543362;
    v41 = v28;
    _os_log_impl(&dword_1848EE000, v27, OS_LOG_TYPE_DEFAULT, "Done pruning private streams in directory: %{public}@", v40, 0xCu);
  }

LABEL_24:

  v31 = *MEMORY[0x1E69E9840];
}

+ (void)pruneFeatureStoreWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = _os_activity_create(&dword_1848EE000, "Pruning FeatureStore", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v5, &v16);
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v6, OS_LOG_TYPE_DEFAULT, "Started pruning FeatureStore", buf, 2u);
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v7 = getFSFUtilsClass_softClass;
  v25 = getFSFUtilsClass_softClass;
  if (!getFSFUtilsClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getFSFUtilsClass_block_invoke;
    v20 = &unk_1E6E52EB0;
    v21 = &v22;
    __getFSFUtilsClass_block_invoke(buf);
    v7 = v23[3];
  }

  v8 = v7;
  _Block_object_dispose(&v22, 8);
  v9 = objc_opt_respondsToSelector();
  if (v9)
  {
    getStreamPath = [v8 getStreamPath];
    v11 = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    getStreamPath = [v8 getBaseLocalPath];
    v11 = @"biomeStream";
  }

  else
  {
    v11 = 0;
    getStreamPath = 0;
    v9 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    path = [getStreamPath path];

    getStreamPath = path;
  }

  if ((v9 & 1) == 0)
  {
    v13 = [getStreamPath stringByAppendingPathComponent:v11];

    getStreamPath = v13;
  }

  if (getStreamPath)
  {
    [self prunePrivateStreamDirectory:getStreamPath maxAge:52428800 maxStreamSize:activityCopy activity:1209600.0];
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [BMDaemon(Pruning) pruneFeatureStoreWithActivity:v14];
    }
  }

  v15 = __biome_log_for_category();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v15, OS_LOG_TYPE_DEFAULT, "Done pruning FeatureStore", buf, 2u);
  }

  os_activity_scope_leave(&v16);
}

+ (void)pruneTemporaryFiles
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = _os_activity_create(&dword_1848EE000, "Pruning temporary files", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = __biome_log_for_category();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v4, OS_LOG_TYPE_DEFAULT, "Started pruning temporary files", buf, 2u);
  }

  v5 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:0];
  v23[0] = v5;
  v6 = [MEMORY[0x1E698E9C8] biomeDirectoryForDomain:1];
  v23[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v9)
  {
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        [self pruneTemporaryFilesInDirectory:{v12, v16}];
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1848EE000, v14, OS_LOG_TYPE_DEFAULT, "Done pruning temporary files", buf, 2u);
  }

  os_activity_scope_leave(&state);
  v15 = *MEMORY[0x1E69E9840];
}

+ (void)pruneTemporaryFilesInDirectory:(id)directory
{
  v65 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v44 = objc_opt_new();
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:directoryCopy isDirectory:1];
  v46 = defaultManager;
  v6 = [defaultManager enumeratorAtURL:v5 includingPropertiesForKeys:0 options:0 errorHandler:&__block_literal_global_57];
  v7 = v6;
  if (v6)
  {
    v42 = v6;
    v43 = v5;
    v58 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v55 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          lastPathComponent = [v13 lastPathComponent];
          v16 = [lastPathComponent hasPrefix:@".tmp."];

          if (v16)
          {
            [v44 addObject:v13];
          }

          objc_autoreleasePoolPop(v14);
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v10);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v44;
    v17 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
    if (v17)
    {
      v18 = v17;
      v41 = directoryCopy;
      v47 = *v52;
      v19 = *MEMORY[0x1E695DAA8];
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v52 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v51 + 1) + 8 * j);
          v22 = objc_autoreleasePoolPush();
          v49 = 0;
          v50 = 0;
          v23 = [v21 getResourceValue:&v50 forKey:v19 error:&v49];
          v24 = v50;
          v25 = v49;
          if ((v23 & 1) == 0)
          {
            v26 = __biome_log_for_category();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v34 = MEMORY[0x1E698E9C8];
              path = [v21 path];
              v36 = [v34 privacyPathname:path];
              *buf = 138543618;
              v60 = v36;
              v61 = 2112;
              v62 = v25;
              _os_log_error_impl(&dword_1848EE000, v26, OS_LOG_TYPE_ERROR, "Failed to fetch attributes of file: %{public}@, error: %@", buf, 0x16u);
            }
          }

          if (v24 && (v27 = objc_opt_new(), [v27 timeIntervalSinceDate:v24], v29 = v28, v27, v29 < 60.0))
          {
            v30 = __biome_log_for_category();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v60 = v24;
              _os_log_debug_impl(&dword_1848EE000, v30, OS_LOG_TYPE_DEBUG, "Skipping pruning of temporary file with creation date: %@, not old enough", buf, 0xCu);
            }
          }

          else
          {
            v48 = 0;
            v31 = [v46 removeItemAtURL:v21 error:&v48];
            v30 = v48;
            v32 = __biome_log_for_category();
            v33 = v32;
            if (v31)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                +[BMDaemon(Pruning) pruneTemporaryFilesInDirectory:];
              }
            }

            else if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v37 = MEMORY[0x1E698E9C8];
              path2 = [v21 path];
              v39 = [v37 privacyPathname:path2];
              *buf = 138543618;
              v60 = v39;
              v61 = 2112;
              v62 = v30;
              _os_log_error_impl(&dword_1848EE000, v33, OS_LOG_TYPE_ERROR, "Failed to prune temporary file: %{public}@, error: %@", buf, 0x16u);
            }
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v51 objects:v63 count:16];
      }

      while (v18);
      directoryCopy = v41;
    }

    v7 = v42;
    v5 = v43;
  }

  else
  {
    obj = __biome_log_for_category();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [(BMDaemon(Pruning) *)directoryCopy pruneTemporaryFilesInDirectory:?];
    }
  }

  v40 = *MEMORY[0x1E69E9840];
}

uint64_t __52__BMDaemon_Pruning__pruneTemporaryFilesInDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __52__BMDaemon_Pruning__pruneTemporaryFilesInDirectory___block_invoke_cold_1(v4, v5, v6);
  }

  return 1;
}

+ (void)registerWithSpaceAttributionWithActivity:(id)activity completion:(id)completion
{
  activityCopy = activity;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1848EE000, "Register with SpaceAttribution", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__BMDaemon_Pruning__registerWithSpaceAttributionWithActivity_completion___block_invoke;
  v11[3] = &unk_1E6E54350;
  selfCopy = self;
  v9 = activityCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [self _registerWithSpaceAttributionWithActivity:v9 domain:0 completion:v11];

  os_activity_scope_leave(&state);
}

+ (void)_registerWithSpaceAttributionWithActivity:(id)activity domain:(unint64_t)domain completion:(id)completion
{
  v51 = *MEMORY[0x1E69E9840];
  activityCopy = activity;
  completionCopy = completion;
  v32 = objc_opt_new();
  v35 = [MEMORY[0x1E698E9C8] pathForStreamType:2 domain:domain];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsOfDirectoryAtPath:v35 error:0];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v9)
  {
    v34 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v35 stringByAppendingPathComponent:{v11, activityCopy}];
        v38 = 0;
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager2 fileExistsAtPath:v13 isDirectory:&v38];

        if (v38 == 1)
        {
          v15 = BiomeLibraryAndInternalLibraryNode();
          v16 = [v15 streamWithIdentifier:v11 error:0];
          v17 = v16;
          if (v16)
          {
            configuration = [v16 configuration];
            spaceAttribution = [configuration spaceAttribution];

            if (spaceAttribution)
            {
              v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13];
              v43 = 0;
              v44 = &v43;
              v45 = 0x2050000000;
              v21 = getSAPathInfoClass_softClass;
              v46 = getSAPathInfoClass_softClass;
              if (!getSAPathInfoClass_softClass)
              {
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 3221225472;
                *&buf[16] = __getSAPathInfoClass_block_invoke;
                v49 = &unk_1E6E52EB0;
                v50 = &v43;
                __getSAPathInfoClass_block_invoke(buf);
                v21 = v44[3];
              }

              v22 = v21;
              _Block_object_dispose(&v43, 8);
              v23 = [[v21 alloc] initWithURL:v20];
              [v23 setBundleID:spaceAttribution];
              v24 = __biome_log_for_category();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138478083;
                *&buf[4] = v13;
                *&buf[12] = 2112;
                *&buf[14] = spaceAttribution;
                _os_log_debug_impl(&dword_1848EE000, v24, OS_LOG_TYPE_DEBUG, "Attributing path: %{private}@ to %@", buf, 0x16u);
              }

              [v32 addObject:v23];
            }
          }
        }

        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v9 != v10);
      v9 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v9);
  }

  if ([v32 count])
  {
    v25 = objc_autoreleasePoolPush();
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v26 = getSAPathManagerClass_softClass;
    v46 = getSAPathManagerClass_softClass;
    if (!getSAPathManagerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSAPathManagerClass_block_invoke;
      v49 = &unk_1E6E52EB0;
      v50 = &v43;
      __getSAPathManagerClass_block_invoke(buf);
      v26 = v44[3];
    }

    v27 = v26;
    _Block_object_dispose(&v43, 8);
    defaultManager3 = [v26 defaultManager];
    if (defaultManager3)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __81__BMDaemon_Pruning___registerWithSpaceAttributionWithActivity_domain_completion___block_invoke;
      v36[3] = &unk_1E6E54378;
      v37 = completionCopy;
      [defaultManager3 registerPaths:v32 completionHandler:v36];
    }

    else
    {
      completionCopy[2]();
    }

    objc_autoreleasePoolPop(v25);
  }

  else
  {
    completionCopy[2]();
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __81__BMDaemon_Pruning___registerWithSpaceAttributionWithActivity_domain_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __biome_log_for_category();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __81__BMDaemon_Pruning___registerWithSpaceAttributionWithActivity_domain_completion___block_invoke_cold_1(v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__BMDaemon_Pruning___registerWithSpaceAttributionWithActivity_domain_completion___block_invoke_cold_2(v5);
  }

  (*(*(a1 + 32) + 16))();
}

@end