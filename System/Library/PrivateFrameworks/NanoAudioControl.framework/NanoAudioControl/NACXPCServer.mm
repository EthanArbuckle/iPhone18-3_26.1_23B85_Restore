@interface NACXPCServer
+ (id)server;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NACXPCServer)init;
- (float)_cachedHapticIntensity;
- (id)_audioRoutesRecordForCategory:(id)category;
- (id)_cachedVolumeRecords;
- (id)_listeningModesRecordForTarget:(id)target;
- (id)_routeObservationCategoriesForConnection:(id)connection;
- (id)_volumeRecordForTarget:(id)target;
- (int64_t)_aggregatedCountOfObserversForTarget:(id)target inRecords:(id)records;
- (int64_t)_cachedHapticState;
- (void)EULimitForTarget:(id)target result:(id)result;
- (void)_beginObservingListeningModesForTarget:(id)target connection:(id)connection;
- (void)_beginObservingVolumeForTarget:(id)target connection:(id)connection;
- (void)_cachedVolumeRecords;
- (void)_cancelDeferredAudioRoutesUpdate;
- (void)_cleanupConnection:(id)connection;
- (void)_endObservingAudioRoutesForCategory:(id)category connection:(id)connection;
- (void)_endObservingListeningModesForTarget:(id)target connection:(id)connection;
- (void)_endObservingVolumeForTarget:(id)target connection:(id)connection;
- (void)_persistHapticIntensity;
- (void)_persistHapticState;
- (void)_persistProminentHapticState;
- (void)_persistSystemMutedState;
- (void)_persistVolumeRecords;
- (void)_scheduleDeferredAudioRoutesUpdate:(id)update category:(id)category;
- (void)_updateAudioRoutes:(id)routes category:(id)category;
- (void)audioRoutesForCategory:(id)category result:(id)result;
- (void)availableListeningModesForTarget:(id)target result:(id)result;
- (void)beginObservingAudioRoutesForCategory:(id)category;
- (void)beginObservingListeningModesForTarget:(id)target;
- (void)beginObservingVolumeForTarget:(id)target;
- (void)client:(id)client EULimit:(float)limit didChangeForTarget:(id)target;
- (void)client:(id)client audioRoutes:(id)routes didChangeForCategory:(id)category;
- (void)client:(id)client availableListeningModes:(id)modes didChangeForTarget:(id)target;
- (void)client:(id)client currentListeningMode:(id)mode didChangeForTarget:(id)target;
- (void)client:(id)client didFailToSetCurrentListeningModeForTarget:(id)target error:(id)error;
- (void)client:(id)client hapticIntensityDidChange:(float)change;
- (void)client:(id)client hapticStateDidChange:(int64_t)change;
- (void)client:(id)client mutedState:(BOOL)state didChangeForTarget:(id)target;
- (void)client:(id)client prominentHapticStateDidChange:(BOOL)change;
- (void)client:(id)client routeObservationCancelledForCategory:(id)category;
- (void)client:(id)client systemMutedStateDidChange:(BOOL)change;
- (void)client:(id)client volumeControlAvailable:(BOOL)available didChangeForTarget:(id)target;
- (void)client:(id)client volumeObservationCancelledForTarget:(id)target;
- (void)client:(id)client volumeValue:(float)value didChangeForTarget:(id)target;
- (void)client:(id)client volumeWarningEnabled:(BOOL)enabled volumeWarningState:(int64_t)state didChangeForTarget:(id)target;
- (void)currentListeningModeForTarget:(id)target result:(id)result;
- (void)endObservingAudioRoutesForCategory:(id)category;
- (void)endObservingListeningModesForTarget:(id)target;
- (void)endObservingVolumeForTarget:(id)target;
- (void)hapticIntensity:(id)intensity;
- (void)hapticState:(id)state;
- (void)mutedStateForTarget:(id)target result:(id)result;
- (void)pickAudioRouteWithIdentifier:(id)identifier category:(id)category;
- (void)playToneWithConfiguration:(id)configuration;
- (void)prominentHapticEnabled:(id)enabled;
- (void)setCurrentListeningMode:(id)mode forTarget:(id)target;
- (void)setHapticIntensity:(float)intensity;
- (void)setHapticState:(int64_t)state;
- (void)setMuted:(BOOL)muted forTarget:(id)target;
- (void)setProminentHapticEnabled:(BOOL)enabled;
- (void)setSystemMuted:(BOOL)muted;
- (void)setVolumeValue:(float)value forTarget:(id)target;
- (void)stopToneWithOptions:(id)options;
- (void)systemMutedState:(id)state;
- (void)volumeControlAvailabilityForTarget:(id)target result:(id)result;
- (void)volumeValueForTarget:(id)target result:(id)result;
- (void)volumeWarningForTarget:(id)target result:(id)result;
@end

