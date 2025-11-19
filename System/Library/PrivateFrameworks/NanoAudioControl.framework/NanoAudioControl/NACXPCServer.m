@interface NACXPCServer
+ (id)server;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (NACXPCServer)init;
- (float)_cachedHapticIntensity;
- (id)_audioRoutesRecordForCategory:(id)a3;
- (id)_cachedVolumeRecords;
- (id)_listeningModesRecordForTarget:(id)a3;
- (id)_routeObservationCategoriesForConnection:(id)a3;
- (id)_volumeRecordForTarget:(id)a3;
- (int64_t)_aggregatedCountOfObserversForTarget:(id)a3 inRecords:(id)a4;
- (int64_t)_cachedHapticState;
- (void)EULimitForTarget:(id)a3 result:(id)a4;
- (void)_beginObservingListeningModesForTarget:(id)a3 connection:(id)a4;
- (void)_beginObservingVolumeForTarget:(id)a3 connection:(id)a4;
- (void)_cachedVolumeRecords;
- (void)_cancelDeferredAudioRoutesUpdate;
- (void)_cleanupConnection:(id)a3;
- (void)_endObservingAudioRoutesForCategory:(id)a3 connection:(id)a4;
- (void)_endObservingListeningModesForTarget:(id)a3 connection:(id)a4;
- (void)_endObservingVolumeForTarget:(id)a3 connection:(id)a4;
- (void)_persistHapticIntensity;
- (void)_persistHapticState;
- (void)_persistProminentHapticState;
- (void)_persistSystemMutedState;
- (void)_persistVolumeRecords;
- (void)_scheduleDeferredAudioRoutesUpdate:(id)a3 category:(id)a4;
- (void)_updateAudioRoutes:(id)a3 category:(id)a4;
- (void)audioRoutesForCategory:(id)a3 result:(id)a4;
- (void)availableListeningModesForTarget:(id)a3 result:(id)a4;
- (void)beginObservingAudioRoutesForCategory:(id)a3;
- (void)beginObservingListeningModesForTarget:(id)a3;
- (void)beginObservingVolumeForTarget:(id)a3;
- (void)client:(id)a3 EULimit:(float)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 audioRoutes:(id)a4 didChangeForCategory:(id)a5;
- (void)client:(id)a3 availableListeningModes:(id)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 currentListeningMode:(id)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 didFailToSetCurrentListeningModeForTarget:(id)a4 error:(id)a5;
- (void)client:(id)a3 hapticIntensityDidChange:(float)a4;
- (void)client:(id)a3 hapticStateDidChange:(int64_t)a4;
- (void)client:(id)a3 mutedState:(BOOL)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 prominentHapticStateDidChange:(BOOL)a4;
- (void)client:(id)a3 routeObservationCancelledForCategory:(id)a4;
- (void)client:(id)a3 systemMutedStateDidChange:(BOOL)a4;
- (void)client:(id)a3 volumeControlAvailable:(BOOL)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 volumeObservationCancelledForTarget:(id)a4;
- (void)client:(id)a3 volumeValue:(float)a4 didChangeForTarget:(id)a5;
- (void)client:(id)a3 volumeWarningEnabled:(BOOL)a4 volumeWarningState:(int64_t)a5 didChangeForTarget:(id)a6;
- (void)currentListeningModeForTarget:(id)a3 result:(id)a4;
- (void)endObservingAudioRoutesForCategory:(id)a3;
- (void)endObservingListeningModesForTarget:(id)a3;
- (void)endObservingVolumeForTarget:(id)a3;
- (void)hapticIntensity:(id)a3;
- (void)hapticState:(id)a3;
- (void)mutedStateForTarget:(id)a3 result:(id)a4;
- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4;
- (void)playToneWithConfiguration:(id)a3;
- (void)prominentHapticEnabled:(id)a3;
- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4;
- (void)setHapticIntensity:(float)a3;
- (void)setHapticState:(int64_t)a3;
- (void)setMuted:(BOOL)a3 forTarget:(id)a4;
- (void)setProminentHapticEnabled:(BOOL)a3;
- (void)setSystemMuted:(BOOL)a3;
- (void)setVolumeValue:(float)a3 forTarget:(id)a4;
- (void)stopToneWithOptions:(id)a3;
- (void)systemMutedState:(id)a3;
- (void)volumeControlAvailabilityForTarget:(id)a3 result:(id)a4;
- (void)volumeValueForTarget:(id)a3 result:(id)a4;
- (void)volumeWarningForTarget:(id)a3 result:(id)a4;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C49AC8];
  [v11 setClasses:v10 forSelector:sel_audioRoutesForCategory_result_ argumentIndex:0 ofReply:1];
  [v7 setExportedInterface:v11];
  [v7 setExportedObject:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke;
  v18[3] = &unk_27992B9A8;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [v7 setInvalidationHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__NACXPCServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v15[3] = &unk_27992B9A8;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [v7 setInterruptionHandler:v15];
  [v7 resume];
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

- (void)beginObservingVolumeForTarget:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to begin observing volume for %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_beginObservingVolumeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingVolumeForTarget:(id)a3 connection:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NACXPCServer *)self _volumeRecordForTarget:v6];
  v9 = [v8 observers];
  if (([v9 containsObject:v7] & 1) == 0)
  {
    [v9 addObject:v7];
    if ([(NACXPCServer *)self _aggregatedCountOfObserversForTarget:v6 inRecords:self->_volumeRecords]== 1)
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS beginObservingVolume request for %@ because first observer is added", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient beginObservingVolumeForTarget:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (int64_t)_aggregatedCountOfObserversForTarget:(id)a3 inRecords:(id)a4
{
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ([v5 isPairedDevice])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __63__NACXPCServer__aggregatedCountOfObserversForTarget_inRecords___block_invoke;
    v12[3] = &unk_27992B9D0;
    v12[4] = &v13;
    [v6 enumerateKeysAndObjectsUsingBlock:v12];
  }

  else
  {
    v7 = [v6 objectForKeyedSubscript:v5];
    v8 = [v7 observers];
    v9 = [v8 count];
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

- (void)endObservingVolumeForTarget:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to end observing volume for %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACXPCServer_endObservingVolumeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_endObservingVolumeForTarget:(id)a3 connection:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NACXPCServer *)self _volumeRecordForTarget:v6];
  v9 = [v8 observers];
  if ([v9 containsObject:v7])
  {
    [v9 removeObject:v7];
    if (![(NACXPCServer *)self _aggregatedCountOfObserversForTarget:v6 inRecords:self->_volumeRecords])
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS endObservingVolume request for %@ because last observer is removed", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient endObservingVolumeForTarget:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)volumeValueForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACXPCServer_volumeValueForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)volumeControlAvailabilityForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NACXPCServer_volumeControlAvailabilityForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)mutedStateForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NACXPCServer_mutedStateForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)EULimitForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NACXPCServer_EULimitForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)volumeWarningForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_volumeWarningForTarget_result___block_invoke;
  block[3] = &unk_27992B9F8;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
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

- (void)setVolumeValue:(float)a3 forTarget:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACXPCServer_setVolumeValue_forTarget___block_invoke;
  block[3] = &unk_27992B588;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)setMuted:(BOOL)a3 forTarget:(id)a4
{
  v6 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NACXPCServer_setMuted_forTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(internalQueue, block);
}

