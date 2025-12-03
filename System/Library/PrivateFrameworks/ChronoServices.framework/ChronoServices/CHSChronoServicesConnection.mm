@interface CHSChronoServicesConnection
+ (CHSChronoServicesConnection)sharedInstance;
+ (id)ncBridgeConnection;
+ (void)_debugRestartServer;
- (BOOL)reloadRemoteWidgetsWithError:(id *)error;
- (BOOL)reloadTimeline:(id)timeline error:(id *)error;
- (BOOL)remoteWidgetsEnabled;
- (BOOL)toggleRemoteWidgetsEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)unpairDevice:(id)device error:(id *)error;
- (CHSChronoServicesConnection)init;
- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info;
- (id)_filterExtensions:(id)extensions toOptions:(id)options;
- (id)_initWithMachServiceName:(id)name listenForReconnect:(BOOL)reconnect;
- (id)_queue_remoteTargetCreatingConnectionIfNecessary:(BOOL)necessary;
- (id)_subscribeToActivityService;
- (id)_subscribeToExtensions;
- (id)_subscribeToRemoteDevices;
- (id)_subscribeToTimelineEntryRelevance;
- (id)_subscribeToWidgetRelevance;
- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error;
- (id)allPairedDevices;
- (id)cachedExtensionsWithOptions:(id)options;
- (id)subscribeToExtensions:(id *)extensions fromClient:(id)client withOptions:(id)options outExtensions:(id *)outExtensions;
- (id)widgetEnvironmentDataForBundleIdentifier:(id)identifier;
- (void)_queue_addClient:(id)client;
- (void)_queue_createConnection;
- (void)_queue_invalidateConnection;
- (void)_queue_notifyDevicesDidChange:(id)change;
- (void)_queue_notifyDidReceiveActivityUpdate:(id)update payloadID:(id)d;
- (void)_queue_notifyExtensionsDidChange:(id)change generatedWithOptions:(id)options;
- (void)_queue_notifyHandleWidgetRelevanceEvent:(id)event;
- (void)_queue_notifyTimelineEntryRelevanceDidChange:(id)change;
- (void)_queue_removeClient:(id)client;
- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(id)prewarm timeout:(id)timeout completion:(id)completion;
- (void)activityDidUpdate:(id)update payloadID:(id)d;
- (void)addClient:(id)client;
- (void)allWidgetConfigurationsByHostWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchDescriptorsForContainerBundleIdentifier:(id)identifier completion:(id)completion;
- (void)flushPowerlog;
- (void)getAppIntentsXPCListenerEndpointForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)handleWidgetRelevanceEvent:(id)event;
- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion;
- (void)launchLiveActivityWithID:(id)d deviceID:(id)iD url:(id)url;
- (void)loadSuggestedWidget:(id)widget metrics:(id)metrics stackIdentifier:(id)identifier reason:(id)reason completion:(id)completion;
- (void)modifyDescriptorEnablement:(id)enablement completion:(id)completion;
- (void)nearbyDevicesDidChange:(id)change;
- (void)pairDevice:(id)device completion:(id)completion;
- (void)performDescriptorDiscoveryForHost:(id)host;
- (void)reloadDescriptorsForContainerBundleIdentifier:(id)identifier completion:(id)completion;
- (void)reloadWidgetRelevanceForExtensionIdentity:(id)identity kind:(id)kind completion:(id)completion;
- (void)removeClient:(id)client;
- (void)removeWidgetHost:(id)host;
- (void)retryStuckRemotePairings;
- (void)setCachedExtensions:(id)extensions withProviderOptions:(id)options;
- (void)suggestionBudgetsForStackIdentifiers:(id)identifiers completion:(id)completion;
- (void)timelineEntryRelevanceDidChange:(id)change;
- (void)updateWidgetHostActivationState:(id)state;
- (void)updateWidgetHostConfigurations:(id)configurations;
- (void)widgetExtensionsDidChange:(id)change;
@end

@implementation CHSChronoServicesConnection

+ (CHSChronoServicesConnection)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[CHSChronoServicesConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_0;

  return v3;
}

- (id)_subscribeToExtensions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(CHSServerSubscriptionResult);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke;
  v6[3] = &unk_1E7453110;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  if (v3)
  {
    objc_initWeak(&location, *(a1 + 32));
    v4 = *(*(a1 + 32) + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_111;
    v11[3] = &unk_1E7453CF8;
    objc_copyWeak(&v12, &location);
    v11[4] = *(a1 + 40);
    [v3 subscribeToExtensionsWithProviderOptions:v4 completion:v11];
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [*(*(*(a1 + 40) + 8) + 40) value];
      __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_cold_2(v6, buf, v5);
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "Completing extensions task failed; unable to obtain the remote target", buf, 2u);
    }

    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] serverUnavailable];
    [v8 setError:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_111(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v7)
    {
      [*(*(*(a1 + 32) + 8) + 40) setAssertion:v8];
      v11 = [v7 sequenceNumber];
      v12 = CHSLogChronoServices();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v7 extensions];
        v17 = 134218240;
        v18 = v11;
        v19 = 2048;
        v20 = [v13 count];
        _os_log_impl(&dword_195EB2000, v12, OS_LOG_TYPE_DEFAULT, "Subscription initial extensions box sequence %lu, with %lu extensions", &v17, 0x16u);
      }

      [*(*(*(a1 + 32) + 8) + 40) setValue:v7];
      [*(*(*(a1 + 32) + 8) + 40) setError:v9];
    }

    else if (v9)
    {
      v14 = CHSLogChronoServices();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v9 description];
        __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_111_cold_1(v15, &v17, v14);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

+ (void)_debugRestartServer
{
  v4 = objc_alloc_init(MEMORY[0x1E696AED8]);
  [v4 setLaunchPath:@"/usr/bin/killall"];
  [v4 setArguments:&unk_1F0A7A040];
  [v4 launch];
  [v4 waitUntilExit];
  v2 = dispatch_time(0, 1000000000);
  v3 = +[CHSChronoServicesConnection sharedInstance];
  dispatch_after(v2, v3[2], &__block_literal_global_4);
}

void __50__CHSChronoServicesConnection__debugRestartServer__block_invoke()
{
  v1 = +[CHSChronoServicesConnection sharedInstance];
  v0 = [v1 _queue_remoteTargetCreatingConnectionIfNecessary:1];
}

void __45__CHSChronoServicesConnection_sharedInstance__block_invoke()
{
  v0 = [[CHSChronoServicesConnection alloc] _initWithMachServiceName:@"com.apple.chronoservices" listenForReconnect:1];
  v1 = sharedInstance___sharedInstance_0;
  sharedInstance___sharedInstance_0 = v0;
}

+ (id)ncBridgeConnection
{
  if (ncBridgeConnection_onceToken != -1)
  {
    +[CHSChronoServicesConnection ncBridgeConnection];
  }

  v3 = ncBridgeConnection___sharedInstance;

  return v3;
}

void __49__CHSChronoServicesConnection_ncBridgeConnection__block_invoke()
{
  v0 = [[CHSChronoServicesConnection alloc] _initWithMachServiceName:@"com.apple.chronoservices.chronodbridge" listenForReconnect:0];
  v1 = ncBridgeConnection___sharedInstance;
  ncBridgeConnection___sharedInstance = v0;
}

- (CHSChronoServicesConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSChronoServicesConnection.m" lineNumber:114 description:@"use +sharedInstance"];

  return 0;
}