@implementation NACXPCServer

+ (id)server
{
  if (server_onceToken != -1)
  {
    +[NACXPCServer server];
  }

  v3 = server_server;

  return v3;
}

uint64_t __22__NACXPCServer_server__block_invoke()
{
  server_server = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NACXPCServer)init
{
  v12.receiver = self;
  v12.super_class = NACXPCServer;
  v2 = [(NACXPCServer *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoAudioControl.Preview", v3);
    audioAndHapticPreviewQueue = v2->_audioAndHapticPreviewQueue;
    v2->_audioAndHapticPreviewQueue = v4;

    v6 = dispatch_queue_create("com.apple.nanoaudiocontrol.NACXPCServer", v3);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v6;

    v8 = v2->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__NACXPCServer_init__block_invoke;
    block[3] = &unk_27992B4E8;
    v11 = v2;
    dispatch_sync(v8, block);
  }

  return v2;
}

uint64_t __20__NACXPCServer_init__block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.NanoAudioControl"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = [*(*(a1 + 32) + 24) synchronize];
  v6 = [*(a1 + 32) _cachedVolumeRecords];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;

  [*(a1 + 32) _cachedHapticIntensity];
  *(*(a1 + 32) + 72) = v9;
  *(*(a1 + 32) + 88) = [*(a1 + 32) _cachedSystemMutedState];
  *(*(a1 + 32) + 76) = [*(a1 + 32) _cachedProminentHapticState];
  *(*(a1 + 32) + 80) = [*(a1 + 32) _cachedHapticState];
  v10 = [MEMORY[0x277CBEB38] dictionary];
  v11 = *(a1 + 32);
  v12 = *(v11 + 48);
  *(v11 + 48) = v10;

  v13 = objc_opt_new();
  v14 = *(a1 + 32);
  v15 = *(v14 + 64);
  *(v14 + 64) = v13;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v16 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.NanoAudioControl"];
  v17 = *(a1 + 32);
  v18 = *(v17 + 56);
  *(v17 + 56) = v16;

  [*(*(a1 + 32) + 56) setDelegate:?];
  v19 = *(*(a1 + 32) + 56);

  return [v19 resume];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C49AC8];
  [v11 setClasses:v10 forSelector:sel_audioRoutesForCategory_result_ argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v11];
  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v18[3] = &unk_27992B9A8;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [connectionCopy setInvalidationHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v15[3] = &unk_27992B9A8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [connectionCopy setInterruptionHandler:v15];
  [connectionCopy resume];
  v12 = NMLogForCategory(4);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v12, OS_LOG_TYPE_DEFAULT, "[NACXPC] Accepted new XPC connection", buf, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

void __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACXPC] XPC connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke_214;
    v7[3] = &unk_27992B510;
    v7[4] = WeakRetained;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "[NACXPC] XPC connection interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = v4;
  if (WeakRetained && v4)
  {
    v6 = WeakRetained[1];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke_215;
    v7[3] = &unk_27992B510;
    v7[4] = WeakRetained;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

- (void)beginObservingVolumeForTarget:(id)target
{
  v16 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to begin observing volume for %@", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_beginObservingVolumeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = targetCopy;
  v13 = currentConnection;
  v8 = currentConnection;
  v9 = targetCopy;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingVolumeForTarget:(id)target connection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  connectionCopy = connection;
  v8 = [(NACXPCServer *)self _volumeRecordForTarget:targetCopy];
  observers = [v8 observers];
  if (([observers containsObject:connectionCopy] & 1) == 0)
  {
    [observers addObject:connectionCopy];
    if ([(NACXPCServer *)self _aggregatedCountOfObserversForTarget:targetCopy inRecords:self->_volumeRecords]== 1)
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = targetCopy;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS beginObservingVolume request for %@ because first observer is added", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient beginObservingVolumeForTarget:targetCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)_aggregatedCountOfObserversForTarget:(id)target inRecords:(id)records
{
  targetCopy = target;
  recordsCopy = records;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ([targetCopy isPairedDevice])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NACXPCServer__aggregatedCountOfObserversForTarget_inRecords___block_invoke;
    v12[3] = &unk_27992B9D0;
    v12[4] = &v13;
    [recordsCopy enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    v7 = [recordsCopy objectForKeyedSubscript:targetCopy];
    observers = [v7 observers];
    v9 = [observers count];
    v14[3] = v9;
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);

  return v10;
}

void __63__NACXPCServer__aggregatedCountOfObserversForTarget_inRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if ([a2 isPairedDevice])
  {
    v5 = [v6 observers];
    *(*(*(a1 + 32) + 8) + 24) += [v5 count];
  }
}

- (void)endObservingVolumeForTarget:(id)target
{
  v16 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to end observing volume for %@", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACXPCServer_endObservingVolumeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = targetCopy;
  v13 = currentConnection;
  v8 = currentConnection;
  v9 = targetCopy;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_endObservingVolumeForTarget:(id)target connection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  connectionCopy = connection;
  v8 = [(NACXPCServer *)self _volumeRecordForTarget:targetCopy];
  observers = [v8 observers];
  if ([observers containsObject:connectionCopy])
  {
    [observers removeObject:connectionCopy];
    if (![(NACXPCServer *)self _aggregatedCountOfObserversForTarget:targetCopy inRecords:self->_volumeRecords])
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = targetCopy;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS endObservingVolume request for %@ because last observer is removed", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient endObservingVolumeForTarget:targetCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)volumeValueForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACXPCServer_volumeValueForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = targetCopy;
  v13 = resultCopy;
  block[4] = self;
  v9 = targetCopy;
  v10 = resultCopy;
  dispatch_async(internalQueue, block);
}

void __44__NACXPCServer_volumeValueForTarget_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
    v2 = *(a1 + 48);
    [v3 volumeValue];
    (*(v2 + 16))(v2);
  }
}

- (void)volumeControlAvailabilityForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NACXPCServer_volumeControlAvailabilityForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = targetCopy;
  v13 = resultCopy;
  block[4] = self;
  v9 = targetCopy;
  v10 = resultCopy;
  dispatch_async(internalQueue, block);
}

