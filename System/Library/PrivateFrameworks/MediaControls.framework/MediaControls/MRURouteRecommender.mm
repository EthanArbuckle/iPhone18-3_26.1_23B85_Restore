@interface MRURouteRecommender
+ (id)sharedInstance;
- (MRURouteRecommender)init;
- (NSArray)donatedRoutes;
- (NSArray)recommendedRoutes;
- (id)defaultsContext;
- (id)irCandidateFor:(id)for;
- (id)recommendationForGroupedOutputDevices:(id)devices;
- (id)sortEndpointRoutes:(id)routes;
- (void)addDonatedRoute:(id)route;
- (void)donateGroupedOutputDevices:(id)devices;
- (void)donatePickerChoiceFor:(id)for bundleID:(id)d isEligibleApp:(BOOL)app reason:(id)reason;
- (void)initializeSession;
- (void)initializeSessionWhenAppropriate;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateContext:(id)context;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
- (void)setDonatedRoutes:(id)routes;
- (void)setMode:(int64_t)mode;
- (void)setRecommendedRoutes:(id)routes;
- (void)updateRecommendations;
@end

@implementation MRURouteRecommender

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MRURouteRecommender sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __37__MRURouteRecommender_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (MRURouteRecommender)init
{
  v10.receiver = self;
  v10.super_class = MRURouteRecommender;
  v2 = [(MRURouteRecommender *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MRURouteRecommender.IRDonations", v3);
    donationQueue = v2->_donationQueue;
    v2->_donationQueue = v4;

    *&v2->_recommendedRoutesLock._os_unfair_lock_opaque = 0;
    donatedRoutes = v2->_donatedRoutes;
    v2->_donatedRoutes = MEMORY[0x1E695E0F0];

    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mediaremote"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v7;

    [(NSUserDefaults *)v2->_userDefaults addObserver:v2 forKeyPath:@"IRContextUpdate" options:0 context:0];
    [(MRURouteRecommender *)v2 initializeSessionWhenAppropriate];
  }

  return v2;
}

- (id)irCandidateFor:(id)for
{
  v3 = MEMORY[0x1E69AA828];
  forCopy = for;
  v5 = [v3 alloc];
  routeIdentifier = [forCopy routeIdentifier];
  v7 = [v5 initWithCandidateIdentifier:routeIdentifier];

  v8 = MEMORY[0x1E695DFD8];
  nodes = [forCopy nodes];

  v10 = [nodes msv_map:&__block_literal_global_152];
  v11 = [v8 setWithArray:v10];
  [v7 updateNodes:v11];

  return v7;
}

id __38__MRURouteRecommender_irCandidateFor___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69AA840];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [v3 avOutputDeviceIdentifier];
  [v4 setAvOutpuDeviceIdentifier:v5];

  v6 = [v3 rapportIdentifier];
  [v4 setRapportIdentifier:v6];

  v7 = [v3 idsIdentifier];
  [v4 setIdsIdentifier:v7];

  v8 = [v3 isLocal];
  [v4 setIsLocal:v8];

  return v4;
}

- (NSArray)recommendedRoutes
{
  os_unfair_lock_lock(&self->_recommendedRoutesLock);
  v3 = self->_recommendedRoutes;
  os_unfair_lock_unlock(&self->_recommendedRoutesLock);

  return v3;
}

- (void)setRecommendedRoutes:(id)routes
{
  routesCopy = routes;
  os_unfair_lock_lock(&self->_recommendedRoutesLock);
  recommendedRoutes = self->_recommendedRoutes;
  self->_recommendedRoutes = routesCopy;

  os_unfair_lock_unlock(&self->_recommendedRoutesLock);
}

- (void)updateRecommendations
{
  donationQueue = [(MRURouteRecommender *)self donationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__MRURouteRecommender_updateRecommendations__block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(donationQueue, block);
}

void __44__MRURouteRecommender_updateRecommendations__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) session];
  [v1 requestCurrentContext];
}

- (NSArray)donatedRoutes
{
  os_unfair_lock_lock(&self->_donatedRoutesLock);
  v3 = self->_donatedRoutes;
  os_unfair_lock_unlock(&self->_donatedRoutesLock);

  return v3;
}