- (void)setSystemMuted:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCServer_setSystemMuted___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)beginObservingListeningModesForTarget:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to begin observing listening modes for %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_beginObservingListeningModesForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)endObservingListeningModesForTarget:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NMLogForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_25AEBF000, v5, OS_LOG_TYPE_DEFAULT, "[NACXPC] Received request to end observing listening modes for %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__NACXPCServer_endObservingListeningModesForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v4;
  v13 = v6;
  v8 = v6;
  v9 = v4;
  dispatch_async(internalQueue, block);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_beginObservingListeningModesForTarget:(id)a3 connection:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NACXPCServer *)self _listeningModesRecordForTarget:v6];
  v9 = [v8 observers];
  v10 = [v9 containsObject:v7];

  if ((v10 & 1) == 0)
  {
    v11 = [v8 observers];

    if (!v11)
    {
      v12 = [MEMORY[0x277CBEB58] set];
      [v8 setObservers:v12];
    }

    v13 = [v8 observers];
    [v13 addObject:v7];

    if ([(NACXPCServer *)self _aggregatedCountOfObserversForTarget:v6 inRecords:self->_listeningModesRecords]== 1)
    {
      v14 = NMLogForCategory(4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v6;
        _os_log_impl(&dword_25AEBF000, v14, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS beginObservingListeningModes request for %@ because first observer is added", &v16, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient beginObservingListeningModesForTarget:v6];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_endObservingListeningModesForTarget:(id)a3 connection:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NACXPCServer *)self _listeningModesRecordForTarget:v6];
  v9 = [v8 observers];
  if ([v9 containsObject:v7])
  {
    [v9 removeObject:v7];
    if (![(NACXPCServer *)self _aggregatedCountOfObserversForTarget:v6 inRecords:self->_listeningModesRecords])
    {
      v10 = NMLogForCategory(4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_25AEBF000, v10, OS_LOG_TYPE_DEFAULT, "[NACXPC] Sending IDS endObservingListeningModes request for %@ because last observer is removed", &v12, 0xCu);
      }

      [(NACIDSClient *)self->_idsClient endObservingListeningModesForTarget:v6];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)availableListeningModesForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__NACXPCServer_availableListeningModesForTarget_result___block_invoke;
    block[3] = &unk_27992B538;
    block[4] = self;
    v10 = v6;
    v11 = v7;
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

- (void)currentListeningModeForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NACXPCServer_currentListeningModeForTarget_result___block_invoke;
    block[3] = &unk_27992B538;
    block[4] = self;
    v10 = v6;
    v11 = v7;
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

- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NACXPCServer_setCurrentListeningMode_forTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)hapticIntensity:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NACXPCServer_hapticIntensity___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)prominentHapticEnabled:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NACXPCServer_prominentHapticEnabled___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)hapticState:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__NACXPCServer_hapticState___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)systemMutedState:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__NACXPCServer_systemMutedState___block_invoke;
  v7[3] = &unk_27992BA20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setHapticIntensity:(float)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__NACXPCServer_setHapticIntensity___block_invoke;
  v4[3] = &unk_27992B5D8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)setProminentHapticEnabled:(BOOL)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NACXPCServer_setProminentHapticEnabled___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  v5 = a3;
  dispatch_async(internalQueue, v4);
}

