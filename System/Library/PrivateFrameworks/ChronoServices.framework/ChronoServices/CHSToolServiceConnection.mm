@interface CHSToolServiceConnection
+ (id)sharedInstance;
- (CHSToolServiceConnection)init;
- (id)_init;
- (id)_queue_remoteTarget;
- (void)_queue_addClient:(id)client;
- (void)_queue_createConnection;
- (void)_queue_invalidateConnection;
- (void)_queue_removeClient:(id)client;
- (void)addClient:(id)client;
- (void)allCachedSnapshotURLsWithCompletion:(id)completion;
- (void)contentURLForActivityID:(id)d completion:(id)completion;
- (void)expireLocationGracePeriods;
- (void)extensionInfo:(id)info;
- (void)extensionInfoForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)fetchStateForItemWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchStateWithCompletion:(id)completion;
- (void)fetchWidgetSceneInfoWithCompletion:(id)completion;
- (void)listStateCaptureIdentifiersWithCompletion:(id)completion;
- (void)refreshDescriptorsForExtensionBundleIdentifier:(id)identifier completion:(id)completion;
- (void)reloadControlsOfKind:(id)kind containedIn:(id)in reason:(id)reason completion:(id)completion;
- (void)reloadTimelinesOfKind:(id)kind containedIn:(id)in reason:(id)reason completion:(id)completion;
- (void)removeClient:(id)client;
- (void)resetCaches:(unint64_t)caches completion:(id)completion;
- (void)runReaper:(id)reaper completion:(id)completion;
- (void)subscribeToTaskServiceStateWithDelegate:(id)delegate completion:(id)completion;
- (void)taskServiceStateDidChange:(id)change;
- (void)timelineForWidgetKey:(id)key completion:(id)completion;
- (void)widgetsWithTimelines:(id)timelines;
@end

@implementation CHSToolServiceConnection

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CHSToolServiceConnection sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __42__CHSToolServiceConnection_sharedInstance__block_invoke()
{
  v0 = [[CHSToolServiceConnection alloc] _init];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (CHSToolServiceConnection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSToolServiceConnection.m" lineNumber:44 description:@"use +sharedInstance"];

  return 0;
}

- (id)_init
{
  v12.receiver = self;
  v12.super_class = CHSToolServiceConnection;
  v2 = [(CHSToolServiceConnection *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    queue_clients = v2->_queue_clients;
    v2->_queue_clients = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.chronoservices.CHSChronoServicesToolConnection", v5);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.chronoservices.CHSChronoServicesToolConnection.callout", v8);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v9;
  }

  return v2;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__CHSToolServiceConnection_addClient___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

uint64_t __38__CHSToolServiceConnection_addClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_createConnection];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _queue_addClient:v3];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__CHSToolServiceConnection_removeClient___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_sync(queue, v7);
}

- (void)refreshDescriptorsForExtensionBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__CHSToolServiceConnection_refreshDescriptorsForExtensionBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __86__CHSToolServiceConnection_refreshDescriptorsForExtensionBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __86__CHSToolServiceConnection_refreshDescriptorsForExtensionBundleIdentifier_completion___block_invoke_2;
    v8[3] = &unk_1E7453598;
    v3 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v2 refreshDescriptorsForExtensionBundleIdentifier:v3 completion:v8];
    v4 = v9;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "chrono tool service connection unavailable", v7, 2u);
    }

    v6 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v6 + 16))(v6, 0, v4);
  }
}

void __86__CHSToolServiceConnection_refreshDescriptorsForExtensionBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 extensions];
  v6 = [v5 anyObject];

  (*(*(a1 + 32) + 16))();
}

- (void)allCachedSnapshotURLsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__CHSToolServiceConnection_allCachedSnapshotURLsWithCompletion___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __64__CHSToolServiceConnection_allCachedSnapshotURLsWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __64__CHSToolServiceConnection_allCachedSnapshotURLsWithCompletion___block_invoke_2;
    v8[3] = &unk_1E74535C0;
    v9 = *(a1 + 40);
    [v2 allCachedSnapshotURLsWithCompletion:v8];
    v3 = v9;
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "chrono tool service connection unavailable", v7, 2u);
    }

    v5 = *(a1 + 40);
    v3 = [MEMORY[0x1E695DEC8] array];
    v6 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v5 + 16))(v5, v3, v6);
  }
}

- (void)listStateCaptureIdentifiersWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__CHSToolServiceConnection_listStateCaptureIdentifiersWithCompletion___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __70__CHSToolServiceConnection_listStateCaptureIdentifiersWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __70__CHSToolServiceConnection_listStateCaptureIdentifiersWithCompletion___block_invoke_2;
    v7[3] = &unk_1E74535C0;
    v8 = *(a1 + 40);
    [v2 listStateCaptureIdentifiersWithCompletion:v7];
    v3 = v8;
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "chrono tool service connection unavailable", v6, 2u);
    }

    v5 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

- (void)fetchStateWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__CHSToolServiceConnection_fetchStateWithCompletion___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __53__CHSToolServiceConnection_fetchStateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__CHSToolServiceConnection_fetchStateWithCompletion___block_invoke_2;
    v7[3] = &unk_1E7453610;
    v8 = *(a1 + 40);
    [v2 fetchStateWithCompletion:v7];
    v3 = v8;
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "chrono tool service connection unavailable", v6, 2u);
    }

    v5 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v5 + 16))(v5, @"<nil>", v3);
  }
}

- (void)fetchStateForItemWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CHSToolServiceConnection_fetchStateForItemWithIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __71__CHSToolServiceConnection_fetchStateForItemWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__CHSToolServiceConnection_fetchStateForItemWithIdentifier_completion___block_invoke_2;
    v8[3] = &unk_1E7453610;
    v3 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v2 fetchStateForItemWithIdentifier:v3 completion:v8];
    v4 = v9;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "chrono tool service connection unavailable", v7, 2u);
    }

    v6 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v6 + 16))(v6, @"<nil>", v4);
  }
}

- (void)extensionInfoForBundleIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__CHSToolServiceConnection_extensionInfoForBundleIdentifier_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __72__CHSToolServiceConnection_extensionInfoForBundleIdentifier_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v3 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __72__CHSToolServiceConnection_extensionInfoForBundleIdentifier_completion___block_invoke_2;
    v9[3] = &unk_1E7453638;
    v10 = v3;
    v11 = *(a1 + 48);
    [v2 extensionInfoForBundleIdentifier:v10 completion:v9];

    v4 = v10;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "Unable to obtain extension info for %@; unable to obtain the remote target", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    v4 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v7 + 16))(v7, 0, v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __72__CHSToolServiceConnection_extensionInfoForBundleIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CHSLogChronoServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v6;
    _os_log_debug_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEBUG, "Received extension info (%@) for (%@), error: %@", &v10, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)extensionInfo:(id)info
{
  infoCopy = info;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__CHSToolServiceConnection_extensionInfo___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __42__CHSToolServiceConnection_extensionInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__CHSToolServiceConnection_extensionInfo___block_invoke_2;
    v7[3] = &unk_1E74535C0;
    v8 = *(a1 + 40);
    [v2 extensionInfoWithCompletion:v7];
    v3 = v8;
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "Unable to obtain extension info; unable to obtain the remote target", v6, 2u);
    }

    v5 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __42__CHSToolServiceConnection_extensionInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = CHSLogChronoServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __42__CHSToolServiceConnection_extensionInfo___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)widgetsWithTimelines:(id)timelines
{
  timelinesCopy = timelines;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__CHSToolServiceConnection_widgetsWithTimelines___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = timelinesCopy;
  v6 = timelinesCopy;
  dispatch_async(queue, v7);
}

void __49__CHSToolServiceConnection_widgetsWithTimelines___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__CHSToolServiceConnection_widgetsWithTimelines___block_invoke_2;
    v7[3] = &unk_1E7453660;
    v8 = *(a1 + 40);
    [v2 widgetsWithTimelines:v7];
    v3 = v8;
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_195EB2000, v4, OS_LOG_TYPE_DEFAULT, "Unable to obtain widgets with timelines; unable to obtain the remote target", v6, 2u);
    }

    v5 = *(a1 + 40);
    v3 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __49__CHSToolServiceConnection_widgetsWithTimelines___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 widgetKeys];
  (*(v5 + 16))(v5, v6, v7);
}

