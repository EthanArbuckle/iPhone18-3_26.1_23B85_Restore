@interface CSShieldConnectionManager
+ (BOOL)isMusicApplicationInstalled;
+ (id)appendSingSessionTypeToMusicURL:(id)a3;
+ (id)sharedManager;
- (CSShieldConnectionManager)init;
- (MRGroupSessionToken)token;
- (NSURL)singURL;
- (id)musicTokenURL;
- (id)observersCopy;
- (void)_attemptReconnect;
- (void)_bootstrapFromSingQRCodeURL:(id)a3;
- (void)_bootstrapSingConfiguration:(id)a3;
- (void)_bootstrapSingWithDeviceIdentifier:(id)a3 url:(id)a4;
- (void)_bootstrapSingWithMediaRouteIdentifier:(id)a3 remoteDisplayIdentifier:(id)a4;
- (void)_checkGroupSessionEligibility:(id)a3;
- (void)_handlePresentShieldError:(id)a3;
- (void)_handleServerConnectionError:(id)a3;
- (void)_requestGroupSessionURL:(id)a3;
- (void)_teardownShieldWithError:(id)a3;
- (void)addObserver:(id)a3;
- (void)bootstrapFromRemoteDisplayConnection:(id)a3;
- (void)bootstrapFromSingQRCodeURL:(id)a3;
- (void)calculateErrorWithCompletion:(id)a3;
- (void)dealloc;
- (void)refreshPrivacyAcknowledgement;
- (void)removeObserver:(id)a3;
- (void)requestGroupSessionURL:(id)a3;
- (void)sceneDidBecomeActive;
- (void)setPresentationErrorDetails:(id)a3;
- (void)setSingURL:(id)a3;
- (void)setToken:(id)a3;
@end

@implementation CSShieldConnectionManager

+ (BOOL)isMusicApplicationInstalled
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = [v2 applicationIsInstalled:@"com.apple.Music"];

  return v3;
}

+ (id)appendSingSessionTypeToMusicURL:(id)a3
{
  v20 = a3;
  v3 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v20 resolvingAgainstBaseURL:0];
  v4 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"st" value:@"1"];
  v5 = MEMORY[0x277CBEB18];
  v6 = [v3 queryItems];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19 = v3;
  v8 = [v3 queryItems];
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v4 name];
        v16 = [v14 isEqual:v15];

        if ((v16 & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v10);
  }

  [v7 addObject:v4];
  [v19 setQueryItems:v7];
  v17 = [v19 URL];

  return v17;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_1 != -1)
  {
    +[CSShieldConnectionManager sharedManager];
  }

  v3 = sharedManager___sharedManager_0;

  return v3;
}

uint64_t __42__CSShieldConnectionManager_sharedManager__block_invoke()
{
  sharedManager___sharedManager_0 = objc_alloc_init(CSShieldConnectionManager);

  return MEMORY[0x2821F96F8]();
}

- (CSShieldConnectionManager)init
{
  v13.receiver = self;
  v13.super_class = CSShieldConnectionManager;
  v2 = [(CSShieldConnectionManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    if (FigContinuityCaptureGetUserPreferenceDisabled())
    {
      [(CSShieldConnectionManager *)v2 reportErrorWithCode:-117 subsystem:0 description:@"Continuity Camera is disabled" exitSession:1];
    }

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:v2 selector:sel__handlePresentShieldError_ name:*MEMORY[0x277CF6C28] object:0];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:v2 selector:sel__handleServerConnectionError_ name:@"CSRemoteRequestClientErrorNotification" object:0];

    v7 = objc_alloc_init(CSPairingMessagingClient);
    pairingClient = v2->_pairingClient;
    v2->_pairingClient = v7;

    v9 = objc_alloc_init(MEMORY[0x277D27998]);
    groupSessionEligibilityMonitor = v2->_groupSessionEligibilityMonitor;
    v2->_groupSessionEligibilityMonitor = v9;

    [(MRGroupSessionEligibilityMonitor *)v2->_groupSessionEligibilityMonitor addObserver:v2];
    v11 = [(MRGroupSessionEligibilityMonitor *)v2->_groupSessionEligibilityMonitor status];
    [(CSShieldConnectionManager *)v2 _checkGroupSessionEligibility:v11];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(MRGroupSessionEligibilityMonitor *)self->_groupSessionEligibilityMonitor removeObserver:self];
  v4.receiver = self;
  v4.super_class = CSShieldConnectionManager;
  [(CSShieldConnectionManager *)&v4 dealloc];
}