- (id)_initWithMachServiceName:(id)name listenForReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  v72 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v67.receiver = self;
  v67.super_class = CHSChronoServicesConnection;
  v7 = [(CHSChronoServicesConnection *)&v67 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    machServiceName = v7->_machServiceName;
    v7->_machServiceName = v8;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    queue_observers = v7->_queue_observers;
    v7->_queue_observers = weakObjectsHashTable;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    queue_extensionProviderOptionsByClient = v7->_queue_extensionProviderOptionsByClient;
    v7->_queue_extensionProviderOptionsByClient = weakToStrongObjectsMapTable;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.chronoservices.CHSChronoServicesConnection", v14);
    queue = v7->_queue;
    v7->_queue = v15;

    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.chronoservices.CHSChronoServicesConnection.call-out", v17);
    callOutQueue = v7->_callOutQueue;
    v7->_callOutQueue = v18;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    queue_widgetHostsByHostIdentifier = v7->_queue_widgetHostsByHostIdentifier;
    v7->_queue_widgetHostsByHostIdentifier = dictionary;

    v7->_serverStartupToken = -1;
    p_serverStartupToken = &v7->_serverStartupToken;
    if (!reconnectCopy)
    {
LABEL_8:
      v26 = [CHSServerSubscription alloc];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke_2;
      v63[3] = &unk_1E74539B0;
      v27 = v7;
      v64 = v27;
      v28 = [(CHSServerSubscription *)v26 initWithIdentifier:@"extensions" serverSubscriptionBlock:v63];
      notQueue_extensionsSubscription = v27->_notQueue_extensionsSubscription;
      v27->_notQueue_extensionsSubscription = v28;

      v30 = [CHSServerSubscription alloc];
      v61[0] = MEMORY[0x1E69E9820];
      v61[1] = 3221225472;
      v61[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke_3;
      v61[3] = &unk_1E74539B0;
      v31 = v27;
      v62 = v31;
      v32 = [(CHSServerSubscription *)v30 initWithIdentifier:@"remoteDevices" serverSubscriptionBlock:v61];
      notQueue_remoteDevicesSubscription = v31->_notQueue_remoteDevicesSubscription;
      v31->_notQueue_remoteDevicesSubscription = v32;

      v34 = [CHSServerSubscription alloc];
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke_4;
      v59[3] = &unk_1E74539B0;
      v35 = v31;
      v60 = v35;
      v36 = [(CHSServerSubscription *)v34 initWithIdentifier:@"timelineEntryRelevance" serverSubscriptionBlock:v59];
      notQueue_timelineEntryRelevanceSubscription = v35->_notQueue_timelineEntryRelevanceSubscription;
      v35->_notQueue_timelineEntryRelevanceSubscription = v36;

      v38 = [CHSServerSubscription alloc];
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke_5;
      v57[3] = &unk_1E74539B0;
      v39 = v35;
      v58 = v39;
      v40 = [(CHSServerSubscription *)v38 initWithIdentifier:@"widgetRelevance" serverSubscriptionBlock:v57];
      notQueue_widgetRelevanceSubscription = v39->_notQueue_widgetRelevanceSubscription;
      v39->_notQueue_widgetRelevanceSubscription = v40;

      v42 = [CHSServerSubscription alloc];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke_6;
      v55[3] = &unk_1E74539B0;
      v43 = v39;
      v56 = v43;
      v44 = [(CHSServerSubscription *)v42 initWithIdentifier:@"activityService" serverSubscriptionBlock:v55];
      notQueue_activityServiceSubscription = v43->_notQueue_activityServiceSubscription;
      v43->_notQueue_activityServiceSubscription = v44;

      v46 = MEMORY[0x1E695DFD8];
      v47 = v31->_notQueue_remoteDevicesSubscription;
      v69[0] = v27->_notQueue_extensionsSubscription;
      v69[1] = v47;
      v48 = v39->_notQueue_widgetRelevanceSubscription;
      v69[2] = v35->_notQueue_timelineEntryRelevanceSubscription;
      v69[3] = v48;
      v69[4] = v43->_notQueue_activityServiceSubscription;
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:5];
      v50 = [v46 setWithArray:v49];
      notQueue_subscriptions = v43->_notQueue_subscriptions;
      v43->_notQueue_subscriptions = v50;

      goto LABEL_9;
    }

    v68[0] = 0;
    if (!ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
    {
      v68[1] = MEMORY[0x1E69E9820];
      v68[2] = 3221225472;
      v68[3] = __ProactiveSuggestionClientModelLibraryCore_block_invoke;
      v68[4] = &__block_descriptor_40_e5_v8__0l;
      v68[5] = v68;
      v70 = xmmword_1E7453D90;
      v71 = 0;
      ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = _sl_dlopen();
    }

    if (ProactiveSuggestionClientModelLibraryCore_frameworkLibrary)
    {
      v23 = v68[0];
      if (!v68[0])
      {
LABEL_7:
        v24 = CHSChronodStartupNotification;
        v25 = v7->_queue;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __75__CHSChronoServicesConnection__initWithMachServiceName_listenForReconnect___block_invoke;
        handler[3] = &unk_1E7453988;
        v66 = v7;
        notify_register_dispatch(v24, p_serverStartupToken, v25, handler);

        goto LABEL_8;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      p_serverStartupToken = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ProactiveSuggestionClientModelLibrary(void)"];
      [currentHandler handleFailureInFunction:p_serverStartupToken file:@"CHSChronoServicesConnection.m" lineNumber:43 description:{@"%s", v68[0]}];

      __break(1u);
    }

    free(v23);
    goto LABEL_7;
  }

LABEL_9:

  v52 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  serverStartupToken = self->_serverStartupToken;
  if (serverStartupToken != -1)
  {
    notify_cancel(serverStartupToken);
  }

  v4.receiver = self;
  v4.super_class = CHSChronoServicesConnection;
  [(CHSChronoServicesConnection *)&v4 dealloc];
}

- (id)cachedExtensionsWithOptions:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CHSChronoServicesConnection_cachedExtensionsWithOptions___block_invoke;
  block[3] = &unk_1E74539D8;
  v16 = &v17;
  v6 = optionsCopy;
  v14 = v6;
  selfCopy = self;
  dispatch_sync(queue, block);
  if (*(v18 + 24) == 1)
  {
    cachedValue = [(CHSServerSubscription *)self->_notQueue_extensionsSubscription cachedValue];
    extensions = [cachedValue extensions];
    v9 = [(CHSChronoServicesConnection *)self _filterExtensions:extensions toOptions:v6];
  }

  else
  {
    cachedValue = CHSLogChronoServices();
    if (os_log_type_enabled(cachedValue, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 description];
      *buf = 138543362;
      v22 = v10;
      _os_log_impl(&dword_195EB2000, cachedValue, OS_LOG_TYPE_DEFAULT, "cachedExtensionsWithOptions: Not using cache for %{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t __59__CHSChronoServicesConnection_cachedExtensionsWithOptions___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isSubsetOf:*(*(a1 + 40) + 64)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CHSChronoServicesConnection_addClient___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CHSChronoServicesConnection_removeClient___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (id)allPairedDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = MEMORY[0x1E695E0F0];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__CHSChronoServicesConnection_allPairedDevices__block_invoke;
  v5[3] = &unk_1E7453110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __47__CHSChronoServicesConnection_allPairedDevices__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__CHSChronoServicesConnection_allPairedDevices__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 allPairedDevices];
    v6 = [v5 devices];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__CHSChronoServicesConnection_allPairedDevices__block_invoke_cold_2();
    }
  }
}

- (void)pairDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CHSChronoServicesConnection_pairDevice_completion___block_invoke;
  block[3] = &unk_1E7453160;
  v12 = deviceCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_sync(queue, block);
}