- (void)timelineForWidgetKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CHSToolServiceConnection_timelineForWidgetKey_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = keyCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = keyCopy;
  dispatch_async(queue, block);
}

void __60__CHSToolServiceConnection_timelineForWidgetKey_completion___block_invoke(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] _queue_remoteTarget];
  if (v2)
  {
    v3 = a1[5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __60__CHSToolServiceConnection_timelineForWidgetKey_completion___block_invoke_2;
    v9[3] = &unk_1E7453688;
    v10 = v3;
    v11 = a1[6];
    [v2 timelineForWidgetKey:v10 completion:v9];

    v4 = v10;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [a1[5] widget];
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "Unable to obtain timeline for widget (%@); unable to obtain the remote target", buf, 0xCu);
    }

    v7 = a1[6];
    v4 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    v7[2](v7, 0, v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __60__CHSToolServiceConnection_timelineForWidgetKey_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = CHSLogChronoServices();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) widget];
    v10 = v9;
    v11 = @"Yes";
    v12 = 138412802;
    if (!v5)
    {
      v11 = @"No";
    }

    v13 = v11;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&dword_195EB2000, v7, OS_LOG_TYPE_DEBUG, "Received timeline (%@) for widget: %@, error: %@", &v12, 0x20u);
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resetCaches:(unint64_t)caches completion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__CHSToolServiceConnection_resetCaches_completion___block_invoke;
  block[3] = &unk_1E74536D8;
  v10 = completionCopy;
  cachesCopy = caches;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(queue, block);
}

void __51__CHSToolServiceConnection_resetCaches_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__CHSToolServiceConnection_resetCaches_completion___block_invoke_2;
    v8[3] = &unk_1E74536B0;
    v9 = *(a1 + 40);
    [v2 resetCaches:v3 completion:v8];

    v4 = v9;
  }

  else
  {
    v5 = CHSLogChronoServices();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "Unable to deliver cache reset request; unable to obtain the remote target", v7, 2u);
    }

    v6 = *(a1 + 40);
    v4 = [MEMORY[0x1E696ABC0] chs_initWithErrorCode:1];
    (*(v6 + 16))(v6, v4);
  }
}

void __51__CHSToolServiceConnection_resetCaches_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __51__CHSToolServiceConnection_resetCaches_completion___block_invoke_2_cold_1(v3, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)reloadControlsOfKind:(id)kind containedIn:(id)in reason:(id)reason completion:(id)completion
{
  kindCopy = kind;
  inCopy = in;
  reasonCopy = reason;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke;
  block[3] = &unk_1E7453728;
  block[4] = self;
  v20 = kindCopy;
  v21 = inCopy;
  v22 = reasonCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = reasonCopy;
  v17 = inCopy;
  v18 = kindCopy;
  dispatch_async(queue, block);
}

void __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_remoteTarget];
  if (v2)
  {
    v3 = a1[7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke_2;
    v13[3] = &unk_1E7453700;
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[5];
    v7 = a1[7];
    v8 = a1[8];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v14 = v10;
    v15 = v9;
    [v2 reloadControlsOfKind:v4 containedIn:v5 reason:v3 completion:v13];

    v11 = v14;
  }

  else
  {
    v11 = CHSLogChronoServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "Unable to deliver controls reload request; unable to obtain the remote target", v12, 2u);
    }
  }
}

void __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke_2_cold_1(a1);
  }

  (*(a1[7] + 16))();
}

- (void)reloadTimelinesOfKind:(id)kind containedIn:(id)in reason:(id)reason completion:(id)completion
{
  kindCopy = kind;
  inCopy = in;
  reasonCopy = reason;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke;
  block[3] = &unk_1E7453728;
  block[4] = self;
  v20 = kindCopy;
  v21 = inCopy;
  v22 = reasonCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = reasonCopy;
  v17 = inCopy;
  v18 = kindCopy;
  dispatch_async(queue, block);
}

