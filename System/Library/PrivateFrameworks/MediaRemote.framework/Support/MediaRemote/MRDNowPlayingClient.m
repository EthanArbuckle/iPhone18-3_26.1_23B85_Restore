@interface MRDNowPlayingClient
- (BOOL)_onQueue_anyPlayerIsPlaying;
- (BOOL)anyPlayerIsPlaying;
- (BOOL)canBeNowPlaying;
- (BOOL)canBeNowPlayingForPlayerClient:(id)a3;
- (BOOL)hasNowPlayingData;
- (MRClient)client;
- (MRDNowPlayingClient)initWithPlayerPath:(id)a3;
- (MRDNowPlayingClientDelegate)delegate;
- (MRDNowPlayingPlayerClient)activePlayerClient;
- (MRPlayerPath)activePlayerPath;
- (MRPlayerPath)playerPath;
- (NSArray)playerClients;
- (NSDate)canBeNowPlayingTimestamp;
- (id)_onQueue_activePlayerClient;
- (id)_onQueue_addPlayer:(id)a3;
- (id)_onQueue_existingPlayerClientForPlayer:(id)a3;
- (id)_onQueue_playerClientForPlayer:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)existingPlayerClientForPlayer:(id)a3;
- (id)existingPlayerClientForPlayerPath:(id)a3;
- (id)notificationPlayerPathFromPlayer:(id)a3;
- (id)playerClientForPlayer:(id)a3;
- (void)_onQueue_initializeDisplayName;
- (void)_onQueue_popState;
- (void)_onQueue_pushState;
- (void)_onQueue_removePlayerClientForPlayer:(id)a3;
- (void)_onQueue_setActivePlayerClient:(id)a3;
- (void)dealloc;
- (void)handleCanBeNowPlayingPlayerDidChange:(id)a3;
- (void)initializeBundleIdentifier;
- (void)initializeDisplayName;
- (void)removePlayerClientForPlayer:(id)a3;
- (void)setActivePlayerClient:(id)a3;
- (void)setClient:(id)a3;
- (void)updateClient:(id)a3;
@end

@implementation MRDNowPlayingClient

- (void)initializeBundleIdentifier
{
  v3 = [(MRPlayerPath *)self->_playerPath client];
  v4 = [v3 processIdentifier];

  v5 = [(MRPlayerPath *)self->_playerPath origin];
  v6 = [v5 isLocallyHosted];

  if (v6)
  {
    v7 = sub_10000B294(v4);
    v8 = [(MRPlayerPath *)self->_playerPath client];
    [v8 setBundleIdentifier:v7];

    v9 = sub_10000AEF0(v4);
    v10 = [(MRPlayerPath *)self->_playerPath client];
    [v10 setProcessUserIdentifier:v9];
  }

  v11 = [(MRPlayerPath *)self->_playerPath client];
  v12 = [v11 parentApplicationBundleIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v15 = [(MRPlayerPath *)self->_playerPath client];
    v14 = [v15 bundleIdentifier];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    playerPath = self->_playerPath;
    v19 = 138543874;
    v20 = playerPath;
    v21 = 2114;
    v22 = @"effectiveBundleIdentifier";
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v19, 0x20u);
  }

  v18 = [(MRPlayerPath *)self->_playerPath origin];
  [v18 isLocallyHosted];
}

- (MRPlayerPath)playerPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)_onQueue_initializeDisplayName
{
  v3 = [(MRPlayerPath *)self->_playerPath client];
  v4 = [v3 displayName];
  if (v4)
  {
  }

  else
  {
    v5 = [(MRPlayerPath *)self->_playerPath origin];
    v6 = [v5 isLocallyHosted];

    if (v6)
    {
      v7 = [v3 parentApplicationBundleIdentifier];
      v8 = v7;
      if (!v7 || (sub_10000B698(v7), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v10 = [v3 bundleIdentifier];
        v9 = sub_10000B698(v10);
      }

      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        playerPath = self->_playerPath;
        v13 = 138543874;
        v14 = playerPath;
        v15 = 2114;
        v16 = @"displayName";
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v13, 0x20u);
      }

      [v3 setDisplayName:v9];
    }
  }
}