- (id)observersCopy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSHashTable *)v2->_observers copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)setPresentationErrorDetails:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (v6->_presentationErrorDetails == v5)
  {
    objc_sync_exit(v6);
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = _CSErrorCodeDescription([(CSErrorDetails *)v5 errorCode]);
      v9 = _CSErrorCodeDescription([(CSErrorDetails *)v5 errorCode]);
      *buf = 136316162;
      v22 = "[CSShieldConnectionManager setPresentationErrorDetails:]";
      v23 = 2112;
      v24 = v6;
      v25 = 2080;
      v26 = "[CSShieldConnectionManager setPresentationErrorDetails:]";
      v27 = 2112;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: %@ %s from: %@ to: %@", buf, 0x34u);
    }

    objc_storeStrong(&v6->_presentationErrorDetails, a3);
    objc_sync_exit(v6);

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v6->_observers;
    v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 connectionManager:v6 didUpdatePresentationError:v5];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v12);
    }
  }
}

- (NSURL)singURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_singURL;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSingURL:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  singURL = obj->_singURL;
  obj->_singURL = v4;

  objc_sync_exit(obj);
}

- (MRGroupSessionToken)token
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_token;
  objc_sync_exit(v2);

  return v3;
}

- (void)setToken:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  token = obj->_token;
  obj->_token = v4;

  objc_sync_exit(obj);
}

- (id)musicTokenURL
{
  v2 = [(CSShieldConnectionManager *)self token];
  v3 = [v2 joinURLString];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = [v2 joinURLString];
    v6 = [v4 URLWithString:v5];

    if (v6)
    {
      v7 = [objc_opt_class() appendSingSessionTypeToMusicURL:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
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

- (void)calculateErrorWithCompletion:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSShieldConnectionManager *)self presentationErrorDetails];
    v7 = _CSErrorCodeDescription([v6 errorCode]);
    *buf = 136315906;
    v18 = "[CSShieldConnectionManager calculateErrorWithCompletion:]";
    v19 = 2112;
    v20 = self;
    v21 = 2080;
    v22 = "[CSShieldConnectionManager calculateErrorWithCompletion:]";
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ %s currentError: %@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __58__CSShieldConnectionManager_calculateErrorWithCompletion___block_invoke;
  v14 = &unk_278E0B640;
  objc_copyWeak(&v16, buf);
  v8 = v4;
  v15 = v8;
  v9 = _Block_copy(&v11);
  if ([objc_opt_class() isMusicApplicationInstalled])
  {
    v10 = [(CSShieldConnectionManager *)self presentationErrorDetails];
  }

  else
  {
    v10 = [[CSErrorDetails alloc] initWithCode:-103 subsystem:8 description:@"Music app is not installed" exitSession:1];
  }

  v9[2](v9, v10);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

void __58__CSShieldConnectionManager_calculateErrorWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setPresentationErrorDetails:v6];
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)sceneDidBecomeActive
{
  v3 = ContinuitySingLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSShieldConnectionManager sceneDidBecomeActive]";
    v8 = 2112;
    v9 = self;
    _os_log_impl(&dword_2441FB000, v3, OS_LOG_TYPE_DEFAULT, "%s: %@ sceneDidBecomeActive", buf, 0x16u);
  }

  if (self->_firstSceneDidBecomeActive)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__CSShieldConnectionManager_sceneDidBecomeActive__block_invoke;
    v5[3] = &unk_278E0B668;
    v5[4] = self;
    [(CSShieldConnectionManager *)self calculateErrorWithCompletion:v5];
  }

  else
  {
    self->_firstSceneDidBecomeActive = 1;
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[CSShieldConnectionManager sceneDidBecomeActive]";
      v8 = 2112;
      v9 = self;
      _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: %@ Ignoring first notification that scene did become active", buf, 0x16u);
    }
  }
}

uint64_t __49__CSShieldConnectionManager_sceneDidBecomeActive__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _attemptReconnect];
  }

  return result;
}