void __53__CHSChronoServicesConnection_pairDevice_completion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Pairing device %@", &v11, 0xCu);
  }

  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __53__CHSChronoServicesConnection_pairDevice_completion___block_invoke_cold_1();
  }

  v5 = [*(a1 + 40) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v6 = v5;
  if (v5)
  {
    [v5 pairDeviceWith:*(a1 + 32) completion:*(a1 + 48)];
  }

  else
  {
    v7 = CHSLogChronoServices();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__CHSChronoServicesConnection_pairDevice_completion___block_invoke_cold_2();
    }

    v8 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v8 + 16))(v8, v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)unpairDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__CHSChronoServicesConnection_unpairDevice_error___block_invoke;
  v11[3] = &unk_1E7453A00;
  v8 = deviceCopy;
  v12 = v8;
  selfCopy = self;
  v14 = &v16;
  v15 = &v20;
  dispatch_sync(queue, v11);
  if (error)
  {
    *error = v21[5];
  }

  v9 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void __50__CHSChronoServicesConnection_unpairDevice_error___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Unpairing device %@", buf, 0xCu);
  }

  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __50__CHSChronoServicesConnection_unpairDevice_error___block_invoke_cold_1();
  }

  v5 = [*(a1 + 40) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 56) + 8);
    obj = *(v8 + 40);
    v9 = [v5 unpairDeviceWith:v7 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(*(a1 + 48) + 8) + 24) = v9;
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] serverUnavailable];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v13 = CHSLogChronoServices();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __50__CHSChronoServicesConnection_unpairDevice_error___block_invoke_cold_2();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (BOOL)toggleRemoteWidgetsEnabled:(BOOL)enabled error:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__CHSChronoServicesConnection_toggleRemoteWidgetsEnabled_error___block_invoke;
  v8[3] = &unk_1E7453A28;
  enabledCopy = enabled;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = &v14;
  dispatch_sync(queue, v8);
  if (error)
  {
    *error = v15[5];
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v6;
}

void __64__CHSChronoServicesConnection_toggleRemoteWidgetsEnabled_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 56))
    {
      v3 = "enabled";
    }

    else
    {
      v3 = "disabled";
    }

    *buf = 136315138;
    v15 = v3;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Setting remote widgets to %s", buf, 0xCu);
  }

  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __64__CHSChronoServicesConnection_toggleRemoteWidgetsEnabled_error___block_invoke_cold_1();
  }

  v5 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v7 = *(*(a1 + 48) + 8);
    obj = *(v7 + 40);
    v8 = [v5 toggleRemoteWidgetsEnabled:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v8;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] serverUnavailable];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__CHSChronoServicesConnection_toggleRemoteWidgetsEnabled_error___block_invoke_cold_2();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)reloadRemoteWidgetsWithError:(id *)error
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CHSChronoServicesConnection_reloadRemoteWidgetsWithError___block_invoke;
  block[3] = &unk_1E7453478;
  block[4] = self;
  block[5] = &v8;
  block[6] = &v12;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v13[5];
  }

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);

  return v5;
}

void __60__CHSChronoServicesConnection_reloadRemoteWidgetsWithError___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Reloading remote widgets", buf, 2u);
  }

  v3 = CHSLogChronoServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __60__CHSChronoServicesConnection_reloadRemoteWidgetsWithError___block_invoke_cold_1();
  }

  v4 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v5 = v4;
  if (v4)
  {
    v6 = *(*(a1 + 48) + 8);
    obj = *(v6 + 40);
    v7 = [v4 reloadRemoteWidgetsWithError:&obj];
    objc_storeStrong((v6 + 40), obj);
    *(*(*(a1 + 40) + 8) + 24) = v7;
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] serverUnavailable];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = CHSLogChronoServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __60__CHSChronoServicesConnection_reloadRemoteWidgetsWithError___block_invoke_cold_2();
    }
  }
}

- (BOOL)remoteWidgetsEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CHSChronoServicesConnection_remoteWidgetsEnabled__block_invoke;
  v5[3] = &unk_1E7453110;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __51__CHSChronoServicesConnection_remoteWidgetsEnabled__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__CHSChronoServicesConnection_remoteWidgetsEnabled__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v3 remoteWidgetsEnabled];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __51__CHSChronoServicesConnection_remoteWidgetsEnabled__block_invoke_cold_2();
    }
  }
}

- (void)flushPowerlog
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CHSChronoServicesConnection_flushPowerlog__block_invoke;
  block[3] = &unk_1E74530E8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__CHSChronoServicesConnection_flushPowerlog__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 32) == 1)
  {
    v2 = CHSLogChronoServices();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __44__CHSChronoServicesConnection_flushPowerlog__block_invoke_cold_1();
    }

    v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:0];
    v4 = v3;
    if (v3)
    {
      [v3 flushPowerlog];
    }
  }
}

- (void)retryStuckRemotePairings
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CHSChronoServicesConnection_retryStuckRemotePairings__block_invoke;
  block[3] = &unk_1E74530E8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__CHSChronoServicesConnection_retryStuckRemotePairings__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __55__CHSChronoServicesConnection_retryStuckRemotePairings__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 retryStuckRemotePairings];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__CHSChronoServicesConnection_retryStuckRemotePairings__block_invoke_cold_2();
    }
  }
}

- (void)modifyDescriptorEnablement:(id)enablement completion:(id)completion
{
  enablementCopy = enablement;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CHSChronoServicesConnection_modifyDescriptorEnablement_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = enablementCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = enablementCopy;
  dispatch_async(queue, block);
}

void __69__CHSChronoServicesConnection_modifyDescriptorEnablement_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__CHSChronoServicesConnection_modifyDescriptorEnablement_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 modifyDescriptorEnablement:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__CHSChronoServicesConnection_modifyDescriptorEnablement_completion___block_invoke_cold_2();
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)performDescriptorDiscoveryForHost:(id)host
{
  hostCopy = host;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__CHSChronoServicesConnection_performDescriptorDiscoveryForHost___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = hostCopy;
  v6 = hostCopy;
  dispatch_async(queue, v7);
}

void __65__CHSChronoServicesConnection_performDescriptorDiscoveryForHost___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__CHSChronoServicesConnection_performDescriptorDiscoveryForHost___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 performDescriptorDiscoveryForHost:*(a1 + 40)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__CHSChronoServicesConnection_performDescriptorDiscoveryForHost___block_invoke_cold_2();
    }
  }
}

- (void)reloadDescriptorsForContainerBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__CHSChronoServicesConnection_reloadDescriptorsForContainerBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __88__CHSChronoServicesConnection_reloadDescriptorsForContainerBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __88__CHSChronoServicesConnection_reloadDescriptorsForContainerBundleIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 reloadDescriptorsForContainerBundleIdentifier:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __88__CHSChronoServicesConnection_reloadDescriptorsForContainerBundleIdentifier_completion___block_invoke_cold_2();
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (void)fetchDescriptorsForContainerBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__CHSChronoServicesConnection_fetchDescriptorsForContainerBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __87__CHSChronoServicesConnection_fetchDescriptorsForContainerBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __87__CHSChronoServicesConnection_fetchDescriptorsForContainerBundleIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 fetchDescriptorsForContainerBundleIdentifier:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __87__CHSChronoServicesConnection_fetchDescriptorsForContainerBundleIdentifier_completion___block_invoke_cold_2();
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (BOOL)reloadTimeline:(id)timeline error:(id *)error
{
  timelineCopy = timeline;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CHSChronoServicesConnection_reloadTimeline_error___block_invoke;
  block[3] = &unk_1E7453A50;
  block[4] = self;
  v8 = timelineCopy;
  v12 = v8;
  v13 = &v14;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v15[5];
  }

  v9 = v15[5] == 0;

  _Block_object_dispose(&v14, 8);
  return v9;
}

void __52__CHSChronoServicesConnection_reloadTimeline_error___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __52__CHSChronoServicesConnection_reloadTimeline_error___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 48) + 8);
    v12 = *(v6 + 40);
    [v3 reloadTimeline:v5 error:&v12];
    v7 = v12;
    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] serverUnavailable];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__CHSChronoServicesConnection_reloadTimeline_error___block_invoke_cold_2();
    }
  }
}

- (id)widgetEnvironmentDataForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CHSChronoServicesConnection_widgetEnvironmentDataForBundleIdentifier___block_invoke;
  block[3] = &unk_1E7453A78;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __72__CHSChronoServicesConnection_widgetEnvironmentDataForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __72__CHSChronoServicesConnection_widgetEnvironmentDataForBundleIdentifier___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 widgetEnvironmentDataForBundleIdentifier:*(a1 + 40)];
  }

  else
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __72__CHSChronoServicesConnection_widgetEnvironmentDataForBundleIdentifier___block_invoke_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v5;
}