void __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke(id *a1)
{
  v2 = [a1[4] _queue_remoteTarget];
  if (v2)
  {
    v3 = a1[7];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke_2;
    v13[3] = &unk_1E7453700;
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[5];
    v7 = a1[7];
    v8 = a1[8];
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v14 = v10;
    v15 = v9;
    [v2 reloadTimelinesOfKind:v4 containedIn:v5 reason:v3 completion:v13];

    v11 = v14;
  }

  else
  {
    v11 = CHSLogChronoServices();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_195EB2000, v11, OS_LOG_TYPE_DEFAULT, "Unable to deliver timeline reload request; unable to obtain the remote target", v12, 2u);
    }
  }
}

void __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = CHSLogChronoServices();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke_2_cold_1(a1);
  }

  (*(a1[7] + 16))();
}

- (void)expireLocationGracePeriods
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CHSToolServiceConnection_expireLocationGracePeriods__block_invoke;
  block[3] = &unk_1E74530E8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__CHSToolServiceConnection_expireLocationGracePeriods__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _queue_remoteTarget];
  v2 = v1;
  if (v1)
  {
    [v1 expireLocationGracePeriods];
  }

  else
  {
    v3 = CHSLogChronoServices();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "notifying server to expire location grace periods failed; unable to obtain the remote target", v4, 2u);
    }
  }
}

- (void)contentURLForActivityID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__CHSToolServiceConnection_contentURLForActivityID_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = dCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __63__CHSToolServiceConnection_contentURLForActivityID_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  v3 = v2;
  if (v2)
  {
    [v2 contentURLForActivityID:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__CHSToolServiceConnection_contentURLForActivityID_completion___block_invoke_cold_1();
    }
  }
}

- (void)runReaper:(id)reaper completion:(id)completion
{
  reaperCopy = reaper;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__CHSToolServiceConnection_runReaper_completion___block_invoke;
  block[3] = &unk_1E7453160;
  block[4] = self;
  v12 = reaperCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = reaperCopy;
  dispatch_async(queue, block);
}

void __49__CHSToolServiceConnection_runReaper_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  v3 = v2;
  if (v2)
  {
    [v2 runReaper:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__CHSToolServiceConnection_runReaper_completion___block_invoke_cold_1();
    }
  }
}

- (void)fetchWidgetSceneInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__CHSToolServiceConnection_fetchWidgetSceneInfoWithCompletion___block_invoke;
  v7[3] = &unk_1E74535E8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

void __63__CHSToolServiceConnection_fetchWidgetSceneInfoWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_remoteTarget];
  v3 = v2;
  if (v2)
  {
    [v2 fetchWidgetSceneInfoWithCompletion:*(a1 + 40)];
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __63__CHSToolServiceConnection_fetchWidgetSceneInfoWithCompletion___block_invoke_cold_1();
    }
  }
}

- (void)subscribeToTaskServiceStateWithDelegate:(id)delegate completion:(id)completion
{
  delegateCopy = delegate;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CHSToolServiceConnection_subscribeToTaskServiceStateWithDelegate_completion___block_invoke;
  block[3] = &unk_1E7453160;
  v12 = delegateCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = delegateCopy;
  dispatch_async(queue, block);
}

void __79__CHSToolServiceConnection_subscribeToTaskServiceStateWithDelegate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _queue_addClient:?];
  }

  v2 = [*(a1 + 40) _queue_remoteTarget];
  v3 = v2;
  if (v2)
  {
    [v2 subscribeToTaskServiceStateWithCompletion:*(a1 + 48)];
  }

  else
  {
    v4 = CHSLogChronoServices();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__CHSToolServiceConnection_subscribeToTaskServiceStateWithDelegate_completion___block_invoke_cold_1();
    }

    if (*(a1 + 48))
    {
      v5 = [MEMORY[0x1E696ABC0] serverUnavailable];
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)taskServiceStateDidChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CHSToolServiceConnection_taskServiceStateDidChange___block_invoke;
  v7[3] = &unk_1E7453000;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(queue, v7);
}

void __54__CHSToolServiceConnection_taskServiceStateDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__CHSToolServiceConnection_taskServiceStateDidChange___block_invoke_2;
  v5[3] = &unk_1E7453000;
  v6 = v2;
  v7 = *(a1 + 40);
  v4 = v2;
  dispatch_async(v3, v5);
}