- (void)refreshPrivacyAcknowledgement
{
  v2 = [MEMORY[0x277CF6C58] sharedInstance];
  [v2 refreshPrivacyAcknowledgement];
}

- (void)bootstrapFromRemoteDisplayConnection:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[CSShieldConnectionManager bootstrapFromRemoteDisplayConnection:]";
    v8 = 2112;
    v9 = self;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ Prox: %@", &v6, 0x20u);
  }

  [(CSShieldConnectionManager *)self _bootstrapSingWithDeviceIdentifier:v4 url:0];
}

- (void)bootstrapFromSingQRCodeURL:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "[CSShieldConnectionManager bootstrapFromSingQRCodeURL:]";
    v11 = 2112;
    v12 = self;
    v13 = 2080;
    v14 = "[CSShieldConnectionManager bootstrapFromSingQRCodeURL:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", buf, 0x2Au);
  }

  [(CSShieldConnectionManager *)self setSingURL:v4];
  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __56__CSShieldConnectionManager_bootstrapFromSingQRCodeURL___block_invoke;
    v7[3] = &unk_278E0B690;
    v7[4] = self;
    v8 = v4;
    [(CSShieldConnectionManager *)self calculateErrorWithCompletion:v7];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuitySingShieldUIErrorDomain" code:-101 userInfo:0];
    [(CSShieldConnectionManager *)self _teardownShieldWithError:v6];
  }
}

uint64_t __56__CSShieldConnectionManager_bootstrapFromSingQRCodeURL___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _bootstrapFromSingQRCodeURL:*(result + 40)];
  }

  return result;
}

- (void)_bootstrapFromSingQRCodeURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACE0] componentsWithURL:v4 resolvingAgainstBaseURL:0];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = [v5 queryItems];
  v7 = [v6 countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v7)
  {
    val = self;
    obj = v6;
    v24 = v5;
    v25 = v4;
    v8 = 0;
    v9 = 0;
    v10 = *v42;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqualToString:@"h"];

        if (v14)
        {
          v15 = [v12 value];

          v9 = v15;
        }

        v16 = [v12 name];
        v17 = [v16 isEqualToString:@"pw"];

        if (v17)
        {
          v18 = [v12 value];

          v8 = v18;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v7);

    if (v9)
    {
      objc_initWeak(&location, val);
      v19 = ContinuitySingLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v34 = "[CSShieldConnectionManager _bootstrapFromSingQRCodeURL:]";
        v35 = 2112;
        v36 = val;
        v37 = 2112;
        v38 = v9;
        _os_log_impl(&dword_2441FB000, v19, OS_LOG_TYPE_DEFAULT, "%s: %@ bootstrapping sing shield for media route identifier %@", buf, 0x20u);
      }

      pairingClient = val->_pairingClient;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke;
      v28[3] = &unk_278E0B6E0;
      objc_copyWeak(&v32, &location);
      v21 = v9;
      v29 = v21;
      v7 = v8;
      v30 = v7;
      v4 = v25;
      v31 = v25;
      [(CSPairingMessagingClient *)pairingClient activateWithCompletion:v28];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
      v5 = v24;
      goto LABEL_21;
    }

    v5 = v24;
    v4 = v25;
    v7 = v8;
    self = val;
  }

  else
  {
  }

  v22 = ContinuitySingLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [CSShieldConnectionManager _bootstrapFromSingQRCodeURL:];
  }

  v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuitySingShieldUIErrorDomain" code:-101 userInfo:0];
  [(CSShieldConnectionManager *)self _teardownShieldWithError:v23];

  v21 = 0;
LABEL_21:
}

void __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke_cold_1(v5, a1);
    }

    v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ContinuitySingShieldUIErrorDomain" code:-100 userInfo:0];
    [v5 _teardownShieldWithError:v10];
  }

  else
  {
    v6 = *(WeakRetained + 1);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke_38;
    v11[3] = &unk_278E0B6B8;
    objc_copyWeak(&v15, (a1 + 56));
    v12 = *(a1 + 48);
    v13 = *(a1 + 32);
    v14 = v5;
    [v6 pairWithMediaRouteIdentifierIfNeeded:v7 password:v8 completion:v11];

    objc_destroyWeak(&v15);
  }
}