- (void)setDonatedRoutes:(id)routes
{
  routesCopy = routes;
  os_unfair_lock_lock(&self->_donatedRoutesLock);
  donatedRoutes = self->_donatedRoutes;
  self->_donatedRoutes = routesCopy;

  os_unfair_lock_unlock(&self->_donatedRoutesLock);
}

- (void)addDonatedRoute:(id)route
{
  routeCopy = route;
  os_unfair_lock_lock(&self->_donatedRoutesLock);
  v4 = self->_donatedRoutes;
  if (![(NSArray *)v4 containsObject:routeCopy])
  {
    v5 = [(NSArray *)self->_donatedRoutes arrayByAddingObject:routeCopy];

    objc_storeStrong(&self->_donatedRoutes, v5);
    v4 = v5;
  }

  os_unfair_lock_unlock(&self->_donatedRoutesLock);
}

- (id)recommendationForGroupedOutputDevices:(id)devices
{
  v4 = [MEMORY[0x1E69B0A50] routeWithOutputDevices:devices];
  if (v4)
  {
    recommendedRoutes = [(MRURouteRecommender *)self recommendedRoutes];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__MRURouteRecommender_recommendationForGroupedOutputDevices___block_invoke;
    v17[3] = &unk_1E7664B70;
    v6 = v4;
    v18 = v6;
    v7 = [recommendedRoutes msv_firstWhere:v17];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      donatedRoutes = [(MRURouteRecommender *)self donatedRoutes];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __61__MRURouteRecommender_recommendationForGroupedOutputDevices___block_invoke_2;
      v15 = &unk_1E7664B98;
      v16 = v6;
      v10 = [donatedRoutes msv_firstWhere:&v12];

      if (v10)
      {
        v8 = objc_alloc_init(MRURecommendation);
        [(MRURecommendation *)v8 setRoute:v10, v12, v13, v14, v15];
        [(MRURecommendation *)v8 setClassification:0];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __61__MRURouteRecommender_recommendationForGroupedOutputDevices___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 route];
  v4 = [v3 routeIdentifier];
  v5 = [*(a1 + 32) routeIdentifier];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

uint64_t __61__MRURouteRecommender_recommendationForGroupedOutputDevices___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 routeIdentifier];
  v4 = [*(a1 + 32) routeIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)donateGroupedOutputDevices:(id)devices
{
  v15 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  session = [(MRURouteRecommender *)self session];

  if (session)
  {
    v6 = [MEMORY[0x1E69B0A50] routeWithOutputDevices:devicesCopy];
    v7 = v6;
    if (v6)
    {
      if ([v6 donateAsCandidate])
      {
        donationQueue = [(MRURouteRecommender *)self donationQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __50__MRURouteRecommender_donateGroupedOutputDevices___block_invoke;
        v10[3] = &unk_1E76639D0;
        v11 = v7;
        selfCopy = self;
        dispatch_async(donationQueue, v10);

        v9 = v11;
      }

      else
      {
        v9 = _MRLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v14 = v7;
          _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR NOT donating %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MRURouteRecommender donateGroupedOutputDevices:];
    }
  }
}

uint64_t __50__MRURouteRecommender_donateGroupedOutputDevices___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR updateRouteCandidate: %@", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) session];
  v5 = [*(a1 + 40) irCandidateFor:*(a1 + 32)];
  [v4 updateCandidate:v5];

  return [*(a1 + 40) addDonatedRoute:*(a1 + 32)];
}

- (void)initializeSessionWhenAppropriate
{
  v15 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  donationQueue = [(MRURouteRecommender *)self donationQueue];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __55__MRURouteRecommender_initializeSessionWhenAppropriate__block_invoke;
  handler[3] = &unk_1E76649F0;
  objc_copyWeak(&v11, &location);
  v4 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &self->_firstUnlockToken, donationQueue, handler);

  if (v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Failed to register for first unlock notification (status = %d)", buf, 8u);
    }
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    donationQueue2 = [(MRURouteRecommender *)self donationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MRURouteRecommender_initializeSessionWhenAppropriate__block_invoke_158;
    block[3] = &unk_1E7663AE8;
    objc_copyWeak(&v9, &location);
    dispatch_async(donationQueue2, block);

    objc_destroyWeak(&v9);
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Device not yet unlocked since boot", buf, 2u);
    }
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __55__MRURouteRecommender_initializeSessionWhenAppropriate__block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Received first unlock notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initializeSession];
}