void __54__CHSToolServiceConnection_taskServiceStateDidChange___block_invoke_2(uint64_t a1)
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
          [v6 taskServiceStateDidChange:{*(a1 + 40), v8}];
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

- (id)_queue_remoteTarget
{
  dispatch_assert_queue_V2(self->_queue);
  remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  if (!remoteTarget)
  {
    [(CHSToolServiceConnection *)self _queue_createConnection];
    remoteTarget = [(BSServiceConnection *)self->_queue_connection remoteTarget];
  }

  return remoteTarget;
}

- (void)_queue_createConnection
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = MEMORY[0x1E698F498];
  v4 = +[CHSToolServiceSpecification identifier];
  v5 = [v3 endpointForMachName:@"com.apple.chronoservices" service:v4 instance:0];

  [(CHSToolServiceConnection *)self _queue_invalidateConnection];
  v6 = [MEMORY[0x1E698F490] connectionWithEndpoint:v5];
  queue_connection = self->_queue_connection;
  self->_queue_connection = v6;

  v8 = self->_queue_connection;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__CHSToolServiceConnection__queue_createConnection__block_invoke;
  v9[3] = &unk_1E7453570;
  v9[4] = self;
  [(BSServiceConnection *)v8 configureConnection:v9];
  [(BSServiceConnection *)self->_queue_connection activate];
}

void __51__CHSToolServiceConnection__queue_createConnection__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[CHSToolServiceSpecification serviceQuality];
  [v5 setServiceQuality:v3];

  v4 = +[CHSToolServiceSpecification interface];
  [v5 setInterface:v4];

  [v5 setInterfaceTarget:*(a1 + 32)];
  [v5 setActivationHandler:&__block_literal_global_38];
  [v5 setInterruptionHandler:&__block_literal_global_41];
  [v5 setInvalidationHandler:&__block_literal_global_44];
}

void __51__CHSToolServiceConnection__queue_createConnection__block_invoke_2()
{
  v0 = CHSLogChronoServices();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_195EB2000, v0, OS_LOG_TYPE_DEFAULT, "chrono tool service (service-side) connection activated", v1, 2u);
  }
}

void __51__CHSToolServiceConnection__queue_createConnection__block_invoke_39()
{
  v0 = CHSLogChronoServices();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_195EB2000, v0, OS_LOG_TYPE_DEFAULT, "chrono widget service (service-side) connection interrupted", v1, 2u);
  }
}

void __51__CHSToolServiceConnection__queue_createConnection__block_invoke_42()
{
  v0 = CHSLogChronoServices();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_195EB2000, v0, OS_LOG_TYPE_DEFAULT, "chrono widget service (service-side) connection invalidated", v1, 2u);
  }
}

- (void)_queue_invalidateConnection
{
  dispatch_assert_queue_V2(self->_queue);
  queue_connection = self->_queue_connection;
  if (queue_connection)
  {
    [(BSServiceConnection *)queue_connection invalidate];
    v4 = self->_queue_connection;
    self->_queue_connection = 0;
  }
}

- (void)_queue_addClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = clientCopy;
  if (!clientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSToolServiceConnection.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    v5 = 0;
  }

  [(NSMutableSet *)self->_queue_clients addObject:v5];
}

- (void)_queue_removeClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  v5 = clientCopy;
  if (!clientCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSToolServiceConnection.m" lineNumber:383 description:{@"Invalid parameter not satisfying: %@", @"client != nil"}];

    v5 = 0;
  }

  [(NSMutableSet *)self->_queue_clients removeObject:v5];
}

void __42__CHSToolServiceConnection_extensionInfo___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __51__CHSToolServiceConnection_resetCaches_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_195EB2000, a2, OS_LOG_TYPE_DEBUG, "Received cache reset request, error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __79__CHSToolServiceConnection_reloadControlsOfKind_containedIn_reason_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x1E69E9840];
}

void __80__CHSToolServiceConnection_reloadTimelinesOfKind_containedIn_reason_completion___block_invoke_2_cold_1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);
  v9 = *MEMORY[0x1E69E9840];
}

@end