- (id)_URLSessionDidCompleteForExtensionWithBundleIdentifier:(id)identifier info:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  queue = self->_queue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CHSChronoServicesConnection__URLSessionDidCompleteForExtensionWithBundleIdentifier_info___block_invoke;
  v13[3] = &unk_1E7453AA0;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = infoCopy;
  v16 = &v17;
  v9 = infoCopy;
  v10 = identifierCopy;
  dispatch_sync(queue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __91__CHSChronoServicesConnection__URLSessionDidCompleteForExtensionWithBundleIdentifier_info___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __91__CHSChronoServicesConnection__URLSessionDidCompleteForExtensionWithBundleIdentifier_info___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _URLSessionDidCompleteForExtensionWithBundleIdentifier:*(a1 + 40) info:*(a1 + 48)];
  }

  else
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__CHSChronoServicesConnection__URLSessionDidCompleteForExtensionWithBundleIdentifier_info___block_invoke_cold_2();
    }

    v5 = 0;
  }

  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

- (void)removeWidgetHost:(id)host
{
  hostCopy = host;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CHSChronoServicesConnection_removeWidgetHost___block_invoke;
  v7[3] = &unk_1E7453000;
  v8 = hostCopy;
  selfCopy = self;
  v6 = hostCopy;
  dispatch_async(queue, v7);
}

void __48__CHSChronoServicesConnection_removeWidgetHost___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  [*(*(a1 + 40) + 56) setObject:0 forKeyedSubscript:v2];
  v3 = CHSLogChronoServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __48__CHSChronoServicesConnection_removeWidgetHost___block_invoke_cold_1();
  }

  v4 = [*(a1 + 40) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v5 = v4;
  if (v4)
  {
    [v4 removeWidgetHostWithIdentifier:v2];
  }

  else
  {
    v6 = CHSLogChronoServices();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __48__CHSChronoServicesConnection_removeWidgetHost___block_invoke_cold_2(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)updateWidgetHostConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke;
  v7[3] = &unk_1E7453000;
  v8 = configurationsCopy;
  selfCopy = self;
  v6 = configurationsCopy;
  dispatch_async(queue, v7);
}

void __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  [*(*(a1 + 40) + 56) setObject:*(a1 + 32) forKeyedSubscript:v2];
  v3 = CHSLogChronoServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke_cold_1(v2, v3);
  }

  v4 = [*(a1 + 40) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  if (v4)
  {
    v5 = [*(a1 + 32) configuration];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "activationState")}];
    [v4 setWidgetConfiguration:v5 activationState:v6 forWidgetHostWithIdentifier:v2];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke_cold_2(v2, v5, v7, v8, v9, v10, v11, v12);
    }
  }
}

- (void)updateWidgetHostActivationState:(id)state
{
  stateCopy = state;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CHSChronoServicesConnection_updateWidgetHostActivationState___block_invoke;
  v7[3] = &unk_1E7453000;
  v8 = stateCopy;
  selfCopy = self;
  v6 = stateCopy;
  dispatch_async(queue, v7);
}

void __63__CHSChronoServicesConnection_updateWidgetHostActivationState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  [*(*(a1 + 40) + 56) setObject:*(a1 + 32) forKeyedSubscript:v2];
  v3 = CHSLogChronoServices();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__CHSChronoServicesConnection_updateWidgetHostActivationState___block_invoke_cold_1();
  }

  v4 = [*(a1 + 40) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  if (v4)
  {
    v5 = [*(a1 + 32) identifier];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "activationState")}];
    [v4 setActivationState:v6 forWidgetHostWithIdentifier:v5];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __63__CHSChronoServicesConnection_updateWidgetHostActivationState___block_invoke_cold_2();
    }
  }
}

- (void)allWidgetConfigurationsByHostWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__CHSChronoServicesConnection_allWidgetConfigurationsByHostWithCompletion___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __75__CHSChronoServicesConnection_allWidgetConfigurationsByHostWithCompletion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __75__CHSChronoServicesConnection_allWidgetConfigurationsByHostWithCompletion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 allWidgetConfigurationsByHostWithCompletion:*(a1 + 40)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__CHSChronoServicesConnection_allWidgetConfigurationsByHostWithCompletion___block_invoke_cold_2();
    }

    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v6 + 16))(v6, 0, v7);
  }
}

- (void)getAppIntentsXPCListenerEndpointForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__CHSChronoServicesConnection_getAppIntentsXPCListenerEndpointForBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __94__CHSChronoServicesConnection_getAppIntentsXPCListenerEndpointForBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __94__CHSChronoServicesConnection_getAppIntentsXPCListenerEndpointForBundleIdentifier_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 getAppIntentsXPCListenerEndpointForBundleIdentifier:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __94__CHSChronoServicesConnection_getAppIntentsXPCListenerEndpointForBundleIdentifier_completion___block_invoke_cold_2();
    }

    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(v6 + 16))(v6, 0, 0, v7);
  }
}

- (void)launchLiveActivityWithID:(id)d deviceID:(id)iD url:(id)url
{
  dCopy = d;
  iDCopy = iD;
  urlCopy = url;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__CHSChronoServicesConnection_launchLiveActivityWithID_deviceID_url___block_invoke;
  v15[3] = &unk_1E7453AC8;
  v15[4] = self;
  v16 = dCopy;
  v17 = iDCopy;
  v18 = urlCopy;
  v12 = urlCopy;
  v13 = iDCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __69__CHSChronoServicesConnection_launchLiveActivityWithID_deviceID_url___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __69__CHSChronoServicesConnection_launchLiveActivityWithID_deviceID_url___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 launchLiveActivityWithID:*(a1 + 40) deviceID:*(a1 + 48) url:*(a1 + 56)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __69__CHSChronoServicesConnection_launchLiveActivityWithID_deviceID_url___block_invoke_cold_2();
    }
  }
}

- (id)subscribeToExtensions:(id *)extensions fromClient:(id)client withOptions:(id)options outExtensions:(id *)outExtensions
{
  clientCopy = client;
  optionsCopy = options;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke;
  block[3] = &unk_1E7453AF0;
  block[4] = self;
  v13 = optionsCopy;
  v31 = v13;
  v33 = &v34;
  v14 = clientCopy;
  v32 = v14;
  dispatch_sync(queue, block);
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__2;
  v28[4] = __Block_byref_object_dispose__2;
  notQueue_extensionsSubscription = self->_notQueue_extensionsSubscription;
  v27 = 0;
  v16 = [(CHSServerSubscription *)notQueue_extensionsSubscription subscribeWithResult:&v27 forcingServerUpdate:*(v35 + 24) error:extensions];
  v17 = v27;
  v29 = v16;
  objc_initWeak(&location, v14);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v20 = objc_alloc(MEMORY[0x1E698E778]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_69;
  v24[3] = &unk_1E7453B68;
  v24[4] = self;
  objc_copyWeak(&v25, &location);
  v24[5] = v28;
  v21 = [v20 initWithIdentifier:uUIDString forReason:@"extensionSubscription" invalidationBlock:v24];
  if (outExtensions)
  {
    extensions = [v17 extensions];
    *outExtensions = [(CHSChronoServicesConnection *)self _filterExtensions:extensions toOptions:v13];
  }

  objc_destroyWeak(&v25);

  objc_destroyWeak(&location);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(&v34, 8);

  return v21;
}

void __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 40) mergedWith:v2];
  *(*(*(a1 + 56) + 8) + 24) = [v2 isEqual:v3] ^ 1;
  [*(*(a1 + 32) + 48) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  objc_storeStrong((*(a1 + 32) + 64), v3);
  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 description];
    v6 = v5;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "Extension subscription updating options to %{public}@, forcing update %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_69(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = 0;
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_2;
  v4[3] = &unk_1E7453B40;
  objc_copyWeak(&v5, (a1 + 48));
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v6;
  v4[6] = v3;
  dispatch_async(v2, v4);
  objc_destroyWeak(&v5);
  _Block_object_dispose(v6, 8);
}