void __55__MRURouteRecommender_initializeSessionWhenAppropriate__block_invoke_158(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initializeSession];
}

- (void)initializeSession
{
  v21 = *MEMORY[0x1E69E9840];
  currentSettings = [MEMORY[0x1E69B0B28] currentSettings];
  supportRouteRecommendations = [currentSettings supportRouteRecommendations];

  if (supportRouteRecommendations)
  {
    v5 = [MEMORY[0x1E69B1418] hasEntitlement:@"com.apple.intelligentroutingd.xpc.media" inGroup:@"com.apple.security.exception.mach-lookup.global-name"];
    v6 = [MEMORY[0x1E69B1418] hasBoolEntitlement:@"com.apple.intelligentrouting.recommendationservice"];
    v7 = v6;
    if (v5 && (v6 & 1) != 0)
    {
      serviceToken = [(MRURouteRecommender *)self serviceToken];

      v9 = _MRLogForCategory();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (serviceToken)
      {
        if (v10)
        {
          serviceToken2 = [(MRURouteRecommender *)self serviceToken];
          v17 = 138412290;
          v18 = serviceToken2;
          _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Using persisted token %@", &v17, 0xCu);
        }

        v12 = objc_alloc_init(MEMORY[0x1E69AA850]);
        [(MRURouteRecommender *)self setSession:v12];

        session = [(MRURouteRecommender *)self session];
        [session setDelegate:self];

        [(MRURouteRecommender *)self setMode:0];
      }

      else
      {
        if (v10)
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR No persisted token :(", &v17, 2u);
        }
      }

      if (notify_is_valid_token(self->_firstUnlockToken))
      {
        notify_cancel(self->_firstUnlockToken);
      }
    }

    else
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        if (v5)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        if (v7)
        {
          v15 = @"YES";
        }

        v17 = 138412546;
        v18 = v16;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_1A20FC000, v14, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR MRUClient hasLookupException: %@, hasIRBooleanEntitlement: %@ - won't try to create a session", &v17, 0x16u);
      }
    }
  }
}

- (void)setMode:(int64_t)mode
{
  v20 = *MEMORY[0x1E69E9840];
  self->_mode = mode;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    modeCopy = mode;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Mode set to %ld", &v14, 0xCu);
  }

  session = [(MRURouteRecommender *)self session];

  if (session)
  {
    v7 = objc_alloc(MEMORY[0x1E69AA830]);
    serviceToken = [(MRURouteRecommender *)self serviceToken];
    v9 = [v7 initWithServiceToken:serviceToken];

    [v9 setMode:mode];
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      session2 = [(MRURouteRecommender *)self session];
      session3 = [(MRURouteRecommender *)self session];
      v14 = 134218498;
      modeCopy = session2;
      v16 = 2112;
      v17 = session3;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_1A20FC000, v10, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Will call (%p)%@ runWithConfiguration: %@", &v14, 0x20u);
    }

    session4 = [(MRURouteRecommender *)self session];
    [session4 runWithConfiguration:v9];
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MRURouteRecommender setMode:];
    }
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  errorCopy = error;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = errorCopy;
    _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR session:didFailWithError: %@", &v16, 0xCu);
  }

  session = [(MRURouteRecommender *)self session];
  v10 = session;
  if (session == sessionCopy)
  {
    domain = [errorCopy domain];
    v12 = [domain isEqualToString:*MEMORY[0x1E69AA820]];

    if (v12)
    {
      if ([errorCopy code] == -12887)
      {
        v13 = _MRLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 134217984;
          v17 = sessionCopy;
          _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Client session %p invalidated, recreating", &v16, 0xCu);
        }

        [(MRURouteRecommender *)self initializeSession];
      }

      else if ([errorCopy code] == -12889)
      {
        v14 = _MRLogForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(MRURouteRecommender *)self session:sessionCopy didFailWithError:v14];
        }

        v15 = _MRLogForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          [(MRURouteRecommender *)self session:sessionCopy didFailWithError:v15];
        }

        [(MRURouteRecommender *)self setSession:0];
      }
    }
  }

  else
  {
  }
}

