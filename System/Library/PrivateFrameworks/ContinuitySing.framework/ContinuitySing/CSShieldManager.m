@interface CSShieldManager
+ (CSShieldManager)sharedManager;
+ (void)configureTips;
- (BOOL)isMicLocal;
- (BOOL)isMicStreaming;
- (CSShieldManager)init;
- (id)_requestClient:(BOOL)a3;
- (id)observersCopy;
- (void)_bootstrapRequestClientIfNeededAndAvailable;
- (void)_finishLoading;
- (void)_handleCallNotification:(id)a3;
- (void)_invalidateRequestClient;
- (void)_notifyDisconnect;
- (void)_requestInitialSessionStateWithCompletion:(id)a3;
- (void)_setupCallNotificationsListener;
- (void)_setupPlaybackManager;
- (void)_updateSessionState:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)exitRapportSession;
- (void)exitSingSession;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)removeObserver:(id)a3;
- (void)requestMicrophoneActivationWithCompletion:(id)a3;
- (void)updateReverbLevel:(int64_t)a3;
@end

@implementation CSShieldManager

+ (CSShieldManager)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[CSShieldManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

uint64_t __32__CSShieldManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager = objc_alloc_init(CSShieldManager);

  return MEMORY[0x2821F96F8]();
}

- (CSShieldManager)init
{
  v9.receiver = self;
  v9.super_class = CSShieldManager;
  v2 = [(CSShieldManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v2->_loading = 1;
    v5 = [MEMORY[0x277CF6C50] sharedInstance];
    [v5 addObserver:v2 forKeyPath:*MEMORY[0x277CF6C30] options:0 context:0];

    v6 = objc_alloc_init(MEMORY[0x277D441E0]);
    remoteDisplayDiscovery = v2->_remoteDisplayDiscovery;
    v2->_remoteDisplayDiscovery = v6;

    [(RPRemoteDisplayDiscovery *)v2->_remoteDisplayDiscovery setDiscoveryFlags:3];
    [(RPRemoteDisplayDiscovery *)v2->_remoteDisplayDiscovery activateWithCompletion:&__block_literal_global_6];
    [objc_opt_class() configureTips];
    [(CSShieldManager *)v2 _setupCallNotificationsListener];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSShieldManager;
  [(CSShieldManager *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:*MEMORY[0x277CF6C30]])
  {
    [(CSShieldManager *)self _bootstrapRequestClientIfNeededAndAvailable];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CSShieldManager;
    [(CSShieldManager *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)updateReverbLevel:(int64_t)a3
{
  if ([(CSSingSessionState *)self->_sessionState reverbLevel]!= a3)
  {
    v5 = [CSSingSessionState alloc];
    [(CSSingSessionState *)self->_sessionState micVolume];
    v7 = v6;
    v8 = [(CSSingSessionState *)self->_sessionState activeMicRemoteDisplayID];
    v9 = [(CSSingSessionState *)self->_sessionState participants];
    v10 = [(CSSingSessionState *)v5 initWithMicVolume:a3 reverbLevel:v8 activeMicRemoteDisplayID:v9 participants:[(CSSingSessionState *)self->_sessionState sdrMode] sdrMode:v7];

    [(CSShieldManager *)self _updateSessionState:v10];
  }
}

- (void)_setupCallNotificationsListener
{
  v3 = [MEMORY[0x277D6EDF8] sharedInstance];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__handleCallNotification_ name:*MEMORY[0x277D6EFF0] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__handleCallNotification_ name:*MEMORY[0x277D6F038] object:0];
}

- (void)_handleCallNotification:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 object];
    if ([v7 status] == 1 && (objc_msgSend(v7, "isScreening") & 1) == 0)
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315650;
        v10 = "[CSShieldManager _handleCallNotification:]";
        v11 = 2112;
        v12 = self;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ User answered call, lets disconnect Sing %@", &v9, 0x20u);
      }

      [(CSShieldManager *)self _notifyDisconnect];
    }
  }
}

- (id)observersCopy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_observers copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)_requestClient:(BOOL)a3
{
  if (a3)
  {
    [(CSShieldManager *)self _bootstrapRequestClientIfNeededAndAvailable];
  }

  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_requestClient;
  objc_sync_exit(v4);

  return v5;
}