void __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "Extension subscription count reduced; adjusting server subscription and publishing results.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 48) removeObjectForKey:WeakRetained];
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 48) count] != 0;
  v4 = [[CHSWidgetExtensionProviderOptions alloc] initWithWidgetsPredicate:0 controlsPredicate:0 includeIntents:0];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(*(a1 + 32) + 48);
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      v8 = 0;
      v9 = v4;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(a1 + 32) + 48) objectForKey:*(*(&v17 + 1) + 8 * v8)];
        v4 = [(CHSWidgetExtensionProviderOptions *)v9 mergedWith:v10];

        ++v8;
        v9 = v4;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  objc_storeStrong((*(a1 + 32) + 64), v4);
  v11 = CHSLogChronoServices();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(CHSWidgetExtensionProviderOptions *)v4 description];
    *buf = 138543362;
    v22 = v12;
    _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "Extension subscription updating options to %{public}@", buf, 0xCu);
  }

  v13 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_71;
  block[3] = &unk_1E7453B18;
  v16 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  block[4] = *(a1 + 32);
  dispatch_async(v13, block);

  v14 = *MEMORY[0x1E69E9840];
}

void __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_71(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(*(a1[5] + 8) + 40) invalidate];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    v4 = *(a1[4] + 96);
    v16 = 0;
    v5 = [v4 updateSubscription:&v16];
    v6 = v16;
    v7 = [v5 extensions];
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 count];
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "Extension subscription new extension count: %lu", buf, 0xCu);
    }

    v10 = a1[4];
    v11 = *(v10 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__CHSChronoServicesConnection_subscribeToExtensions_fromClient_withOptions_outExtensions___block_invoke_72;
    block[3] = &unk_1E7453000;
    block[4] = v10;
    v15 = v7;
    v12 = v7;
    dispatch_async(v11, block);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)loadSuggestedWidget:(id)widget metrics:(id)metrics stackIdentifier:(id)identifier reason:(id)reason completion:(id)completion
{
  widgetCopy = widget;
  metricsCopy = metrics;
  identifierCopy = identifier;
  reasonCopy = reason;
  completionCopy = completion;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __93__CHSChronoServicesConnection_loadSuggestedWidget_metrics_stackIdentifier_reason_completion___block_invoke;
  v23[3] = &unk_1E7453B90;
  v23[4] = self;
  v24 = widgetCopy;
  v25 = metricsCopy;
  v26 = identifierCopy;
  v27 = reasonCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = reasonCopy;
  v20 = identifierCopy;
  v21 = metricsCopy;
  v22 = widgetCopy;
  dispatch_async(queue, v23);
}

void __93__CHSChronoServicesConnection_loadSuggestedWidget_metrics_stackIdentifier_reason_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __93__CHSChronoServicesConnection_loadSuggestedWidget_metrics_stackIdentifier_reason_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 loadSuggestedWidget:*(a1 + 40) metrics:*(a1 + 48) stackIdentifier:*(a1 + 56) reason:*(a1 + 64) completion:*(a1 + 72)];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __93__CHSChronoServicesConnection_loadSuggestedWidget_metrics_stackIdentifier_reason_completion___block_invoke_cold_2();
    }
  }
}

- (void)suggestionBudgetsForStackIdentifiers:(id)identifiers completion:(id)completion
{
  identifiersCopy = identifiers;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifiersCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifiersCopy;
  dispatch_async(queue, block);
}

void __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  if (v3)
  {
    v4 = [CHSArrayBox boxedValue:*(a1 + 40)];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke_75;
    v6[3] = &unk_1E7453BB8;
    v7 = *(a1 + 48);
    [v3 suggestionBudgetsForStackIdentifiers:v4 completion:v6];

    v5 = v7;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke_cold_2();
    }
  }
}

void __79__CHSChronoServicesConnection_suggestionBudgetsForStackIdentifiers_completion___block_invoke_75(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 value];
  (*(v5 + 16))(v5, v6, v7);
}

- (id)acquireKeepAliveAssertionForExtensionBundleIdentifier:(id)identifier reason:(id)reason error:(id *)error
{
  identifierCopy = identifier;
  reasonCopy = reason;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__2;
  v30 = __Block_byref_object_dispose__2;
  v31 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__CHSChronoServicesConnection_acquireKeepAliveAssertionForExtensionBundleIdentifier_reason_error___block_invoke;
  block[3] = &unk_1E7453BE0;
  block[4] = self;
  v18 = &v26;
  v11 = identifierCopy;
  v16 = v11;
  v12 = reasonCopy;
  v17 = v12;
  v19 = &v20;
  dispatch_sync(queue, block);
  if (error)
  {
    *error = v21[5];
  }

  v13 = v27[5];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __98__CHSChronoServicesConnection_acquireKeepAliveAssertionForExtensionBundleIdentifier_reason_error___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __98__CHSChronoServicesConnection_acquireKeepAliveAssertionForExtensionBundleIdentifier_reason_error___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(*(a1 + 64) + 8);
    obj = 0;
    v8 = [v3 acquireKeepAliveAssertionForExtensionBundleIdentifier:v5 reason:v6 error:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = 56;
  }

  else
  {
    v10 = CHSLogChronoServices();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __98__CHSChronoServicesConnection_acquireKeepAliveAssertionForExtensionBundleIdentifier_reason_error___block_invoke_cold_2();
    }

    v8 = [MEMORY[0x1E696ABC0] serverUnavailable];
    v9 = 64;
  }

  v11 = *(*(a1 + v9) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
}

- (void)reloadWidgetRelevanceForExtensionIdentity:(id)identity kind:(id)kind completion:(id)completion
{
  identityCopy = identity;
  kindCopy = kind;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__CHSChronoServicesConnection_reloadWidgetRelevanceForExtensionIdentity_kind_completion___block_invoke;
  v15[3] = &unk_1E7453C08;
  v15[4] = self;
  v16 = identityCopy;
  v17 = kindCopy;
  v18 = completionCopy;
  v12 = kindCopy;
  v13 = identityCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __89__CHSChronoServicesConnection_reloadWidgetRelevanceForExtensionIdentity_kind_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __89__CHSChronoServicesConnection_reloadWidgetRelevanceForExtensionIdentity_kind_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 reloadWidgetRelevanceForExtensionIdentifier:*(a1 + 40) kind:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)invalidateRelevancesOfKind:(id)kind inBundle:(id)bundle completion:(id)completion
{
  kindCopy = kind;
  bundleCopy = bundle;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__CHSChronoServicesConnection_invalidateRelevancesOfKind_inBundle_completion___block_invoke;
  v15[3] = &unk_1E7453C08;
  v15[4] = self;
  v16 = kindCopy;
  v17 = bundleCopy;
  v18 = completionCopy;
  v12 = bundleCopy;
  v13 = kindCopy;
  v14 = completionCopy;
  dispatch_async(queue, v15);
}

void __78__CHSChronoServicesConnection_invalidateRelevancesOfKind_inBundle_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __78__CHSChronoServicesConnection_invalidateRelevancesOfKind_inBundle_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 invalidateRelevancesOfKind:*(a1 + 40) inBundle:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(*(a1 + 56) + 16))();
  }
}

- (void)acquireLifetimeAssertionForWidget:(id)widget metrics:(id)metrics prewarm:(id)prewarm timeout:(id)timeout completion:(id)completion
{
  widgetCopy = widget;
  metricsCopy = metrics;
  prewarmCopy = prewarm;
  timeoutCopy = timeout;
  completionCopy = completion;
  queue = self->_queue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__CHSChronoServicesConnection_acquireLifetimeAssertionForWidget_metrics_prewarm_timeout_completion___block_invoke;
  v23[3] = &unk_1E7453C30;
  v23[4] = self;
  v24 = widgetCopy;
  v25 = metricsCopy;
  v26 = prewarmCopy;
  v27 = timeoutCopy;
  v28 = completionCopy;
  v18 = timeoutCopy;
  v19 = prewarmCopy;
  v20 = metricsCopy;
  v21 = widgetCopy;
  v22 = completionCopy;
  dispatch_async(queue, v23);
}