- (void)session:(id)session didUpdateContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = contextCopy;
    _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR session:didUpdateContext: %@", buf, 0xCu);
  }

  defaultsContext = [(MRURouteRecommender *)self defaultsContext];
  v8 = defaultsContext;
  if (defaultsContext)
  {
    v9 = defaultsContext;
  }

  else
  {
    v9 = [contextCopy objectForKeyedSubscript:*MEMORY[0x1E69AA818]];
  }

  v10 = v9;

  contextIdentifier = [v10 contextIdentifier];
  candidateResults = [v10 candidateResults];
  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = candidateResults;
    _os_log_impl(&dword_1A20FC000, v13, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR got %@", buf, 0xCu);
  }

  allObjects = [candidateResults allObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48__MRURouteRecommender_session_didUpdateContext___block_invoke;
  v18[3] = &unk_1E7664BC0;
  v19 = contextIdentifier;
  v15 = contextIdentifier;
  v16 = [allObjects msv_map:v18];
  [(MRURouteRecommender *)self setRecommendedRoutes:v16];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:MRURouteRecommenderDidUpdateRecommendationsNotification object:self];
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR session:suspendedWithReason: %ld", &v6, 0xCu);
  }
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  v12 = *MEMORY[0x1E69E9840];
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    endedCopy = ended;
    v10 = 1024;
    v11 = suspendedCopy;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR session:suspensionReasonEnded:isNoLongerSuspended: %ld %d", &v8, 0x12u);
  }
}

- (id)defaultsContext
{
  v15 = *MEMORY[0x1E69E9840];
  userDefaults = [(MRURouteRecommender *)self userDefaults];
  v3 = [userDefaults objectForKey:@"IRContextUpdate"];

  v4 = [MRIRRouteRecommendationContext fromObject:v3];
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v11 = 138412290;
    v12 = v4;
    v7 = "[MRDRRC].URR Overriding context with %@";
    v8 = v5;
    v9 = 12;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v11 = 138412546;
    v12 = 0;
    v13 = 2112;
    v14 = v3;
    v7 = "[MRDRRC].URR Not overriding with %@, %@";
    v8 = v5;
    v9 = 22;
  }

  _os_log_impl(&dword_1A20FC000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
LABEL_7:

  return v4;
}

- (id)sortEndpointRoutes:(id)routes
{
  v49 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  session = [(MRURouteRecommender *)self session];
  if (session && (v6 = session, v7 = [routesCopy count], v6, v7 > 1))
  {
    v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recommendedRoutes = [(MRURouteRecommender *)self recommendedRoutes];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v27 = routesCopy;
    obj = routesCopy;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v33 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v36 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          endpointObject = [v14 endpointObject];
          if (endpointObject)
          {
            v16 = [MEMORY[0x1E69B0A50] routeWithEndpoint:endpointObject];
            v34[0] = MEMORY[0x1E69E9820];
            v34[1] = 3221225472;
            v34[2] = __42__MRURouteRecommender_sortEndpointRoutes___block_invoke;
            v34[3] = &unk_1E7664B70;
            v17 = v16;
            v35 = v17;
            v18 = [recommendedRoutes msv_firstWhere:v34];
            classification = [v18 classification];
            if ((classification - 2) >= 3)
            {
              if (classification == 1)
              {
                v20 = v28;
                v21 = 1;
              }

              else
              {
                v21 = 0;
                v20 = v30;
              }
            }

            else
            {
              v20 = v29;
              v21 = 2;
            }

            v22 = v20;
            v23 = _MRLogForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v41 = v12;
              v42 = 2048;
              v43 = v21;
              v44 = 2112;
              v45 = v18;
              _os_log_impl(&dword_1A20FC000, v23, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR %@ got %lu - %@", buf, 0x20u);
            }

            [v22 addObject:v12];
          }

          else
          {
            [v30 addObject:v12];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
      }

      while (v10);
    }

    v24 = [v29 arrayByAddingObjectsFromArray:v30];
    v8 = [v24 arrayByAddingObjectsFromArray:v28];

    v25 = _MRLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v41 = v29;
      v42 = 2112;
      v43 = v30;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_1A20FC000, v25, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR promoted: %@ medium: %@, bottom: %@ = %@", buf, 0x2Au);
    }

    routesCopy = v27;
  }

  else
  {
    v8 = routesCopy;
  }

  return v8;
}