void __58__NACXPCServer_volumeControlAvailabilityForTarget_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v2 isVolumeControlAvailable]);
  }
}

- (void)mutedStateForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NACXPCServer_mutedStateForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = targetCopy;
  v13 = resultCopy;
  block[4] = self;
  v9 = targetCopy;
  v10 = resultCopy;
  dispatch_async(internalQueue, block);
}

void __43__NACXPCServer_mutedStateForTarget_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v2 isMuted]);
  }
}

- (void)EULimitForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NACXPCServer_EULimitForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = targetCopy;
  v13 = resultCopy;
  block[4] = self;
  v9 = targetCopy;
  v10 = resultCopy;
  dispatch_async(internalQueue, block);
}

void __40__NACXPCServer_EULimitForTarget_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
    v2 = *(a1 + 48);
    [v3 EUVolumeLimit];
    (*(v2 + 16))(v2);
  }
}

- (void)volumeWarningForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_volumeWarningForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = targetCopy;
  v13 = resultCopy;
  block[4] = self;
  v9 = targetCopy;
  v10 = resultCopy;
  dispatch_async(internalQueue, block);
}

void __46__NACXPCServer_volumeWarningForTarget_result___block_invoke(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
    (*(*(a1 + 48) + 16))(*(a1 + 48), [v2 isVolumeWarningEnabled], objc_msgSend(v2, "volumeWarningState"));
  }
}

- (void)setVolumeValue:(float)value forTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACXPCServer_setVolumeValue_forTarget___block_invoke;
  block[3] = &unk_27992B588;
  valueCopy = value;
  block[4] = self;
  v10 = targetCopy;
  v8 = targetCopy;
  dispatch_async(internalQueue, block);
}

- (void)setMuted:(BOOL)muted forTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NACXPCServer_setMuted_forTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  mutedCopy = muted;
  block[4] = self;
  v10 = targetCopy;
  v8 = targetCopy;
  dispatch_async(internalQueue, block);
}

- (void)setSystemMuted:(BOOL)muted
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCServer_setSystemMuted___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  mutedCopy = muted;
  dispatch_async(internalQueue, v4);
}