- (void)initializeDisplayName
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B460;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_onQueue_popState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRDNowPlayingClient *)self _onQueue_activePlayerClient];
  if (self->_pushStateActivePlayerClient != v3)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MRDNowPlayingPlayerClient *)self->_pushStateActivePlayerClient playerPath];
      v6 = [v5 player];
      v7 = [v6 identifier];
      v8 = [(MRDNowPlayingPlayerClient *)v3 playerPath];
      v9 = [v8 player];
      v10 = [v9 identifier];
      playerPath = self->_playerPath;
      *buf = 138543874;
      v72 = v7;
      v73 = 2114;
      v74 = v10;
      v75 = 2114;
      v76 = playerPath;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] ActiveNowPlayingPlayer changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained nowPlayingClient:self activePlayerDidChangeFromPlayerClient:self->_pushStateActivePlayerClient toPlayerClient:v3];
  }

  v13 = [(MRPlayerPath *)self->_playerPath client];
  v14 = [v13 displayName];
  v15 = [(MRClient *)self->_pushStateClient displayName];
  v64 = v14;
  v65 = v3;
  v63 = v15;
  if (v14 && (v16 = v15, ([v14 isEqualToString:v15] & 1) == 0))
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_playerPath;
      *buf = 138543874;
      v72 = v16;
      v73 = 2114;
      v74 = v14;
      v75 = 2114;
      v76 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] DisplayName changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    [(MRDNowPlayingClient *)self _onQueue_initializeDisplayName];
    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v20 = [v13 parentApplicationBundleIdentifier];
  v21 = [(MRClient *)self->_pushStateClient parentApplicationBundleIdentifier];
  if (v20 && ([v20 isEqualToString:v21] & 1) == 0)
  {
    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_playerPath;
      *buf = 138543874;
      v72 = v21;
      v73 = 2114;
      v74 = v20;
      v75 = 2114;
      v76 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] ParentAppBundleIdentifier changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    [(MRDNowPlayingClient *)self initializeBundleIdentifier];
    [(MRDNowPlayingClient *)self _onQueue_initializeDisplayName];
    v17 = 1;
  }

  v62 = v21;
  v24 = MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy();
  v25 = v24;
  if (v24 && [v24 count])
  {
    pushStateClient = self->_pushStateClient;
    v27 = MRNowPlayingClientCopyBundleIdentifierExtendedHierarchy();
    v28 = [v25 isEqualToArray:v27];
    if ((v28 & 1) == 0)
    {
      v29 = _MRLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_playerPath;
        *buf = 138543874;
        v72 = v27;
        v73 = 2114;
        v74 = v25;
        v75 = 2114;
        v76 = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] BundleIdentifierHierarchy changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
      }

      v17 = 1;
    }

    v61 = v28 ^ 1;
  }

  else
  {
    v61 = 0;
  }

  v31 = [v13 visibility];
  if (v31 && [(MRClient *)self->_pushStateClient visibility]!= v31)
  {
    v32 = NSStringFromMRClientVisibility();
    v33 = NSStringFromMRClientVisibility();
    v34 = _MRLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_playerPath;
      *buf = 138543874;
      v72 = v32;
      v73 = 2114;
      v74 = v33;
      v75 = 2114;
      v76 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] Visibility changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    v17 = 1;
  }

  v36 = [v13 tintColor];
  if (v36)
  {
    v37 = [(MRClient *)self->_pushStateClient tintColor];
    if (([v37 isEqual:v36] & 1) == 0)
    {
      v38 = [v37 description];
      v39 = [v36 description];
      v40 = _MRLogForCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_playerPath;
        *buf = 138543874;
        v72 = v38;
        v73 = 2114;
        v74 = v39;
        v75 = 2114;
        v76 = v41;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] TintColor changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
      }

      v17 = 1;
    }
  }

  v42 = [v13 appIcon];
  v43 = [(MRClient *)self->_pushStateClient appIcon];
  v44 = v43;
  if (v42 == v43)
  {

LABEL_41:
    if (!v17)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  v45 = [v42 isEqual:v43];

  if (v45)
  {
    goto LABEL_41;
  }

  v46 = _MRLogForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = [(MRClient *)self->_pushStateClient appIcon];
    v48 = [v47 absoluteString];
    v49 = [v13 appIcon];
    v50 = [v49 absoluteString];
    v51 = self->_playerPath;
    *buf = 138543874;
    v72 = v48;
    v73 = 2114;
    v74 = v50;
    v75 = 2114;
    v76 = v51;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] AppIcon changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
  }

LABEL_42:
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v52 = self->_playerClients;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v66 objects:v70 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v67;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v67 != v55)
        {
          objc_enumerationMutation(v52);
        }

        [*(*(&v66 + 1) + 8 * i) updateClient:v13];
      }

      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v54);
  }

  v57 = objc_loadWeakRetained(&self->_delegate);
  v58 = [v13 copy];
  [v57 nowPlayingClient:self clientStateDidChange:v58];

  if (v61)
  {
    v59 = objc_loadWeakRetained(&self->_delegate);
    [v59 nowPlayingClient:self activePlayerDidChangeFromPlayerClient:v65 toPlayerClient:v65];
  }

LABEL_51:
  v60 = self->_pushStateClient;
  self->_pushStateClient = 0;

  [(MRDNowPlayingClient *)self setPushStateActivePlayerClient:0];
}