void __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke_38(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (v5 && !v6 && WeakRetained && ([v5 remoteDisplayIdentifier], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = ContinuitySingLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315650;
      v19 = "[CSShieldConnectionManager _bootstrapFromSingQRCodeURL:]_block_invoke";
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ found device to use to bootstrap sing shield %@", &v18, 0x20u);
    }

    if (_os_feature_enabled_impl())
    {
      v11 = *(a1 + 40);
      v12 = [v5 remoteDisplayIdentifier];
      [v8 _bootstrapSingWithMediaRouteIdentifier:v11 remoteDisplayIdentifier:v12];
    }

    else
    {
      v14 = [v5 remoteDisplayIdentifier];
      [v8 requestGroupSessionURL:v14];
    }
  }

  else
  {
    v13 = ContinuitySingLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_loadWeakRetained((a1 + 56));
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = 136316162;
      v19 = "[CSShieldConnectionManager _bootstrapFromSingQRCodeURL:]_block_invoke";
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v17;
      v26 = 2112;
      v27 = v6;
      _os_log_error_impl(&dword_2441FB000, v13, OS_LOG_TYPE_ERROR, "%s: %@ failed to bootstrap sing shield for %@; could not find or pair with %@. Error: %@", &v18, 0x34u);
    }

    [*(a1 + 48) reportErrorWithCode:-102 subsystem:2 description:@"could not find or pair with device" error:v6 exitSession:0];
  }
}

- (void)requestGroupSessionURL:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v10 = "[CSShieldConnectionManager requestGroupSessionURL:]";
    v11 = 2112;
    v12 = self;
    v13 = 2080;
    v14 = "[CSShieldConnectionManager requestGroupSessionURL:]";
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@ %s %@", buf, 0x2Au);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CSShieldConnectionManager_requestGroupSessionURL___block_invoke;
  v7[3] = &unk_278E0B690;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(CSShieldConnectionManager *)self calculateErrorWithCompletion:v7];
}

uint64_t __52__CSShieldConnectionManager_requestGroupSessionURL___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _requestGroupSessionURL:*(result + 40)];
  }

  return result;
}

- (void)_requestGroupSessionURL:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(CSShieldConnectionManager *)self token];
    v6 = v5;
    if (v5 && (v7 = MEMORY[0x277CBEBC0], [v5 joinContinuitySingURLString], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "URLWithString:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, v9))
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v16 = "[CSShieldConnectionManager _requestGroupSessionURL:]";
        v17 = 2112;
        v18 = self;
        v19 = 2080;
        v20 = "[CSShieldConnectionManager _requestGroupSessionURL:]";
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_2441FB000, v10, OS_LOG_TYPE_DEFAULT, "%s: %@ %s We already have a group session token using it %@", buf, 0x2Au);
      }

      [(CSShieldConnectionManager *)self _bootstrapSingWithDeviceIdentifier:v4 url:v9];
    }

    else
    {
      objc_initWeak(buf, self);
      pairingClient = self->_pairingClient;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke;
      v12[3] = &unk_278E0AFB0;
      objc_copyWeak(&v14, buf);
      v13 = v4;
      [(CSPairingMessagingClient *)pairingClient activateWithCompletion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [(CSShieldConnectionManager *)self reportErrorWithCode:-104 subsystem:5 description:@"No rapport identifier found to request group session token" error:0 exitSession:0];
  }
}

void __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = ContinuitySingLog();
  v6 = v5;
  if (v3 || !WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke_cold_1((a1 + 40), v6);
    }

    [WeakRetained reportErrorWithCode:-104 subsystem:5 description:@"Failed to activate pairing client" error:v3 exitSession:0];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 136315650;
      v14 = "[CSShieldConnectionManager _requestGroupSessionURL:]_block_invoke";
      v15 = 2112;
      v16 = WeakRetained;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@ activation complete requesting token from %@", buf, 0x20u);
    }

    v8 = WeakRetained[1];
    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke_52;
    v10[3] = &unk_278E0B708;
    objc_copyWeak(&v12, (a1 + 40));
    v11 = *(a1 + 32);
    [v8 requestGroupSessionTokenFromIdentifer:v9 completion:v10];

    objc_destroyWeak(&v12);
  }
}