void __100__CHSChronoServicesConnection_acquireLifetimeAssertionForWidget_metrics_prewarm_timeout_completion___block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __100__CHSChronoServicesConnection_acquireLifetimeAssertionForWidget_metrics_prewarm_timeout_completion___block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    [v3 acquireLifetimeAssertionForWidget:*(a1 + 40) metrics:*(a1 + 48) prewarm:*(a1 + 56) timeout:*(a1 + 64) completion:*(a1 + 72)];
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] serverUnavailable];
    (*(*(a1 + 72) + 16))();
  }
}

- (void)timelineEntryRelevanceDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  timelineRelevanceEntries = [changeCopy timelineRelevanceEntries];
  [(CHSServerSubscription *)self->_notQueue_timelineEntryRelevanceSubscription setCachedValue:timelineRelevanceEntries];
  v7 = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__CHSChronoServicesConnection_timelineEntryRelevanceDidChange___block_invoke;
  v9[3] = &unk_1E7453000;
  v9[4] = self;
  v10 = timelineRelevanceEntries;
  v8 = timelineRelevanceEntries;
  dispatch_async(v7, v9);
}

- (void)widgetExtensionsDidChange:(id)change
{
  v31 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  sequenceNumber = [changeCopy sequenceNumber];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v7 = CHSLogChronoServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    extensions = [changeCopy extensions];
    v9 = [extensions count];
    *buf = 134218240;
    v28 = sequenceNumber;
    v29 = 2048;
    v30 = v9;
    _os_log_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEFAULT, "Received extensions box sequence %lu, with %lu extensions", buf, 0x16u);
  }

  notQueue_extensionsSubscription = self->_notQueue_extensionsSubscription;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__CHSChronoServicesConnection_widgetExtensionsDidChange___block_invoke;
  v17[3] = &unk_1E7453C58;
  v19 = &v21;
  v20 = sequenceNumber;
  v11 = changeCopy;
  v18 = v11;
  [(CHSServerSubscription *)notQueue_extensionsSubscription updateCachedValue:v17];
  if (v22[5])
  {
    v12 = self->_queue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__CHSChronoServicesConnection_widgetExtensionsDidChange___block_invoke_78;
    v14[3] = &unk_1E7453A78;
    v14[4] = self;
    v16 = &v21;
    v15 = v11;
    dispatch_async(v12, v14);
  }

  _Block_object_dispose(&v21, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void *__57__CHSChronoServicesConnection_widgetExtensionsDidChange___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4 <= [v3 sequenceNumber])
  {
    v9 = CHSLogChronoServices();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 48);
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_195EB2000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring stale extensions box change %lu", &v14, 0xCu);
    }

    v8 = v3;
  }

  else
  {
    v5 = [*(a1 + 32) extensions];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = *(a1 + 32);
  }

  v11 = v8;

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void __57__CHSChronoServicesConnection_widgetExtensionsDidChange___block_invoke_78(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 40);
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) options];
  [v2 _queue_notifyExtensionsDidChange:v1 generatedWithOptions:?];
}

- (void)handleWidgetRelevanceEvent:(id)event
{
  eventCopy = event;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v6 = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__CHSChronoServicesConnection_handleWidgetRelevanceEvent___block_invoke;
  v8[3] = &unk_1E7453000;
  v8[4] = self;
  v9 = eventCopy;
  v7 = eventCopy;
  dispatch_async(v6, v8);
}

- (void)nearbyDevicesDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  devices = [changeCopy devices];
  [(CHSServerSubscription *)self->_notQueue_remoteDevicesSubscription setCachedValue:devices];
  v7 = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__CHSChronoServicesConnection_nearbyDevicesDidChange___block_invoke;
  v9[3] = &unk_1E7453000;
  v9[4] = self;
  v10 = devices;
  v8 = devices;
  dispatch_async(v7, v9);
}

- (void)activityDidUpdate:(id)update payloadID:(id)d
{
  updateCopy = update;
  dCopy = d;
  queue = self->_queue;
  BSDispatchQueueAssertNot();
  v9 = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CHSChronoServicesConnection_activityDidUpdate_payloadID___block_invoke;
  block[3] = &unk_1E7453278;
  block[4] = self;
  v13 = updateCopy;
  v14 = dCopy;
  v10 = dCopy;
  v11 = updateCopy;
  dispatch_async(v9, block);
}