- (void)setHapticState:(int64_t)a3
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCServer_setHapticState___block_invoke;
  v4[3] = &unk_27992B628;
  v4[4] = self;
  v4[5] = a3;
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

- (void)audioRoutesForCategory:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCServer_audioRoutesForCategory_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)beginObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NACXPCServer_beginObservingAudioRoutesForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
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

- (void)endObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__NACXPCServer_endObservingAudioRoutesForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(internalQueue, block);
}

- (void)_endObservingAudioRoutesForCategory:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NACXPCServer__endObservingAudioRoutesForCategory_connection___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
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

- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_pickAudioRouteWithIdentifier_category___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)playToneWithConfiguration:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NACXPCServer_playToneWithConfiguration___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)stopToneWithOptions:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NACXPCServer_stopToneWithOptions___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

- (void)client:(id)a3 volumeValue:(float)a4 didChangeForTarget:(id)a5
{
  v7 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCServer_client_volumeValue_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B588;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v9 = v7;
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

- (void)client:(id)a3 volumeControlAvailable:(BOOL)a4 didChangeForTarget:(id)a5
{
  v7 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__NACXPCServer_client_volumeControlAvailable_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v9 = v7;
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

- (void)client:(id)a3 mutedState:(BOOL)a4 didChangeForTarget:(id)a5
{
  v7 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NACXPCServer_client_mutedState_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v9 = v7;
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

- (void)client:(id)a3 hapticIntensityDidChange:(float)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__NACXPCServer_client_hapticIntensityDidChange___block_invoke;
  v5[3] = &unk_27992B5D8;
  v5[4] = self;
  v6 = a4;
  dispatch_sync(internalQueue, v5);
}

void __48__NACXPCServer_client_hapticIntensityDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 72) = *(a1 + 40);
  [*(a1 + 32) _persistHapticIntensity];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACHapticIntensityDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)a3 prominentHapticStateDidChange:(BOOL)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__NACXPCServer_client_prominentHapticStateDidChange___block_invoke;
  v5[3] = &unk_27992B600;
  v5[4] = self;
  v6 = a4;
  dispatch_sync(internalQueue, v5);
}