- (void)beginObservingListeningModesForTarget:(id)target
{
  v16 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to begin observing listening modes for %@", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_beginObservingListeningModesForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = targetCopy;
  v13 = currentConnection;
  v8 = currentConnection;
  v9 = targetCopy;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endObservingListeningModesForTarget:(id)target
{
  v16 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to end observing listening modes for %@", buf, 0xCu);
  }

  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NACXPCServer_endObservingListeningModesForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = targetCopy;
  v13 = currentConnection;
  v8 = currentConnection;
  v9 = targetCopy;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingListeningModesForTarget:(id)target connection:(id)connection
{
  v18 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  connectionCopy = connection;
  v8 = [(NACXPCServer *)self _listeningModesRecordForTarget:targetCopy];
  observers = [v8 observers];
  v10 = [observers containsObject:connectionCopy];

  if ((v10 & 1) == 0)
  {
    observers2 = [v8 observers];

    if (!observers2)
    {
      v12 = [MEMORY[0x277CBEB58] set];
      [v8 setObservers:v12];
    }

    observers3 = [v8 observers];
    [observers3 addObject:connectionCopy];

    if ([(NACXPCServer *)self _aggregatedCountOfObserversForTarget:targetCopy inRecords:self->_listeningModesRecords]== 1)
    {
      v14 = NMLogForCategory(4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = targetCopy;
        _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS beginObservingListeningModes request for %@ because first observer is added", &v16, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient beginObservingListeningModesForTarget:targetCopy];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_endObservingListeningModesForTarget:(id)target connection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  connectionCopy = connection;
  v8 = [(NACXPCServer *)self _listeningModesRecordForTarget:targetCopy];
  observers = [v8 observers];
  if ([observers containsObject:connectionCopy])
  {
    [observers removeObject:connectionCopy];
    if (![(NACXPCServer *)self _aggregatedCountOfObserversForTarget:targetCopy inRecords:self->_listeningModesRecords])
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = targetCopy;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS endObservingListeningModes request for %@ because last observer is removed", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient endObservingListeningModesForTarget:targetCopy];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)availableListeningModesForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  if (resultCopy)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__NACXPCServer_availableListeningModesForTarget_result___block_invoke;
    block[3] = &unk_27992B538;
    block[4] = self;
    v10 = targetCopy;
    v11 = resultCopy;
    dispatch_async(internalQueue, block);
  }
}

void __56__NACXPCServer_availableListeningModesForTarget_result___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _listeningModesRecordForTarget:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v4 availableListeningModes];
  (*(v2 + 16))(v2, v3);
}

- (void)currentListeningModeForTarget:(id)target result:(id)result
{
  targetCopy = target;
  resultCopy = result;
  if (resultCopy)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NACXPCServer_currentListeningModeForTarget_result___block_invoke;
    block[3] = &unk_27992B538;
    block[4] = self;
    v10 = targetCopy;
    v11 = resultCopy;
    dispatch_async(internalQueue, block);
  }
}

void __53__NACXPCServer_currentListeningModeForTarget_result___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _listeningModesRecordForTarget:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = [v4 currentListeningMode];
  (*(v2 + 16))(v2, v3);
}

- (void)setCurrentListeningMode:(id)mode forTarget:(id)target
{
  modeCopy = mode;
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NACXPCServer_setCurrentListeningMode_forTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = modeCopy;
  v13 = targetCopy;
  v9 = targetCopy;
  v10 = modeCopy;
  dispatch_async(internalQueue, block);
}

- (void)hapticIntensity:(id)intensity
{
  intensityCopy = intensity;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NACXPCServer_hapticIntensity___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = intensityCopy;
  v6 = intensityCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __32__NACXPCServer_hapticIntensity___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(*(*(a1 + 32) + 72));
  }

  return result;
}

- (void)prominentHapticEnabled:(id)enabled
{
  enabledCopy = enabled;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NACXPCServer_prominentHapticEnabled___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = enabledCopy;
  v6 = enabledCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __39__NACXPCServer_prominentHapticEnabled___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 76));
  }

  return result;
}

- (void)hapticState:(id)state
{
  stateCopy = state;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__NACXPCServer_hapticState___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __28__NACXPCServer_hapticState___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 80));
  }

  return result;
}

- (void)systemMutedState:(id)state
{
  stateCopy = state;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__NACXPCServer_systemMutedState___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(internalQueue, v7);
}

uint64_t __33__NACXPCServer_systemMutedState___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 88));
  }

  return result;
}

- (void)setHapticIntensity:(float)intensity
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__NACXPCServer_setHapticIntensity___block_invoke;
  v4[3] = &unk_27992B5D8;
  v4[4] = self;
  intensityCopy = intensity;
  dispatch_async(internalQueue, v4);
}

- (void)setProminentHapticEnabled:(BOOL)enabled
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NACXPCServer_setProminentHapticEnabled___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_async(internalQueue, v4);
}

- (void)setHapticState:(int64_t)state
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCServer_setHapticState___block_invoke;
  v4[3] = &unk_27992B628;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(internalQueue, v4);
}

void __41__NACXPCServer_playAudioAndHapticPreview__block_invoke()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACXPCServer_playAudioAndHapticPreview__block_invoke_2;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v1 = 1429;
  if (_block_invoke_onceToken != -1)
  {
    dispatch_once(&_block_invoke_onceToken, block);
  }

  AudioServicesPlaySystemSoundWithCompletion(0x595u, 0);
}

void __40__NACXPCServer_playDefaultHapticPreview__block_invoke()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NACXPCServer_playDefaultHapticPreview__block_invoke_2;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v1 = 1437;
  if (_block_invoke_2_onceToken != -1)
  {
    dispatch_once(&_block_invoke_2_onceToken, block);
  }

  AudioServicesPlaySystemSoundWithCompletion(0x59Du, 0);
}