void __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315906;
      v13 = "[CSShieldConnectionManager _requestGroupSessionURL:]_block_invoke";
      v14 = 2112;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ received group session url: %@ error: %@", &v12, 0x2Au);
    }

    if (!v5 || v6)
    {
      [WeakRetained reportErrorWithCode:-104 subsystem:5 description:@"Failed to request group session token" error:v6 exitSession:0];
    }

    else
    {
      v9 = [MEMORY[0x277D279A0] tokenForJoinURLString:v5];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v5];
      v11 = v10;
      if (v9 && v10)
      {
        [WeakRetained setToken:v9];
        [WeakRetained _bootstrapSingWithDeviceIdentifier:*(a1 + 32) url:v11];
      }

      else
      {
        [WeakRetained reportErrorWithCode:-104 subsystem:5 description:@"Invalid group session token or URL" error:0 exitSession:0];
      }
    }
  }
}

- (void)_bootstrapSingConfiguration:(id)a3
{
  v3 = MEMORY[0x277CF6C50];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v9 = [v5 activeConfiguration];

  if (v9)
  {
    v6 = v9;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CF6C48]);
  }

  v7 = v6;
  [v6 setClientDeviceModel:2];
  [v7 setMicOnly:1];
  [v7 setRemoteDisplayIdentifier:v4];

  v8 = [MEMORY[0x277CF6C50] sharedInstance];
  [v8 setUIConfiguration:v7];
}

- (void)_bootstrapSingWithDeviceIdentifier:(id)a3 url:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[CSShieldConnectionManager _bootstrapSingWithDeviceIdentifier:url:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ %@ %@", &v10, 0x2Au);
  }

  [(CSShieldConnectionManager *)self _bootstrapSingConfiguration:v6];
  v9 = [MEMORY[0x277CF6C58] sharedInstance];
  [v9 setupSingSessionFromURL:v7 remoteDisplayIdentifier:v6];
}

- (void)_bootstrapSingWithMediaRouteIdentifier:(id)a3 remoteDisplayIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315906;
    v11 = "[CSShieldConnectionManager _bootstrapSingWithMediaRouteIdentifier:remoteDisplayIdentifier:]";
    v12 = 2112;
    v13 = self;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: %@ %@ %@", &v10, 0x2Au);
  }

  [(CSShieldConnectionManager *)self _bootstrapSingConfiguration:v7];
  v9 = [MEMORY[0x277CF6C58] sharedInstance];
  [v9 setupSingSessionWithMediaRouteIdentifier:v6 remoteDisplayIdentifier:v7];
}

- (void)_teardownShieldWithError:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CSShieldConnectionManager _teardownShieldWithError:];
  }

  pairingClient = self->_pairingClient;
  self->_pairingClient = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(CSShieldConnectionManager *)self observersCopy];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 connectionManager:self didRequestTeardownShieldWithError:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