- (void)_invalidateRequestClient
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    requestClient = v2->_requestClient;
    v6 = 136315650;
    v7 = "[CSShieldManager _invalidateRequestClient]";
    v8 = 2112;
    v9 = v2;
    v10 = 2112;
    v11 = requestClient;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ _invalidateRequestClient %@", &v6, 0x20u);
  }

  v5 = v2->_requestClient;
  v2->_requestClient = 0;

  objc_sync_exit(v2);
}

- (void)_bootstrapRequestClientIfNeededAndAvailable
{
  v3 = [(CSShieldManager *)self _requestClient:0];
  v4 = [MEMORY[0x277CF6C50] sharedInstance];
  v5 = [v4 activeConfiguration];

  v6 = [v5 remoteDisplayIdentifier];
  v7 = [v5 participantInfo];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v3 == 0)
  {
    v11 = ContinuitySingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "[CSShieldManager _bootstrapRequestClientIfNeededAndAvailable]";
      v23 = 2112;
      v24 = self;
      v25 = 2112;
      v26 = v6;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: %@ bootstrapping continuity sing client link with remote display identifier %@; local participant info %@", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke;
    aBlock[3] = &unk_278E0ABD0;
    objc_copyWeak(&v20, buf);
    v12 = _Block_copy(aBlock);
    v13 = [CSRemoteRequestClient alloc];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_2;
    v17[3] = &unk_278E0AFB0;
    objc_copyWeak(&v18, buf);
    v17[4] = self;
    v3 = [(CSRemoteRequestClient *)v13 initWithRemoteDisplayIdentifier:v6 participantInfo:v8 disconnectHandler:v12 connectionCompletionHandler:v17];
    v14 = self;
    objc_sync_enter(v14);
    objc_storeStrong(&v14->_requestClient, v3);
    objc_sync_exit(v14);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_5;
    v15[3] = &unk_278E0B4B8;
    objc_copyWeak(&v16, buf);
    [(CSRemoteRequestClient *)v3 setSessionStateUpdateHandler:v15];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyDisconnect];
    WeakRetained = v2;
  }
}

void __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      [WeakRetained _invalidateRequestClient];
    }

    else
    {
      v6 = *(a1 + 32);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_3;
      v9[3] = &unk_278E0ABD0;
      objc_copyWeak(&v10, (a1 + 40));
      [v6 _requestInitialSessionStateWithCompletion:v9];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_4;
      v7[3] = &unk_278E0ACD8;
      v8 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v7);

      objc_destroyWeak(&v10);
    }
  }
}

void __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishLoading];
}

void __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_6;
  v5[3] = &unk_278E0B490;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __62__CSShieldManager__bootstrapRequestClientIfNeededAndAvailable__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSessionState:*(a1 + 32)];
}

- (void)_notifyDisconnect
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CSShieldManager__notifyDisconnect__block_invoke;
  block[3] = &unk_278E0ACD8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__CSShieldManager__notifyDisconnect__block_invoke(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) observersCopy];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 shieldManagerDidReceiveDisconnectRequest:*(a1 + 32)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)_finishLoading
{
  [(CSShieldManager *)self _setupPlaybackManager];
  self->_loading = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(CSShieldManager *)self observersCopy];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 shieldManagerDidFinishLoading:self withPlaybackManager:self->_playbackManager];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }
}

- (void)_setupPlaybackManager
{
  v3 = objc_alloc_init(CSPlaybackManager);
  playbackManager = self->_playbackManager;
  self->_playbackManager = v3;

  MEMORY[0x2821F96F8]();
}

- (void)_requestInitialSessionStateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CSShieldManager *)self _requestClient:0];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke;
  v7[3] = &unk_278E0B4E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 retrieveSessionState:v7];
}

void __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke_2;
  v11[3] = &unk_278E0B2A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