- (void)_queue_notifyDevicesDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = CHSLogChronoServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [changeCopy count];
    _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "Notifying of %lu remote devices changed.", buf, 0xCu);
  }

  v7 = [(NSHashTable *)self->_queue_observers copy];
  callOutQueue = self->_callOutQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__CHSChronoServicesConnection__queue_notifyDevicesDidChange___block_invoke;
  v12[3] = &unk_1E7453000;
  v13 = v7;
  v14 = changeCopy;
  v9 = changeCopy;
  v10 = v7;
  dispatch_async(callOutQueue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __61__CHSChronoServicesConnection__queue_notifyDevicesDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 nearbyDevicesDidChange:{*(a1 + 40), v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyExtensionsDidChange:(id)change generatedWithOptions:(id)options
{
  v33 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  optionsCopy = options;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v9 = [(NSHashTable *)self->_queue_observers copy];
  v10 = CHSLogChronoServices();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    v12 = [changeCopy count];
    v13 = [optionsCopy description];
    *buf = 134218498;
    v28 = v11;
    v29 = 2048;
    v30 = v12;
    v31 = 2112;
    v32 = v13;
    _os_log_impl(&dword_195EB2000, v10, OS_LOG_TYPE_DEFAULT, "Notifying %lu clients of %lu widget extensions changed for opt %@.", buf, 0x20u);
  }

  v14 = [(NSMapTable *)self->_queue_extensionProviderOptionsByClient copy];
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__CHSChronoServicesConnection__queue_notifyExtensionsDidChange_generatedWithOptions___block_invoke;
  block[3] = &unk_1E7453C80;
  v22 = v9;
  v23 = v14;
  v24 = optionsCopy;
  selfCopy = self;
  v26 = changeCopy;
  v16 = changeCopy;
  v17 = optionsCopy;
  v18 = v14;
  v19 = v9;
  dispatch_async(callOutQueue, block);

  v20 = *MEMORY[0x1E69E9840];
}

void __85__CHSChronoServicesConnection__queue_notifyExtensionsDidChange_generatedWithOptions___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v2)
  {
    v17 = *v19;
    *&v3 = 134218242;
    v15 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * v4);
        if (objc_opt_respondsToSelector())
        {
          v6 = [*(a1 + 40) objectForKey:v5];
          v7 = v6;
          if (*(a1 + 48) && ![v6 isSubsetOf:?])
          {
            v8 = CHSLogChronoServices();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [v7 description];
              *buf = v15;
              v23 = v5;
              v24 = 2114;
              v25 = v12;
              _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "Not notifying client:%p because options don't match, wanted %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v8 = [*(a1 + 56) _filterExtensions:*(a1 + 64) toOptions:{v7, v15}];
            v9 = CHSLogChronoServices();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = [v8 count];
              v11 = [v7 description];
              *buf = 134218498;
              v23 = v5;
              v24 = 2048;
              v25 = v10;
              v26 = 2114;
              v27 = v11;
              _os_log_impl(&dword_195EB2000, v9, OS_LOG_TYPE_DEFAULT, "Notifying client:%p of %lu widget extensions changed, opts: %{public}@.", buf, 0x20u);
            }

            [v5 widgetExtensionsDidChange:v8];
          }
        }

        ++v4;
      }

      while (v2 != v4);
      v13 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      v2 = v13;
    }

    while (v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_filterExtensions:(id)extensions toOptions:(id)options
{
  v35 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__CHSChronoServicesConnection__filterExtensions_toOptions___block_invoke;
  v32[3] = &unk_1E7453CA8;
  v23 = optionsCopy;
  v33 = v23;
  v20 = [extensions bs_filter:v32];
  v22 = [MEMORY[0x1E695DFA8] set];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v20;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v28 + 1) + 8 * i);
        orderedWidgetDescriptors = [v9 orderedWidgetDescriptors];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __59__CHSChronoServicesConnection__filterExtensions_toOptions___block_invoke_2;
        v26[3] = &unk_1E7453138;
        v11 = v23;
        v27 = v11;
        v12 = [orderedWidgetDescriptors bs_filter:v26];

        orderedControlDescriptors = [v9 orderedControlDescriptors];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __59__CHSChronoServicesConnection__filterExtensions_toOptions___block_invoke_3;
        v24[3] = &unk_1E7453780;
        v25 = v11;
        v14 = [orderedControlDescriptors bs_filter:v24];

        v15 = [v9 mutableCopy];
        [v15 setOrderedWidgetDescriptors:v12];
        [v15 setOrderedControlDescriptors:v14];
        v16 = [v15 copy];
        [v22 addObject:v16];
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v6);
  }

  v17 = [v22 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)_queue_notifyTimelineEntryRelevanceDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = CHSLogChronoServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v16 = [changeCopy count];
    _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "Notifying of %lu timeline entry relevance sets changed.", buf, 0xCu);
  }

  v7 = [(NSHashTable *)self->_queue_observers copy];
  callOutQueue = self->_callOutQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__CHSChronoServicesConnection__queue_notifyTimelineEntryRelevanceDidChange___block_invoke;
  v12[3] = &unk_1E7453000;
  v13 = v7;
  v14 = changeCopy;
  v9 = changeCopy;
  v10 = v7;
  dispatch_async(callOutQueue, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __76__CHSChronoServicesConnection__queue_notifyTimelineEntryRelevanceDidChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 timelineEntryRelevanceDidChange:{*(a1 + 40), v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyHandleWidgetRelevanceEvent:(id)event
{
  v18 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = CHSLogChronoServices();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [eventCopy description];
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_195EB2000, v6, OS_LOG_TYPE_DEFAULT, "Notifying of widget relevance event %@", buf, 0xCu);
  }

  v8 = [(NSHashTable *)self->_queue_observers copy];
  callOutQueue = self->_callOutQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__CHSChronoServicesConnection__queue_notifyHandleWidgetRelevanceEvent___block_invoke;
  v13[3] = &unk_1E7453000;
  v14 = v8;
  v15 = eventCopy;
  v10 = eventCopy;
  v11 = v8;
  dispatch_async(callOutQueue, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __71__CHSChronoServicesConnection__queue_notifyHandleWidgetRelevanceEvent___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 handleWidgetRelevanceEvent:{*(a1 + 40), v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_queue_notifyDidReceiveActivityUpdate:(id)update payloadID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  dCopy = d;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v9 = CHSLogChronoServices();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = updateCopy;
    v22 = 2112;
    v23 = dCopy;
    _os_log_impl(&dword_195EB2000, v9, OS_LOG_TYPE_DEFAULT, "Notifying of activity update %@ payload ID %@", buf, 0x16u);
  }

  v10 = [(NSHashTable *)self->_queue_observers copy];
  callOutQueue = self->_callOutQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CHSChronoServicesConnection__queue_notifyDidReceiveActivityUpdate_payloadID___block_invoke;
  block[3] = &unk_1E7453278;
  v17 = v10;
  v18 = updateCopy;
  v19 = dCopy;
  v12 = dCopy;
  v13 = updateCopy;
  v14 = v10;
  dispatch_async(callOutQueue, block);

  v15 = *MEMORY[0x1E69E9840];
}

void __79__CHSChronoServicesConnection__queue_notifyDidReceiveActivityUpdate_payloadID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_opt_respondsToSelector())
        {
          [v6 activityDidUpdate:*(a1 + 40) payloadID:{*(a1 + 48), v8}];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)_queue_remoteTargetCreatingConnectionIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  queue = self->_queue;
  BSDispatchQueueAssert();
  remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  if (remoteTarget)
  {
    v7 = 1;
  }

  else
  {
    v7 = !necessaryCopy;
  }

  if (!v7)
  {
    v8 = CHSLogChronoServices();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "Creating connection", v10, 2u);
    }

    [(CHSChronoServicesConnection *)self _queue_invalidateConnection];
    [(CHSChronoServicesConnection *)self _queue_createConnection];
    remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  }

  return remoteTarget;
}

- (void)_queue_createConnection
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (!self->_queue_connection)
  {
    v4 = MEMORY[0x1E698F498];
    machServiceName = self->_machServiceName;
    v6 = +[CHSChronoWidgetServiceSpecification identifier];
    v7 = [v4 endpointForMachName:machServiceName service:v6 instance:0];

    v8 = [MEMORY[0x1E698F490] connectionWithEndpoint:v7];
    queue_connection = self->_queue_connection;
    self->_queue_connection = v8;

    v10 = self->_queue_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke;
    v11[3] = &unk_1E7453570;
    v11[4] = self;
    [(BSServiceConnection *)v10 configureConnection:v11];
    [(BSServiceConnection *)self->_queue_connection activate];
  }
}

void __54__CHSChronoServicesConnection__queue_createConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CHSChronoWidgetServiceSpecification serviceQuality];
  [v3 setServiceQuality:v4];

  v5 = +[CHSChronoWidgetServiceSpecification interface];
  [v3 setInterface:v5];

  [v3 setInterfaceTarget:*(a1 + 32)];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_2;
  v8[3] = &unk_1E7453CD0;
  v8[4] = *(a1 + 32);
  [v3 setActivationHandler:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_5;
  v7[3] = &unk_1E7453CD0;
  v7[4] = *(a1 + 32);
  [v3 setInterruptionHandler:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_2_100;
  v6[3] = &unk_1E7453CD0;
  v6[4] = *(a1 + 32);
  [v3 setInvalidationHandler:v6];
}

void __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "chrono widget service (service-side) connection activated", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_96;
  block[3] = &unk_1E7453000;
  block[4] = v5;
  v7 = v3;
  v32 = v7;
  dispatch_async(v6, block);
  if ([*(*(a1 + 32) + 96) resubscribeIfNecessary])
  {
    v8 = [*(*(a1 + 32) + 96) cachedValue];
    v9 = [v8 extensions];
    v10 = *(a1 + 32);
    v11 = *(v10 + 16);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_2_97;
    v29[3] = &unk_1E7453000;
    v29[4] = v10;
    v30 = v9;
    v12 = v9;
    dispatch_async(v11, v29);
  }

  if ([*(*(a1 + 32) + 112) resubscribeIfNecessary])
  {
    v13 = [*(*(a1 + 32) + 112) cachedValue];
    v14 = *(a1 + 32);
    v15 = *(v14 + 16);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_3;
    v27[3] = &unk_1E7453000;
    v27[4] = v14;
    v28 = v13;
    v16 = v13;
    dispatch_async(v15, v27);
  }

  if ([*(*(a1 + 32) + 104) resubscribeIfNecessary])
  {
    v17 = [*(*(a1 + 32) + 104) cachedValue];
    v18 = *(a1 + 32);
    v19 = *(v18 + 16);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_4;
    v24 = &unk_1E7453000;
    v25 = v18;
    v26 = v17;
    v20 = v17;
    dispatch_async(v19, &v21);
  }

  [*(*(a1 + 32) + 120) resubscribeIfNecessary];
}