void __42__NACXPCServer_playProminentHapticPreview__block_invoke()
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NACXPCServer_playProminentHapticPreview__block_invoke_2;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  v1 = 1498;
  if (_block_invoke_3_onceToken != -1)
  {
    dispatch_once(&_block_invoke_3_onceToken, block);
  }

  AudioServicesPlaySystemSoundWithCompletion(0x5DAu, 0);
}

- (void)audioRoutesForCategory:(id)category result:(id)result
{
  categoryCopy = category;
  resultCopy = result;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_audioRoutesForCategory_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = categoryCopy;
  v13 = resultCopy;
  v9 = resultCopy;
  v10 = categoryCopy;
  dispatch_async(internalQueue, block);
}

void __46__NACXPCServer_audioRoutesForCategory_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioRoutesRecordForCategory:*(a1 + 40)];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  [v2 timestamp];
  if (v4 - v5 <= 300.0)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v2 audioRoutes];
      (*(v8 + 16))(v8, v9);
    }
  }

  else
  {
    v6 = NMLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_25AEBF000, v6, OS_LOG_TYPE_DEFAULT, "Audio route cache expired, waiting for an update from companion", v10, 2u);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

- (void)beginObservingAudioRoutesForCategory:(id)category
{
  categoryCopy = category;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NACXPCServer_beginObservingAudioRoutesForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v10 = categoryCopy;
  v11 = currentConnection;
  v7 = currentConnection;
  v8 = categoryCopy;
  dispatch_async(internalQueue, block);
}

void __53__NACXPCServer_beginObservingAudioRoutesForCategory___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _audioRoutesRecordForCategory:*(a1 + 40)];
  v2 = [v3 observers];
  if (([v2 containsObject:*(a1 + 48)] & 1) == 0)
  {
    [v2 addObject:*(a1 + 48)];
    if ([v2 count] == 1)
    {
      [*(*(a1 + 32) + 64) beginObservingAudioRoutesForCategory:*(a1 + 40)];
    }
  }
}

- (void)endObservingAudioRoutesForCategory:(id)category
{
  categoryCopy = category;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NACXPCServer_endObservingAudioRoutesForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v10 = categoryCopy;
  v11 = currentConnection;
  v7 = currentConnection;
  v8 = categoryCopy;
  dispatch_async(internalQueue, block);
}

- (void)_endObservingAudioRoutesForCategory:(id)category connection:(id)connection
{
  categoryCopy = category;
  connectionCopy = connection;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NACXPCServer__endObservingAudioRoutesForCategory_connection___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = categoryCopy;
  v13 = connectionCopy;
  v9 = connectionCopy;
  v10 = categoryCopy;
  dispatch_async(internalQueue, block);
}

void __63__NACXPCServer__endObservingAudioRoutesForCategory_connection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _audioRoutesRecordForCategory:*(a1 + 40)];
  v2 = [v3 observers];
  if ([v2 containsObject:*(a1 + 48)])
  {
    [v2 removeObject:*(a1 + 48)];
    if (![v2 count])
    {
      [*(*(a1 + 32) + 64) endObservingAudioRoutesForCategory:*(a1 + 40)];
    }
  }
}

- (void)pickAudioRouteWithIdentifier:(id)identifier category:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_pickAudioRouteWithIdentifier_category___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = identifierCopy;
  v13 = categoryCopy;
  v9 = categoryCopy;
  v10 = identifierCopy;
  dispatch_async(internalQueue, block);
}

- (void)playToneWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NACXPCServer_playToneWithConfiguration___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(internalQueue, v7);
}

- (void)stopToneWithOptions:(id)options
{
  optionsCopy = options;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NACXPCServer_stopToneWithOptions___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = optionsCopy;
  v6 = optionsCopy;
  dispatch_async(internalQueue, v7);
}

- (void)client:(id)client volumeValue:(float)value didChangeForTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_client_volumeValue_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B588;
  block[4] = self;
  v11 = targetCopy;
  valueCopy = value;
  v9 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __54__NACXPCServer_client_volumeValue_didChangeForTarget___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 48);
  [v4 setVolumeValue:v2];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACVolumeValueDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client volumeControlAvailable:(BOOL)available didChangeForTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NACXPCServer_client_volumeControlAvailable_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  block[4] = self;
  v11 = targetCopy;
  availableCopy = available;
  v9 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __65__NACXPCServer_client_volumeControlAvailable_didChangeForTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
  [v3 setVolumeControlAvailable:*(a1 + 48)];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACVolumeControlAvailabilityDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client mutedState:(BOOL)state didChangeForTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NACXPCServer_client_mutedState_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  block[4] = self;
  v11 = targetCopy;
  stateCopy = state;
  v9 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __53__NACXPCServer_client_mutedState_didChangeForTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
  [v3 setMuted:*(a1 + 48)];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACMutedStateDidChangeNotificaton", 0, 0, 1u);
}