- (void)_onQueue_pushState
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(MRPlayerPath *)self->_playerPath client];
  v4 = [v3 copy];
  [(MRDNowPlayingClient *)self setPushStateClient:v4];

  v5 = [(MRDNowPlayingClient *)self _onQueue_activePlayerClient];
  [(MRDNowPlayingClient *)self setPushStateActivePlayerClient:v5];
}

- (id)_onQueue_activePlayerClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  nowPlayingPlayerClient = self->_nowPlayingPlayerClient;

  return nowPlayingPlayerClient;
}

- (MRClient)client
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (NSArray)playerClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)canBeNowPlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (MRDNowPlayingPlayerClient)activePlayerClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDNowPlayingClient)initWithPlayerPath:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = MRDNowPlayingClient;
  v5 = [(MRDNowPlayingClient *)&v24 init];
  if (v5)
  {
    v6 = [v4 copy];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.MRDNowPlayingClient", v8);
    v10 = *(v5 + 1);
    *(v5 + 1) = v9;

    *(v5 + 27) = 257;
    v11 = [*(v5 + 4) origin];
    v12 = [*(v5 + 4) client];
    v13 = [v12 bundleIdentifier];
    if ([v11 isLocallyHosted] && !objc_msgSend(v12, "processIdentifier"))
    {
      v14 = dispatch_semaphore_create(0);
      v15 = *(v5 + 1);
      v22 = v5;
      v23 = v12;
      v16 = v14;
      MRProcessIDForApplication();
      v17 = dispatch_time(0, 5000000000);
      if (!dispatch_semaphore_wait(v16, v17))
      {
        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] Timeout trying to pid for %{public}@", buf, 0xCu);
        }
      }
    }

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v5 selector:"handleCanBeNowPlayingPlayerDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying object:0];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v5 selector:"handleCanBeNowPlayingPlayerDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidUnregisterCanBeNowPlaying object:0];

    [v5 initializeBundleIdentifier];
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MRDNowPlayingClient;
  [(MRDNowPlayingClient *)&v2 dealloc];
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  playerPath = self->_playerPath;
  v6 = [NSString stringWithFormat:@"<%@ %p playerPath=%@ playerClients=%@>", v4, self, playerPath, self->_playerClients];

  return v6;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  v21 = [(MRDNowPlayingClient *)self playerPath];
  v25 = MRCreateIndentedDebugDescriptionFromObject();
  v20 = [(MRDNowPlayingClient *)self client];
  v24 = MRCreateIndentedDebugDescriptionFromObject();
  [(MRDNowPlayingClient *)self perPlayerCanBeNowPlaying];
  v17 = MRCreateIndentedDebugDescriptionFromObject();
  self->_canBeNowPlaying;
  v23 = MRCreateIndentedDebugDescriptionFromObject();
  canBeNowPlayingTimestamp = self->_canBeNowPlayingTimestamp;
  v22 = MRCreateIndentedDebugDescriptionFromObject();
  self->_effectiveCanBeNowPlaying;
  v16 = MRCreateIndentedDebugDescriptionFromObject();
  [(MRDNowPlayingClient *)self anyPlayerIsPlaying];
  v15 = MRCreateIndentedDebugDescriptionFromObject();
  [(MRDNowPlayingClient *)self hasNowPlayingData];
  v13 = MRCreateIndentedDebugDescriptionFromObject();
  [(MRDNowPlayingClient *)self isForegrounded];
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  [(MRDNowPlayingClient *)self supportsBackgroundAudio];
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  v14 = [(MRDNowPlayingClient *)self activePlayerClient];
  v7 = [v14 playerPath];
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  playerClients = self->_playerClients;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10012FC20;
  v26[3] = &unk_1004BE058;
  v26[4] = self;
  v10 = [(NSMutableArray *)playerClients sortedArrayUsingComparator:v26];
  v11 = MRCreateIndentedDebugDescriptionFromObject();
  v19 = [NSString stringWithFormat:@"%@ %p {\n    player path = %@\n    client = %@\n    perPlayerCanBeNowPlaying = %@\n    canBeNowPlaying = %@\n    canBeNowPlayingTimestamp = %@\n    effectiveCanBeNowPlaying = %@\n    any player is playing = %@\n    has now playing data = %@\n    foregrounded = %@\n    supportsBackgroundAudio = %@\n    active player client = %@\n    player clients = %@\n}", v18, self, v25, v24, v17, v23, v22, v16, v15, v13, v5, v6, v8, v11];

  return v19;
}