void __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_96(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 32) = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = [*(*(a1 + 32) + 56) allKeys];
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = *v13;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v12 + 1) + 8 * i);
        v6 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v5];
        v7 = [*(a1 + 40) remoteTarget];
        v8 = [v6 configuration];
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "activationState")}];
        [v7 setWidgetConfiguration:v8 activationState:v9 forWidgetHostWithIdentifier:v5];
      }

      v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_5(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_195EB2000, v2, OS_LOG_TYPE_DEFAULT, "chrono widget service (service-side) connection interrupted", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_99;
  block[3] = &unk_1E74530E8;
  block[4] = v3;
  dispatch_async(v4, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(*(a1 + 32) + 88);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v8++) noteConnectionTerminated];
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_2_100(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CHSChronoServicesConnection__queue_createConnection__block_invoke_3_101;
  block[3] = &unk_1E74530E8;
  block[4] = v2;
  dispatch_async(v3, block);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(*(a1 + 32) + 88);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v7++) noteConnectionTerminated];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = CHSLogChronoServices();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "chrono widget service (service-side) connection invalidated", v10, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_queue_invalidateConnection
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  queue_connection = self->_queue_connection;
  if (queue_connection)
  {
    [(BSServiceConnection *)queue_connection invalidate];
    v5 = self->_queue_connection;
    self->_queue_connection = 0;
  }
}

- (void)_queue_addClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = clientCopy;
  if (!clientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSChronoServicesConnection.m" lineNumber:1066 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    v6 = 0;
  }

  [(NSHashTable *)self->_queue_observers addObject:v6];
}

- (void)_queue_removeClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  BSDispatchQueueAssert();
  v6 = clientCopy;
  if (!clientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSChronoServicesConnection.m" lineNumber:1073 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    v6 = 0;
  }

  [(NSHashTable *)self->_queue_observers removeObject:v6];
  [(NSMapTable *)self->_queue_extensionProviderOptionsByClient removeObjectForKey:clientCopy];
}

- (void)setCachedExtensions:(id)extensions withProviderOptions:(id)options
{
  extensionsCopy = extensions;
  optionsCopy = options;
  v8 = [[CHSWidgetExtensionsBox alloc] initWithExtensions:extensionsCopy generatedFrom:optionsCopy];
  [(CHSServerSubscription *)self->_notQueue_extensionsSubscription setCachedValue:v8];
  queue = self->_queue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CHSChronoServicesConnection_setCachedExtensions_withProviderOptions___block_invoke;
  v11[3] = &unk_1E7453000;
  v11[4] = self;
  v12 = optionsCopy;
  v10 = optionsCopy;
  dispatch_sync(queue, v11);
}

- (id)_subscribeToTimelineEntryRelevance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(CHSServerSubscriptionResult);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__CHSChronoServicesConnection__subscribeToTimelineEntryRelevance__block_invoke;
  v6[3] = &unk_1E7453110;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__CHSChronoServicesConnection__subscribeToTimelineEntryRelevance__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __65__CHSChronoServicesConnection__subscribeToTimelineEntryRelevance__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __65__CHSChronoServicesConnection__subscribeToTimelineEntryRelevance__block_invoke_113;
    v9[3] = &unk_1E7453D20;
    v9[4] = *(a1 + 40);
    [v3 subscribeToTimelineEntryRelevance:v9];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "acquire relevance timeline monitor assertion failed; unable to obtain the remote target", v8, 2u);
    }

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    [v6 setError:v7];
  }
}

void __65__CHSChronoServicesConnection__subscribeToTimelineEntryRelevance__block_invoke_113(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  [*(*(*(a1 + 32) + 8) + 40) setAssertion:v7];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v11 timelineRelevanceEntries];
  [v9 setValue:v10];

  [*(*(*(a1 + 32) + 8) + 40) setError:v8];
}

- (id)_subscribeToRemoteDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(CHSServerSubscriptionResult);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__CHSChronoServicesConnection__subscribeToRemoteDevices__block_invoke;
  v6[3] = &unk_1E7453110;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __56__CHSChronoServicesConnection__subscribeToRemoteDevices__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __56__CHSChronoServicesConnection__subscribeToRemoteDevices__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__CHSChronoServicesConnection__subscribeToRemoteDevices__block_invoke_115;
    v9[3] = &unk_1E7453D48;
    v9[4] = *(a1 + 40);
    [v3 subscribeToRemoteDevices:v9];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "acquire device monitor assertion failed; unable to obtain the remote target", v8, 2u);
    }

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    [v6 setError:v7];
  }
}

void __56__CHSChronoServicesConnection__subscribeToRemoteDevices__block_invoke_115(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = a4;
  [*(*(*(a1 + 32) + 8) + 40) setAssertion:v7];
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v10 = [v11 devices];
  [v9 setValue:v10];

  [*(*(*(a1 + 32) + 8) + 40) setError:v8];
}

- (id)_subscribeToWidgetRelevance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(CHSServerSubscriptionResult);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CHSChronoServicesConnection__subscribeToWidgetRelevance__block_invoke;
  v6[3] = &unk_1E7453110;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__CHSChronoServicesConnection__subscribeToWidgetRelevance__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__CHSChronoServicesConnection__subscribeToWidgetRelevance__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CHSChronoServicesConnection__subscribeToWidgetRelevance__block_invoke_117;
    v9[3] = &unk_1E7453D70;
    v9[4] = *(a1 + 40);
    [v3 subscribeToWidgetRelevance:v9];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "acquire widget relevance monitor assertion failed; unable to obtain the remote target", v8, 2u);
    }

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    [v6 setError:v7];
  }
}

void __58__CHSChronoServicesConnection__subscribeToWidgetRelevance__block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(*(*(a1 + 32) + 8) + 40) setAssertion:v6];
  [*(*(*(a1 + 32) + 8) + 40) setError:v5];
}

- (id)_subscribeToActivityService
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = objc_alloc_init(CHSServerSubscriptionResult);
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__CHSChronoServicesConnection__subscribeToActivityService__block_invoke;
  v6[3] = &unk_1E7453110;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __58__CHSChronoServicesConnection__subscribeToActivityService__block_invoke(uint64_t a1)
{
  v2 = CHSLogChronoServices();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__CHSChronoServicesConnection__subscribeToActivityService__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) _queue_remoteTargetCreatingConnectionIfNecessary:1];
  v4 = v3;
  if (v3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__CHSChronoServicesConnection__subscribeToActivityService__block_invoke_119;
    v9[3] = &unk_1E7453D70;
    v9[4] = *(a1 + 40);
    [v3 subscribeToActivityPayloadUpdates:v9];
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "acquire widget relevance monitor assertion failed; unable to obtain the remote target", v8, 2u);
    }

    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = [MEMORY[0x1E696ABC0] serverUnavailable];
    [v6 setError:v7];
  }
}

void __58__CHSChronoServicesConnection__subscribeToActivityService__block_invoke_119(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(*(*(a1 + 32) + 8) + 40) setAssertion:v6];
  [*(*(*(a1 + 32) + 8) + 40) setError:v5];
}

void __72__CHSChronoServicesConnection_widgetEnvironmentDataForBundleIdentifier___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_195EB2000, a1, a3, "Completing %s failed; unable to obtain the remote target", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __48__CHSChronoServicesConnection_removeWidgetHost___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_195EB2000, a2, a3, "Failed to remove widget host with identifier %@; unable to obtain the remote target", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_195EB2000, a2, OS_LOG_TYPE_DEBUG, "xpc: setWidgetConfiguration with identifier=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __62__CHSChronoServicesConnection_updateWidgetHostConfigurations___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(&dword_195EB2000, a2, a3, "Failed to set configuration for widget host with identifier %@; unable to obtain the remote target", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 64);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_195EB2000, a2, OS_LOG_TYPE_DEBUG, "xpc: extension subscription - options=%{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_195EB2000, log, OS_LOG_TYPE_DEBUG, "xpc: extensions subscription - result: %@", buf, 0xCu);
}

void __53__CHSChronoServicesConnection__subscribeToExtensions__block_invoke_111_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_195EB2000, log, OS_LOG_TYPE_ERROR, "Subscription resulted in error %{public}@", buf, 0xCu);
}

@end