- (void)client:(id)client hapticIntensityDidChange:(float)change
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NACXPCServer_client_hapticIntensityDidChange___block_invoke;
  v5[3] = &unk_27992B5D8;
  v5[4] = self;
  changeCopy = change;
  dispatch_sync(internalQueue, v5);
}

void __48__NACXPCServer_client_hapticIntensityDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  [*(a1 + 32) _persistHapticIntensity];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACHapticIntensityDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client prominentHapticStateDidChange:(BOOL)change
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NACXPCServer_client_prominentHapticStateDidChange___block_invoke;
  v5[3] = &unk_27992B600;
  v5[4] = self;
  changeCopy = change;
  dispatch_sync(internalQueue, v5);
}

void __53__NACXPCServer_client_prominentHapticStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 76) = *(a1 + 40);
  [*(a1 + 32) _persistProminentHapticState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACProminentHapticStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client hapticStateDidChange:(int64_t)change
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__NACXPCServer_client_hapticStateDidChange___block_invoke;
  v5[3] = &unk_27992B628;
  v5[4] = self;
  v5[5] = change;
  dispatch_sync(internalQueue, v5);
}

void __44__NACXPCServer_client_hapticStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = *(a1 + 40);
  [*(a1 + 32) _persistHapticState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACHapticStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client systemMutedStateDidChange:(BOOL)change
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NACXPCServer_client_systemMutedStateDidChange___block_invoke;
  v5[3] = &unk_27992B600;
  v5[4] = self;
  changeCopy = change;
  dispatch_sync(internalQueue, v5);
}

void __49__NACXPCServer_client_systemMutedStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 88) = *(a1 + 40);
  [*(a1 + 32) _persistSystemMutedState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACSystemMutedStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client EULimit:(float)limit didChangeForTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NACXPCServer_client_EULimit_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B588;
  block[4] = self;
  v11 = targetCopy;
  limitCopy = limit;
  v9 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __50__NACXPCServer_client_EULimit_didChangeForTarget___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 48);
  [v4 setEUVolumeLimit:v2];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACEULimitDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client volumeWarningEnabled:(BOOL)enabled volumeWarningState:(int64_t)state didChangeForTarget:(id)target
{
  targetCopy = target;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__NACXPCServer_client_volumeWarningEnabled_volumeWarningState_didChangeForTarget___block_invoke;
  v12[3] = &unk_27992BA68;
  v12[4] = self;
  v13 = targetCopy;
  enabledCopy = enabled;
  stateCopy = state;
  v11 = targetCopy;
  dispatch_sync(internalQueue, v12);
}

void __82__NACXPCServer_client_volumeWarningEnabled_volumeWarningState_didChangeForTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _volumeRecordForTarget:*(a1 + 40)];
  [v3 setVolumeWarningEnabled:*(a1 + 56)];
  [v3 setVolumeWarningState:*(a1 + 48)];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACVolumeWarningDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client availableListeningModes:(id)modes didChangeForTarget:(id)target
{
  modesCopy = modes;
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NACXPCServer_client_availableListeningModes_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = targetCopy;
  v14 = modesCopy;
  v10 = modesCopy;
  v11 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __66__NACXPCServer_client_availableListeningModes_didChangeForTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _listeningModesRecordForTarget:*(a1 + 40)];
  [v3 setAvailableListeningModes:*(a1 + 48)];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACAvailableListeningModesDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client currentListeningMode:(id)mode didChangeForTarget:(id)target
{
  modeCopy = mode;
  targetCopy = target;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NACXPCServer_client_currentListeningMode_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = targetCopy;
  v14 = modeCopy;
  v10 = modeCopy;
  v11 = targetCopy;
  dispatch_sync(internalQueue, block);
}

void __63__NACXPCServer_client_currentListeningMode_didChangeForTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _listeningModesRecordForTarget:*(a1 + 40)];
  [v3 setCurrentListeningMode:*(a1 + 48)];
  [*(a1 + 32) _persistVolumeRecords];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACCurrentListeningModeDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)client didFailToSetCurrentListeningModeForTarget:(id)target error:(id)error
{
  errorCopy = error;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NACXPCServer_client_didFailToSetCurrentListeningModeForTarget_error___block_invoke;
  block[3] = &unk_27992B4E8;
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_sync(internalQueue, block);
}