- (void)_attemptReconnect
{
  v3 = [MEMORY[0x277CF6C50] sharedInstance];
  v4 = [v3 activeConfiguration];
  v5 = [v4 remoteDisplayIdentifier];

  v6 = +[CSShieldConnectionManager sharedManager];
  v7 = [v6 singURL];

  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315906;
    v13 = "[CSShieldConnectionManager _attemptReconnect]";
    v14 = 2048;
    v15 = self;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: <%p> Attempt reconnect with remoteDisplayIdentifier: %@ URL: %@", &v12, 0x2Au);
  }

  v9 = +[CSShieldManager sharedManager];
  v10 = [v9 isLoading];

  if ((v10 & 1) == 0)
  {
    v11 = ContinuitySingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[CSShieldConnectionManager _attemptReconnect]";
      v14 = 2048;
      v15 = self;
      _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: <%p> Skip reconnect we are already loaded", &v12, 0x16u);
    }

    goto LABEL_10;
  }

  if (v5)
  {
    v11 = +[CSShieldConnectionManager sharedManager];
    [v11 bootstrapFromRemoteDisplayConnection:v5];
LABEL_10:

    goto LABEL_11;
  }

  if (v7)
  {
    v11 = +[CSShieldConnectionManager sharedManager];
    [v11 bootstrapFromSingQRCodeURL:v7];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_handlePresentShieldError:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CSShieldConnectionManager _handlePresentShieldError:];
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF6C38]];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [v7 intValue];
  if (v8 <= 1)
  {
    if (!v8)
    {
      v9 = @"Unknown error";
      v10 = self;
      v11 = -100;
      v12 = 0;
      goto LABEL_17;
    }

    if (v8 != 1)
    {
      goto LABEL_19;
    }

    v9 = @"Connection failure";
    v10 = self;
    v11 = -111;
    v12 = 2;
LABEL_13:
    v13 = 1;
LABEL_18:
    [(CSShieldConnectionManager *)v10 reportErrorWithCode:v11 subsystem:v12 description:v9 error:0 exitSession:v13];
    goto LABEL_19;
  }

  switch(v8)
  {
    case 4:
      v9 = @"Endpoint disconnect";
      v10 = self;
      v11 = -109;
      v12 = 1;
      goto LABEL_13;
    case 3:
      v9 = @"Music profile update needed";
      v10 = self;
      v11 = -110;
      goto LABEL_15;
    case 2:
      v9 = @"Invalid Music account";
      v10 = self;
      v11 = -105;
LABEL_15:
      v12 = 8;
LABEL_17:
      v13 = 0;
      goto LABEL_18;
  }

LABEL_19:
}

- (void)_handleServerConnectionError:(id)a3
{
  v4 = a3;
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CSShieldConnectionManager _handleServerConnectionError:];
  }

  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"CSRemoteRequestClientErrorCode"];

  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8 == 9)
    {
      v9 = @"tvOS version too old for handshake";
      v10 = self;
      v11 = -108;
    }

    else if (v8 == 8)
    {
      v9 = @"iOS version too old for handshake";
      v10 = self;
      v11 = -107;
    }

    else
    {
      v9 = @"Generic handshake failure";
      v10 = self;
      v11 = -106;
    }

    [(CSShieldConnectionManager *)v10 reportErrorWithCode:v11 subsystem:0 description:v9 error:0 exitSession:1];
  }
}

- (void)_checkGroupSessionEligibility:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isManateeEnabled])
    {
      if ([v5 idsAccountIsValid])
      {
        goto LABEL_15;
      }
    }

    else
    {
      v7 = ContinuitySingLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CSShieldConnectionManager _checkGroupSessionEligibility:v7];
      }

      if ([v5 idsAccountIsValid])
      {
        goto LABEL_14;
      }
    }

    v8 = ContinuitySingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSShieldConnectionManager _checkGroupSessionEligibility:v8];
    }

LABEL_14:
    [(CSShieldConnectionManager *)self reportErrorWithCode:-112 subsystem:8 description:@"Account not eligible for ContinuitySing" error:0 exitSession:1];
    goto LABEL_15;
  }

  v6 = ContinuitySingLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[CSShieldConnectionManager _checkGroupSessionEligibility:]";
    _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: group session eligibility status not yet known", &v9, 0xCu);
  }

LABEL_15:
}

- (void)_bootstrapFromSingQRCodeURL:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __57__CSShieldConnectionManager__bootstrapFromSingQRCodeURL___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __53__CSShieldConnectionManager__requestGroupSessionURL___block_invoke_cold_1(id *a1, NSObject *a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  v4[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2441FB000, a2, OS_LOG_TYPE_ERROR, "%s: %@ failed to requestGroupSessionURL; could not activate pairing client", v4, 0x16u);
}

- (void)_teardownShieldWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)_handlePresentShieldError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)_handleServerConnectionError:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)_checkGroupSessionEligibility:(os_log_t)log .cold.1(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSShieldConnectionManager _checkGroupSessionEligibility:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: account not eligible for sing: manatee unavailable", &v1, 0xCu);
}

- (void)_checkGroupSessionEligibility:(os_log_t)log .cold.2(os_log_t log)
{
  v1 = 136315138;
  v2 = "[CSShieldConnectionManager _checkGroupSessionEligibility:]";
  _os_log_error_impl(&dword_2441FB000, log, OS_LOG_TYPE_ERROR, "%s: account not eligible for sing: invalid IDS account", &v1, 0xCu);
}

@end