void __53__NACXPCServer_client_prominentHapticStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 76) = *(a1 + 40);
  [*(a1 + 32) _persistProminentHapticState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACProminentHapticStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)a3 hapticStateDidChange:(int64_t)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__NACXPCServer_client_hapticStateDidChange___block_invoke;
  v5[3] = &unk_27992B628;
  v5[4] = self;
  v5[5] = a4;
  dispatch_sync(internalQueue, v5);
}

void __44__NACXPCServer_client_hapticStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = *(a1 + 40);
  [*(a1 + 32) _persistHapticState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACHapticStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)a3 systemMutedStateDidChange:(BOOL)a4
{
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__NACXPCServer_client_systemMutedStateDidChange___block_invoke;
  v5[3] = &unk_27992B600;
  v5[4] = self;
  v6 = a4;
  dispatch_sync(internalQueue, v5);
}

void __49__NACXPCServer_client_systemMutedStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 88) = *(a1 + 40);
  [*(a1 + 32) _persistSystemMutedState];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"NACSystemMutedStateDidChangeNotification", 0, 0, 1u);
}

- (void)client:(id)a3 EULimit:(float)a4 didChangeForTarget:(id)a5
{
  v7 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NACXPCServer_client_EULimit_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B588;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v9 = v7;
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

- (void)client:(id)a3 volumeWarningEnabled:(BOOL)a4 volumeWarningState:(int64_t)a5 didChangeForTarget:(id)a6
{
  v9 = a6;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__NACXPCServer_client_volumeWarningEnabled_volumeWarningState_didChangeForTarget___block_invoke;
  v12[3] = &unk_27992BA68;
  v12[4] = self;
  v13 = v9;
  v15 = a4;
  v14 = a5;
  v11 = v9;
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

- (void)client:(id)a3 availableListeningModes:(id)a4 didChangeForTarget:(id)a5
{
  v7 = a4;
  v8 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__NACXPCServer_client_availableListeningModes_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
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

- (void)client:(id)a3 currentListeningMode:(id)a4 didChangeForTarget:(id)a5
{
  v7 = a4;
  v8 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__NACXPCServer_client_currentListeningMode_didChangeForTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
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

- (void)client:(id)a3 didFailToSetCurrentListeningModeForTarget:(id)a4 error:(id)a5
{
  v6 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__NACXPCServer_client_didFailToSetCurrentListeningModeForTarget_error___block_invoke;
  block[3] = &unk_27992B4E8;
  v10 = v6;
  v8 = v6;
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

- (void)client:(id)a3 audioRoutes:(id)a4 didChangeForCategory:(id)a5
{
  v7 = a4;
  v8 = a5;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACXPCServer_client_audioRoutes_didChangeForCategory___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v13 = v8;
  v14 = v7;
  v10 = v7;
  v11 = v8;
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

- (void)_scheduleDeferredAudioRoutesUpdate:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NACXPCServer *)self _audioRoutesRecordForCategory:v6];
  [v8 setDeferredAudioRoutes:v7];

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
    v16 = v6;
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

- (void)_updateAudioRoutes:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(NACXPCServer *)self _cancelDeferredAudioRoutesUpdate];
  v9 = [(NACXPCServer *)self _audioRoutesRecordForCategory:v6];

  [v9 setAudioRoutes:v7];
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

- (void)client:(id)a3 volumeObservationCancelledForTarget:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = NMLogForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_25AEBF000, v6, OS_LOG_TYPE_DEFAULT, "[NACXPC] Got IDS volume observation cancelled message for %@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__NACXPCServer_client_volumeObservationCancelledForTarget___block_invoke;
  v10[3] = &unk_27992B510;
  v10[4] = self;
  v11 = v5;
  v8 = v5;
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

- (void)client:(id)a3 routeObservationCancelledForCategory:(id)a4
{
  v5 = a4;
  internalQueue = self->_internalQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__NACXPCServer_client_routeObservationCancelledForCategory___block_invoke;
  v8[3] = &unk_27992B510;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
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
    v15 = v3;
    [v10 enumerateKeysAndObjectsUsingBlock:v14];
  }

  return v3;
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
  v4 = a1;
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

  v6 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_persistSystemMutedState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemMutedState];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"SystemMutedState"];

  v5 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_persistProminentHapticState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_prominentHapticEnabled];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"ProminentHapticState"];

  v5 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (int64_t)_cachedHapticState
{
  v3 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"HapticState"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    [(NACXPCServer *)self _cachedHapticIntensity];
    v5 = NACStateFromIntensityAndProminentEnabled([(NACXPCServer *)self _cachedProminentHapticState], v6);
  }

  v7 = v5;

  return v7;
}