void __71__NACXPCServer_client_didFailToSetCurrentListeningModeForTarget_error___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v7[0] = @"errorDomain";
  v3 = [*(a1 + 32) domain];
  v7[1] = @"errorCode";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 postNotificationName:@"NACFailedToSetCurrentListeningModeNotification" object:0 userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)client:(id)client audioRoutes:(id)routes didChangeForCategory:(id)category
{
  routesCopy = routes;
  categoryCopy = category;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACXPCServer_client_audioRoutes_didChangeForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = categoryCopy;
  v14 = routesCopy;
  v10 = routesCopy;
  v11 = categoryCopy;
  dispatch_sync(internalQueue, block);
}

void __56__NACXPCServer_client_audioRoutes_didChangeForCategory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _audioRoutesRecordForCategory:*(a1 + 40)];
  v3 = [v2 audioRoutes];
  v4 = [*(a1 + 48) count];
  if (v4 >= [v3 count])
  {
    [*(a1 + 32) _updateAudioRoutes:*(a1 + 48) category:*(a1 + 40)];
  }

  else
  {
    v5 = NMLogForCategory(4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Existing route list is larger, scheduling deferred update", v6, 2u);
    }

    [*(a1 + 32) _scheduleDeferredAudioRoutesUpdate:*(a1 + 48) category:*(a1 + 40)];
  }
}

- (void)_scheduleDeferredAudioRoutesUpdate:(id)update category:(id)category
{
  categoryCopy = category;
  updateCopy = update;
  v8 = [(NACXPCServer *)self _audioRoutesRecordForCategory:categoryCopy];
  [v8 setDeferredAudioRoutes:updateCopy];

  if (!self->_audioRouteDeferTimer)
  {
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
    audioRouteDeferTimer = self->_audioRouteDeferTimer;
    self->_audioRouteDeferTimer = v9;

    objc_initWeak(&location, self);
    v11 = self->_audioRouteDeferTimer;
    v12 = dispatch_time(0, 3000000000);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x11E1A300uLL);
    v13 = self->_audioRouteDeferTimer;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__NACXPCServer__scheduleDeferredAudioRoutesUpdate_category___block_invoke;
    v14[3] = &unk_27992B7C8;
    objc_copyWeak(&v17, &location);
    v15 = v8;
    v16 = categoryCopy;
    dispatch_source_set_event_handler(v13, v14);
    dispatch_resume(self->_audioRouteDeferTimer);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __60__NACXPCServer__scheduleDeferredAudioRoutesUpdate_category___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [*(a1 + 32) deferredAudioRoutes];
  [WeakRetained _updateAudioRoutes:v2 category:*(a1 + 40)];
}

- (void)_updateAudioRoutes:(id)routes category:(id)category
{
  categoryCopy = category;
  routesCopy = routes;
  [(NACXPCServer *)self _cancelDeferredAudioRoutesUpdate];
  v9 = [(NACXPCServer *)self _audioRoutesRecordForCategory:categoryCopy];

  [v9 setAudioRoutes:routesCopy];
  [v9 setDeferredAudioRoutes:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [v9 setTimestamp:?];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACAudioRoutesDidChangeNotification", 0, 0, 1u);
}

- (void)_cancelDeferredAudioRoutesUpdate
{
  audioRouteDeferTimer = self->_audioRouteDeferTimer;
  if (audioRouteDeferTimer)
  {
    dispatch_source_cancel(audioRouteDeferTimer);
    v4 = self->_audioRouteDeferTimer;
    self->_audioRouteDeferTimer = 0;
  }
}

- (void)client:(id)client volumeObservationCancelledForTarget:(id)target
{
  v14 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v6 = NMLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = targetCopy;
    _os_log_impl(&dword_25AEBF000, v6, OS_LOG_TYPE_DEFAULT, "[NACXPC] Got IDS volume observation cancelled message for %@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__NACXPCServer_client_volumeObservationCancelledForTarget___block_invoke;
  v10[3] = &unk_27992B510;
  v10[4] = self;
  v11 = targetCopy;
  v8 = targetCopy;
  dispatch_sync(internalQueue, v10);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __59__NACXPCServer_client_volumeObservationCancelledForTarget___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) _aggregatedCountOfObserversForTarget:*(a1 + 40) inRecords:*(*(a1 + 32) + 32)];
  if (result >= 1)
  {
    v3 = result;
    v4 = NMLogForCategory(4);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v7 = 134218242;
      v8 = v3;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_25AEBF000, v4, OS_LOG_TYPE_DEFAULT, "[NACXPC] Still have %ld observers. Resending IDS beginObservingVolume request for %@", &v7, 0x16u);
    }

    result = [*(*(a1 + 32) + 64) beginObservingVolumeForTarget:*(a1 + 40)];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)client:(id)client routeObservationCancelledForCategory:(id)category
{
  categoryCopy = category;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NACXPCServer_client_routeObservationCancelledForCategory___block_invoke;
  v8[3] = &unk_27992B510;
  v8[4] = self;
  v9 = categoryCopy;
  v7 = categoryCopy;
  dispatch_sync(internalQueue, v8);
}