uint64_t __42__MRURouteRecommender_sortEndpointRoutes___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 routeIdentifier];
  v5 = [v3 route];

  v6 = [v5 routeIdentifier];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (void)donatePickerChoiceFor:(id)for bundleID:(id)d isEligibleApp:(BOOL)app reason:(id)reason
{
  appCopy = app;
  v34 = *MEMORY[0x1E69E9840];
  forCopy = for;
  dCopy = d;
  reasonCopy = reason;
  session = [(MRURouteRecommender *)self session];

  if (session)
  {
    v14 = [MEMORY[0x1E69B0A50] routeWithEndpoint:forCopy];
    lastDonatedPickerChoice = [(MRURouteRecommender *)self lastDonatedPickerChoice];
    v16 = [v14 isEqual:lastDonatedPickerChoice];

    if (v16)
    {
      v17 = _MRLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 138412290;
        v25 = v14;
        _os_log_impl(&dword_1A20FC000, v17, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR Not dropping duplicate picker choice for %@ - picks are distributed", &v24, 0xCu);
      }
    }

    [(MRURouteRecommender *)self setLastDonatedPickerChoice:v14];
    v18 = [objc_alloc(MEMORY[0x1E69AA838]) initWithEventType:0 eventSubType:0];
    v19 = v18;
    if (dCopy)
    {
      [v18 setBundleID:dCopy];
      [v19 setIsEligibleApp:appCopy];
    }

    v20 = [(MRURouteRecommender *)self irCandidateFor:v14];
    candidateIdentifier = [v20 candidateIdentifier];

    session2 = _MRLogForCategory();
    v23 = os_log_type_enabled(session2, OS_LOG_TYPE_DEFAULT);
    if (candidateIdentifier)
    {
      if (v23)
      {
        v24 = 138412802;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = reasonCopy;
        _os_log_impl(&dword_1A20FC000, session2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR EVENT: MRU is adding %@ for candidate %@ - reason: %@", &v24, 0x20u);
      }

      session2 = [(MRURouteRecommender *)self session];
      [session2 addEvent:v19 forCandidate:v20];
    }

    else if (v23)
    {
      v24 = 138413314;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = forCopy;
      v32 = 2112;
      v33 = reasonCopy;
      _os_log_impl(&dword_1A20FC000, session2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].URR EVENT: MRU is DROPPING %@ for candidate %@, no candidate identifier - route: %@, endpoint: %@ - reason: %@", &v24, 0x34u);
    }
  }

  else
  {
    v14 = _MRLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MRURouteRecommender donatePickerChoiceFor:bundleID:isEligibleApp:reason:];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  userDefaults = [(MRURouteRecommender *)self userDefaults];

  if (userDefaults == objectCopy && [pathCopy isEqualToString:@"IRContextUpdate"])
  {
    session = [(MRURouteRecommender *)self session];
    [(MRURouteRecommender *)self session:session didUpdateContext:MEMORY[0x1E695E0F8]];
  }
}

- (void)session:(NSObject *)a3 didFailWithError:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 serviceToken];
  OUTLINED_FUNCTION_0();
  v7 = 2048;
  v8 = a2;
  _os_log_error_impl(&dword_1A20FC000, a3, OS_LOG_TYPE_ERROR, "[MRDRRC].URR Token %@ invalidated for session %p, in client process, clearing session", v6, 0x16u);
}

- (void)session:(NSObject *)a3 didFailWithError:.cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 serviceToken];
  OUTLINED_FUNCTION_0();
  v7 = 2048;
  v8 = a2;
  _os_log_fault_impl(&dword_1A20FC000, a3, OS_LOG_TYPE_FAULT, "Token %@ invalidated for session %p, in client process, clearing session", v6, 0x16u);
}

@end