- (void)_persistHapticState
{
  domainAccessor = self->_domainAccessor;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_hapticState];
  [(NPSDomainAccessor *)domainAccessor setObject:v4 forKey:@"HapticState"];

  v5 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)_cleanupConnection:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(NSMutableDictionary *)self->_volumeRecords allKeys];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [(NACXPCServer *)self _endObservingVolumeForTarget:v10 connection:v4];
        [(NACXPCServer *)self _endObservingListeningModesForTarget:v10 connection:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v11 = [(NACXPCServer *)self _routeObservationCategoriesForConnection:v4];
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

        [(NACXPCServer *)self _endObservingAudioRoutesForCategory:*(*(&v17 + 1) + 8 * j) connection:v4];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_volumeRecordForTarget:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_volumeRecords objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_volumeRecords setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_listeningModesRecordForTarget:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_listeningModesRecords objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(_NACListeningModesRecord);
    listeningModesRecords = self->_listeningModesRecords;
    if (!listeningModesRecords)
    {
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v8 = self->_listeningModesRecords;
      self->_listeningModesRecords = v7;

      listeningModesRecords = self->_listeningModesRecords;
    }

    [(NSMutableDictionary *)listeningModesRecords setObject:v5 forKeyedSubscript:v4];
  }

  return v5;
}

- (id)_audioRoutesRecordForCategory:(id)a3
{
  v4 = NACCategoryStringWithRouteCategory(a3);
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

- (id)_routeObservationCategoriesForConnection:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  audioRoutesRecords = self->_audioRoutesRecords;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__NACXPCServer__routeObservationCategoriesForConnection___block_invoke;
  v12[3] = &unk_27992BAB8;
  v13 = v4;
  v7 = v5;
  v14 = v7;
  v8 = v4;
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
  v4 = a1;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "[NACXPC] Failed to unarchive cached volume records due to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end