void __60__NACXPCServer_client_routeObservationCancelledForCategory___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _audioRoutesRecordForCategory:*(a1 + 40)];
  v2 = [v3 observers];
  if ([v2 count])
  {
    [*(*(a1 + 32) + 64) beginObservingAudioRoutesForCategory:*(a1 + 40)];
  }
}

- (id)_cachedVolumeRecords
{
  v2 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"VolumeRecords"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v2)
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v4 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
    v16 = 0;
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v2 error:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = NMLogForCategory(4);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(NACXPCServer *)v11 _cachedVolumeRecords];
      }
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__NACXPCServer__cachedVolumeRecords__block_invoke;
    v14[3] = &unk_27992BA90;
    v15 = dictionary;
    [v10 enumerateKeysAndObjectsUsingBlock:v14];
  }

  return dictionary;
}

void __36__NACXPCServer__cachedVolumeRecords__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [NACProxyVolumeControlTarget volumeControlTargetWithCategory:v7];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
    }
  }
}

- (void)_persistVolumeRecords
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "[NACXPC] Failed to archive volumeRecords due to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (float)_cachedHapticIntensity
{
  v2 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"HapticIntensity"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)_persistHapticIntensity
{
  domainAccessor = self->_domainAccessor;
  *&v2 = self->_hapticIntensity;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
  [(NPSDomainAccessor *)domainAccessor setObject:v5 forKey:@"HapticIntensity"];

  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_persistSystemMutedState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemMutedState];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"SystemMutedState"];

  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_persistProminentHapticState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_prominentHapticEnabled];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"ProminentHapticState"];

  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (int64_t)_cachedHapticState
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"HapticState"];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    [(NACXPCServer *)self _cachedHapticIntensity];
    unsignedIntegerValue = NACStateFromIntensityAndProminentEnabled([(NACXPCServer *)self _cachedProminentHapticState], v6);
  }

  v7 = unsignedIntegerValue;

  return v7;
}

- (void)_persistHapticState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hapticState];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"HapticState"];

  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_cleanupConnection:(id)connection
{
  v27 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [(NSMutableDictionary *)self->_volumeRecords allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [(NACXPCServer *)self _endObservingVolumeForTarget:v10 connection:connectionCopy];
        [(NACXPCServer *)self _endObservingListeningModesForTarget:v10 connection:connectionCopy];
      }

      v7 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [(NACXPCServer *)self _routeObservationCategoriesForConnection:connectionCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NACXPCServer *)self _endObservingAudioRoutesForCategory:*(*(&v17 + 1) + 8 * j) connection:connectionCopy];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_volumeRecordForTarget:(id)target
{
  targetCopy = target;
  v5 = [(NSMutableDictionary *)self->_volumeRecords objectForKeyedSubscript:targetCopy];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_volumeRecords setObject:v5 forKeyedSubscript:targetCopy];
  }

  return v5;
}

- (id)_listeningModesRecordForTarget:(id)target
{
  targetCopy = target;
  v5 = [(NSMutableDictionary *)self->_listeningModesRecords objectForKeyedSubscript:targetCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(_NACListeningModesRecord);
    listeningModesRecords = self->_listeningModesRecords;
    if (!listeningModesRecords)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v8 = self->_listeningModesRecords;
      self->_listeningModesRecords = dictionary;

      listeningModesRecords = self->_listeningModesRecords;
    }

    [(NSMutableDictionary *)listeningModesRecords setObject:v5 forKeyedSubscript:targetCopy];
  }

  return v5;
}

- (id)_audioRoutesRecordForCategory:(id)category
{
  v4 = NACCategoryStringWithRouteCategory(category);
  v5 = [(NSMutableDictionary *)self->_audioRoutesRecords objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    v6 = objc_opt_new();
    [v5 setObservers:v6];

    [(NSMutableDictionary *)self->_audioRoutesRecords setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_routeObservationCategoriesForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_opt_new();
  audioRoutesRecords = self->_audioRoutesRecords;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NACXPCServer__routeObservationCategoriesForConnection___block_invoke;
  v12[3] = &unk_27992BAB8;
  v13 = connectionCopy;
  v7 = v5;
  v14 = v7;
  v8 = connectionCopy;
  [(NSMutableDictionary *)audioRoutesRecords enumerateKeysAndObjectsUsingBlock:v12];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __57__NACXPCServer__routeObservationCategoriesForConnection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 observers];
  if ([v5 containsObject:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)_cachedVolumeRecords
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "[NACXPC] Failed to unarchive cached volume records due to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end