uint64_t __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _updateSessionState:?];
  }

  else
  {
    v2 = ContinuitySingLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke_2_cold_1(a1, v2);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)_updateSessionState:(id)a3
{
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  objc_storeStrong(&self->_sessionState, a3);
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 activeMicRemoteDisplayID];
    v8 = NSStringFromCSReverbLevel([v5 reverbLevel]);
    *buf = 136315906;
    v25 = "[CSShieldManager _updateSessionState:]";
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v7;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Session State updated to %@.\nActive mic remote display identifier %@\nReverb:%@", buf, 0x2Au);
  }

  v9 = [v5 activeMicRemoteDisplayID];
  if (v9 && ![(CSShieldManager *)self isMicLocal])
  {
    v16 = [(CSShieldManager *)self isInSession];

    if (v16)
    {
      v17 = ContinuitySingLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v5 activeMicRemoteDisplayID];
        *buf = 136315394;
        v25 = "[CSShieldManager _updateSessionState:]";
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_2441FB000, v17, OS_LOG_TYPE_DEFAULT, "%s: Device %@ took the mic, exiting session", buf, 0x16u);
      }

      [(CSShieldManager *)self exitRapportSession];
    }
  }

  else
  {
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(CSShieldManager *)self observersCopy];
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      v14 = 0;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          [v15 shieldManager:self didUpdateSessionState:v5];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v12);
  }
}

- (BOOL)isMicLocal
{
  requestClient = self->_requestClient;
  v3 = [(CSShieldManager *)self sessionState];
  v4 = [v3 activeMicRemoteDisplayID];
  LOBYTE(requestClient) = [(CSRemoteRequestClient *)requestClient remoteDisplayIdentifierIsLocal:v4];

  return requestClient;
}

- (BOOL)isMicStreaming
{
  v2 = [MEMORY[0x277CF6C50] sharedInstance];
  v3 = [v2 activeConfiguration];
  v4 = [v3 compositeState];

  return (v4 & 0x3B) == 2;
}

- (void)exitRapportSession
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CSShieldManager exitRapportSession]";
    v6 = 2080;
    v7 = "[CSShieldManager exitRapportSession]";
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %s", &v4, 0x16u);
  }

  [(RPRemoteDisplayDiscovery *)self->_remoteDisplayDiscovery exitDiscoverySessionWithReason:*MEMORY[0x277D44308]];
}

- (void)exitSingSession
{
  [(CSShieldManager *)self exitRapportSession];
  requestClient = self->_requestClient;

  [(CSRemoteRequestClient *)requestClient sendDisconnectMessageWithCompletion:&__block_literal_global_28];
}

void __34__CSShieldManager_exitSingSession__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "[CSShieldManager exitSingSession]_block_invoke";
    v6 = 2112;
    v7 = v2;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: disconnect message sent with error: %@", &v4, 0x16u);
  }
}

- (void)requestMicrophoneActivationWithCompletion:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CD5D40];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke;
  v6[3] = &unk_278E0B530;
  v7 = v3;
  v5 = v3;
  [v4 getActiveRouteWithCompletion:v6];
}

void __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 endpointObject];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke_2;
    v8[3] = &unk_278E0B508;
    v9 = *(a1 + 32);
    [v4 requestMicrophoneConnection:MEMORY[0x277D85CD0] completion:v8];
  }

  else
  {
    v5 = +[CSShieldConnectionManager sharedManager];
    [v5 reportErrorWithCode:-115 subsystem:1 description:@"No active MediaRemote route found" exitSession:0];

    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke_cold_1(v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }
}

void __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v10 = 136315650;
    v11 = "[CSShieldManager requestMicrophoneActivationWithCompletion:]_block_invoke_2";
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: requested mic with result %@, error: %@", &v10, 0x20u);
  }

  if (v5)
  {
    v8 = +[CSShieldConnectionManager sharedManager];
    [v8 reportErrorWithCode:-113 subsystem:1 description:@"MediaRemote microphone connection failed" error:v5 exitSession:0];
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, a2 == 2);
  }
}

+ (void)configureTips
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v8 - v4;
  v6 = sub_244257BD8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_244235AD8(0, 0, v5, &unk_24425CAD8, v7);
}

void __61__CSShieldManager__requestInitialSessionStateWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = 136315650;
  v5 = "[CSShieldManager _requestInitialSessionStateWithCompletion:]_block_invoke_2";
  v6 = 2112;
  v7 = v2;
  v8 = 2112;
  v9 = v3;
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: %@ initial failed to retrieve session state with error %@", &v4, 0x20u);
}

void __61__CSShieldManager_requestMicrophoneActivationWithCompletion___block_invoke_cold_1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSShieldManager requestMicrophoneActivationWithCompletion:]_block_invoke";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: failed to get endpoint route; cannot request mic", &v1, 0xCu);
}

@end