- (MRPlayerPath)activePlayerPath
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)updateClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)setActivePlayerClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_setActivePlayerClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(MRDNowPlayingClient *)self _onQueue_pushState];
  v5 = [(MRDNowPlayingPlayerClient *)self->_nowPlayingPlayerClient playerPath];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      playerPath = self->_playerPath;
      v9 = [(MRDNowPlayingPlayerClient *)self->_nowPlayingPlayerClient playerPath];
      v10 = [v4 playerPath];
      v12 = 138544130;
      v13 = playerPath;
      v14 = 2114;
      v15 = @"activePlayerClient";
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_6:
    }
  }

  else if (v7)
  {
    v11 = self->_playerPath;
    v9 = [v4 playerPath];
    v12 = 138543874;
    v13 = v11;
    v14 = 2114;
    v15 = @"activePlayerClient";
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
    goto LABEL_6;
  }

  [(MRDNowPlayingClient *)self setNowPlayingPlayerClient:v4];
  [(MRDNowPlayingClient *)self _onQueue_popState];
}

- (NSDate)canBeNowPlayingTimestamp
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003514C;
  v9 = sub_100035A5C;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (BOOL)anyPlayerIsPlaying
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (BOOL)_onQueue_anyPlayerIsPlaying
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_playerClients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isPlaying])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)canBeNowPlayingForPlayerClient:(id)a3
{
  v4 = a3;
  if ([(MRDNowPlayingClient *)self perPlayerCanBeNowPlaying]|| ![(MRDNowPlayingClient *)self canBeNowPlaying])
  {
    v5 = [v4 canBeNowPlayingPlayer];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)playerClientForPlayer:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003514C;
  v13 = sub_100035A5C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_playerClientForPlayer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v4 || (+[MRPlayer defaultPlayer], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(MRDNowPlayingClient *)self _onQueue_existingPlayerClientForPlayer:v4];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [MRPlayerPath alloc];
      v8 = [(MRPlayerPath *)self->_playerPath origin];
      v9 = [(MRPlayerPath *)self->_playerPath client];
      v10 = [v7 initWithOrigin:v8 client:v9 player:v4];

      v6 = [(MRDNowPlayingClient *)self _onQueue_addPlayer:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_onQueue_addPlayer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [(MRPlayerPath *)self->_playerPath client];
  [v4 setClient:v5];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] Creating playerClient for %{public}@", &v15, 0xCu);
  }

  v7 = [[MRDNowPlayingPlayerClient alloc] initWithPlayerPath:v4];
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 nowPlayingServer];
  [(MRDNowPlayingPlayerClient *)v7 setDelegate:v9];

  playerClients = self->_playerClients;
  if (!playerClients)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_playerClients;
    self->_playerClients = v11;

    playerClients = self->_playerClients;
  }

  [(NSMutableArray *)playerClients addObject:v7];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingClient:self playerDidRegister:v7];

  if ([(NSMutableArray *)self->_playerClients count]== 1)
  {
    [(MRDNowPlayingClient *)self _onQueue_setActivePlayerClient:v7];
  }

  return v7;
}

- (id)existingPlayerClientForPlayerPath:(id)a3
{
  v4 = [a3 player];
  v5 = [(MRDNowPlayingClient *)self existingPlayerClientForPlayer:v4];

  return v5;
}

- (id)existingPlayerClientForPlayer:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003514C;
  v13 = sub_100035A5C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_existingPlayerClientForPlayer:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_playerClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 player];
        if ([v10 isEqual:v4])
        {
          v6 = v9;

          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)removePlayerClientForPlayer:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_removePlayerClientForPlayer:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v7 = [(MRDNowPlayingClient *)self _onQueue_existingPlayerClientForPlayer:v5];

  if (v7)
  {
    [(MRDNowPlayingClient *)self _onQueue_pushState];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained nowPlayingClient:self playerDidUnregister:v7];

    [(NSMutableArray *)self->_playerClients removeObject:v7];
    [(MRDNowPlayingClient *)self _onQueue_popState];
  }
}

- (BOOL)hasNowPlayingData
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)notificationPlayerPathFromPlayer:(id)a3
{
  v4 = [a3 playerPath];
  v5 = [(MRPlayerPath *)self->_playerPath client];
  [v4 setClient:v5];

  if (!v4)
  {
    v4 = [(MRPlayerPath *)self->_playerPath copy];
  }

  return v4;
}

- (void)handleCanBeNowPlayingPlayerDidChange:(id)a3
{
  v4 = [a3 userInfo];
  v12 = MRGetPlayerPathFromUserInfo();

  v5 = [v12 origin];
  v6 = [(MRDNowPlayingClient *)self playerPath];
  v7 = [v6 origin];
  if ([v5 isEqual:v7])
  {
    v8 = [v12 client];
    v9 = [(MRDNowPlayingClient *)self playerPath];
    v10 = [v9 client];
    v11 = [v8 isEqual:v10];

    if (v11)
    {
      [(MRDNowPlayingClient *)self _reevaluateCanBeNowPlaying];
    }
  }

  else
  {
  }
}

- (MRDNowPlayingClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end