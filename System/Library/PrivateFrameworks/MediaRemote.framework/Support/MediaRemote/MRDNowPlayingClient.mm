@interface MRDNowPlayingClient
- (BOOL)_onQueue_anyPlayerIsPlaying;
- (BOOL)anyPlayerIsPlaying;
- (BOOL)canBeNowPlaying;
- (BOOL)canBeNowPlayingForPlayerClient:(id)client;
- (BOOL)hasNowPlayingData;
- (MRClient)client;
- (MRDNowPlayingClient)initWithPlayerPath:(id)path;
- (MRDNowPlayingClientDelegate)delegate;
- (MRDNowPlayingPlayerClient)activePlayerClient;
- (MRPlayerPath)activePlayerPath;
- (MRPlayerPath)playerPath;
- (NSArray)playerClients;
- (NSDate)canBeNowPlayingTimestamp;
- (id)_onQueue_activePlayerClient;
- (id)_onQueue_addPlayer:(id)player;
- (id)_onQueue_existingPlayerClientForPlayer:(id)player;
- (id)_onQueue_playerClientForPlayer:(id)player;
- (id)debugDescription;
- (id)description;
- (id)existingPlayerClientForPlayer:(id)player;
- (id)existingPlayerClientForPlayerPath:(id)path;
- (id)notificationPlayerPathFromPlayer:(id)player;
- (id)playerClientForPlayer:(id)player;
- (void)_onQueue_initializeDisplayName;
- (void)_onQueue_popState;
- (void)_onQueue_pushState;
- (void)_onQueue_removePlayerClientForPlayer:(id)player;
- (void)_onQueue_setActivePlayerClient:(id)client;
- (void)dealloc;
- (void)handleCanBeNowPlayingPlayerDidChange:(id)change;
- (void)initializeBundleIdentifier;
- (void)initializeDisplayName;
- (void)removePlayerClientForPlayer:(id)player;
- (void)setActivePlayerClient:(id)client;
- (void)setClient:(id)client;
- (void)updateClient:(id)client;
@end

@implementation MRDNowPlayingClient

- (void)initializeBundleIdentifier
{
  client = [(MRPlayerPath *)self->_playerPath client];
  processIdentifier = [client processIdentifier];

  origin = [(MRPlayerPath *)self->_playerPath origin];
  isLocallyHosted = [origin isLocallyHosted];

  if (isLocallyHosted)
  {
    v7 = sub_10000B294(processIdentifier);
    client2 = [(MRPlayerPath *)self->_playerPath client];
    [client2 setBundleIdentifier:v7];

    v9 = sub_10000AEF0(processIdentifier);
    client3 = [(MRPlayerPath *)self->_playerPath client];
    [client3 setProcessUserIdentifier:v9];
  }

  client4 = [(MRPlayerPath *)self->_playerPath client];
  parentApplicationBundleIdentifier = [client4 parentApplicationBundleIdentifier];
  v13 = parentApplicationBundleIdentifier;
  if (parentApplicationBundleIdentifier)
  {
    bundleIdentifier = parentApplicationBundleIdentifier;
  }

  else
  {
    client5 = [(MRPlayerPath *)self->_playerPath client];
    bundleIdentifier = [client5 bundleIdentifier];
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
    v24 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v19, 0x20u);
  }

  origin2 = [(MRPlayerPath *)self->_playerPath origin];
  [origin2 isLocallyHosted];
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
  client = [(MRPlayerPath *)self->_playerPath client];
  displayName = [client displayName];
  if (displayName)
  {
  }

  else
  {
    origin = [(MRPlayerPath *)self->_playerPath origin];
    isLocallyHosted = [origin isLocallyHosted];

    if (isLocallyHosted)
    {
      parentApplicationBundleIdentifier = [client parentApplicationBundleIdentifier];
      v8 = parentApplicationBundleIdentifier;
      if (!parentApplicationBundleIdentifier || (sub_10000B698(parentApplicationBundleIdentifier), (v9 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        bundleIdentifier = [client bundleIdentifier];
        v9 = sub_10000B698(bundleIdentifier);
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

      [client setDisplayName:v9];
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
  _onQueue_activePlayerClient = [(MRDNowPlayingClient *)self _onQueue_activePlayerClient];
  if (self->_pushStateActivePlayerClient != _onQueue_activePlayerClient)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = [(MRDNowPlayingPlayerClient *)self->_pushStateActivePlayerClient playerPath];
      player = [playerPath player];
      identifier = [player identifier];
      playerPath2 = [(MRDNowPlayingPlayerClient *)_onQueue_activePlayerClient playerPath];
      player2 = [playerPath2 player];
      identifier2 = [player2 identifier];
      playerPath = self->_playerPath;
      *buf = 138543874;
      v72 = identifier;
      v73 = 2114;
      v74 = identifier2;
      v75 = 2114;
      v76 = playerPath;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] ActiveNowPlayingPlayer changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained nowPlayingClient:self activePlayerDidChangeFromPlayerClient:self->_pushStateActivePlayerClient toPlayerClient:_onQueue_activePlayerClient];
  }

  client = [(MRPlayerPath *)self->_playerPath client];
  displayName = [client displayName];
  displayName2 = [(MRClient *)self->_pushStateClient displayName];
  v64 = displayName;
  v65 = _onQueue_activePlayerClient;
  v63 = displayName2;
  if (displayName && (v16 = displayName2, ([displayName isEqualToString:displayName2] & 1) == 0))
  {
    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_playerPath;
      *buf = 138543874;
      v72 = v16;
      v73 = 2114;
      v74 = displayName;
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

  parentApplicationBundleIdentifier = [client parentApplicationBundleIdentifier];
  parentApplicationBundleIdentifier2 = [(MRClient *)self->_pushStateClient parentApplicationBundleIdentifier];
  if (parentApplicationBundleIdentifier && ([parentApplicationBundleIdentifier isEqualToString:parentApplicationBundleIdentifier2] & 1) == 0)
  {
    v22 = _MRLogForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_playerPath;
      *buf = 138543874;
      v72 = parentApplicationBundleIdentifier2;
      v73 = 2114;
      v74 = parentApplicationBundleIdentifier;
      v75 = 2114;
      v76 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] ParentAppBundleIdentifier changed from %{public}@ to %{public}@ for %{public}@", buf, 0x20u);
    }

    [(MRDNowPlayingClient *)self initializeBundleIdentifier];
    [(MRDNowPlayingClient *)self _onQueue_initializeDisplayName];
    v17 = 1;
  }

  v62 = parentApplicationBundleIdentifier2;
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

  visibility = [client visibility];
  if (visibility && [(MRClient *)self->_pushStateClient visibility]!= visibility)
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

  tintColor = [client tintColor];
  if (tintColor)
  {
    tintColor2 = [(MRClient *)self->_pushStateClient tintColor];
    if (([tintColor2 isEqual:tintColor] & 1) == 0)
    {
      v38 = [tintColor2 description];
      v39 = [tintColor description];
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

  appIcon = [client appIcon];
  appIcon2 = [(MRClient *)self->_pushStateClient appIcon];
  v44 = appIcon2;
  if (appIcon == appIcon2)
  {

LABEL_41:
    if (!v17)
    {
      goto LABEL_51;
    }

    goto LABEL_42;
  }

  v45 = [appIcon isEqual:appIcon2];

  if (v45)
  {
    goto LABEL_41;
  }

  v46 = _MRLogForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    appIcon3 = [(MRClient *)self->_pushStateClient appIcon];
    absoluteString = [appIcon3 absoluteString];
    appIcon4 = [client appIcon];
    absoluteString2 = [appIcon4 absoluteString];
    v51 = self->_playerPath;
    *buf = 138543874;
    v72 = absoluteString;
    v73 = 2114;
    v74 = absoluteString2;
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

        [*(*(&v66 + 1) + 8 * i) updateClient:client];
      }

      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v66 objects:v70 count:16];
    }

    while (v54);
  }

  v57 = objc_loadWeakRetained(&self->_delegate);
  v58 = [client copy];
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
  client = [(MRPlayerPath *)self->_playerPath client];
  v4 = [client copy];
  [(MRDNowPlayingClient *)self setPushStateClient:v4];

  _onQueue_activePlayerClient = [(MRDNowPlayingClient *)self _onQueue_activePlayerClient];
  [(MRDNowPlayingClient *)self setPushStateActivePlayerClient:_onQueue_activePlayerClient];
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

- (MRDNowPlayingClient)initWithPlayerPath:(id)path
{
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = MRDNowPlayingClient;
  v5 = [(MRDNowPlayingClient *)&v24 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    v7 = *(v5 + 4);
    *(v5 + 4) = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.MRDNowPlayingClient", v8);
    v10 = *(v5 + 1);
    *(v5 + 1) = v9;

    *(v5 + 27) = 257;
    origin = [*(v5 + 4) origin];
    client = [*(v5 + 4) client];
    bundleIdentifier = [client bundleIdentifier];
    if ([origin isLocallyHosted] && !objc_msgSend(client, "processIdentifier"))
    {
      v14 = dispatch_semaphore_create(0);
      v15 = *(v5 + 1);
      v22 = v5;
      v23 = client;
      v16 = v14;
      MRProcessIDForApplication();
      v17 = dispatch_time(0, 5000000000);
      if (!dispatch_semaphore_wait(v16, v17))
      {
        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v26 = bundleIdentifier;
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
  playerPath = [(MRDNowPlayingClient *)self playerPath];
  v25 = MRCreateIndentedDebugDescriptionFromObject();
  client = [(MRDNowPlayingClient *)self client];
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
  activePlayerClient = [(MRDNowPlayingClient *)self activePlayerClient];
  playerPath2 = [activePlayerClient playerPath];
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

- (void)setClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7 = clientCopy;
  v6 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)updateClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7 = clientCopy;
  v6 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setActivePlayerClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7 = clientCopy;
  v6 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_setActivePlayerClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(MRDNowPlayingClient *)self _onQueue_pushState];
  playerPath = [(MRDNowPlayingPlayerClient *)self->_nowPlayingPlayerClient playerPath];

  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (playerPath)
  {
    if (v7)
    {
      playerPath = self->_playerPath;
      playerPath2 = [(MRDNowPlayingPlayerClient *)self->_nowPlayingPlayerClient playerPath];
      playerPath3 = [clientCopy playerPath];
      v12 = 138544130;
      v13 = playerPath;
      v14 = 2114;
      v15 = @"activePlayerClient";
      v16 = 2112;
      v17 = playerPath2;
      v18 = 2112;
      v19 = playerPath3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ from <%@> to <%@>", &v12, 0x2Au);

LABEL_6:
    }
  }

  else if (v7)
  {
    v11 = self->_playerPath;
    playerPath2 = [clientCopy playerPath];
    v12 = 138543874;
    v13 = v11;
    v14 = 2114;
    v15 = @"activePlayerClient";
    v16 = 2112;
    v17 = playerPath2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Set: %{public}@ setting %{public}@ to <%@>", &v12, 0x20u);
    goto LABEL_6;
  }

  [(MRDNowPlayingClient *)self setNowPlayingPlayerClient:clientCopy];
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

- (BOOL)canBeNowPlayingForPlayerClient:(id)client
{
  clientCopy = client;
  if ([(MRDNowPlayingClient *)self perPlayerCanBeNowPlaying]|| ![(MRDNowPlayingClient *)self canBeNowPlaying])
  {
    canBeNowPlayingPlayer = [clientCopy canBeNowPlayingPlayer];
  }

  else
  {
    canBeNowPlayingPlayer = 1;
  }

  return canBeNowPlayingPlayer;
}

- (id)playerClientForPlayer:(id)player
{
  playerCopy = player;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003514C;
  v13 = sub_100035A5C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = playerCopy;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_playerClientForPlayer:(id)player
{
  playerCopy = player;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (playerCopy || (+[MRPlayer defaultPlayer], (playerCopy = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(MRDNowPlayingClient *)self _onQueue_existingPlayerClientForPlayer:playerCopy];
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [MRPlayerPath alloc];
      origin = [(MRPlayerPath *)self->_playerPath origin];
      client = [(MRPlayerPath *)self->_playerPath client];
      v10 = [v7 initWithOrigin:origin client:client player:playerCopy];

      v6 = [(MRDNowPlayingClient *)self _onQueue_addPlayer:v10];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_onQueue_addPlayer:(id)player
{
  playerCopy = player;
  dispatch_assert_queue_V2(self->_serialQueue);
  client = [(MRPlayerPath *)self->_playerPath client];
  [playerCopy setClient:client];

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = playerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingClient] Creating playerClient for %{public}@", &v15, 0xCu);
  }

  v7 = [[MRDNowPlayingPlayerClient alloc] initWithPlayerPath:playerCopy];
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  [(MRDNowPlayingPlayerClient *)v7 setDelegate:nowPlayingServer];

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

- (id)existingPlayerClientForPlayerPath:(id)path
{
  player = [path player];
  v5 = [(MRDNowPlayingClient *)self existingPlayerClientForPlayer:player];

  return v5;
}

- (id)existingPlayerClientForPlayer:(id)player
{
  playerCopy = player;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003514C;
  v13 = sub_100035A5C;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = playerCopy;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_existingPlayerClientForPlayer:(id)player
{
  playerCopy = player;
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
        player = [v9 player];
        if ([player isEqual:playerCopy])
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

- (void)removePlayerClientForPlayer:(id)player
{
  playerCopy = player;
  serialQueue = self->_serialQueue;
  v7 = playerCopy;
  v6 = playerCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_removePlayerClientForPlayer:(id)player
{
  serialQueue = self->_serialQueue;
  playerCopy = player;
  dispatch_assert_queue_V2(serialQueue);
  v7 = [(MRDNowPlayingClient *)self _onQueue_existingPlayerClientForPlayer:playerCopy];

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

- (id)notificationPlayerPathFromPlayer:(id)player
{
  playerPath = [player playerPath];
  client = [(MRPlayerPath *)self->_playerPath client];
  [playerPath setClient:client];

  if (!playerPath)
  {
    playerPath = [(MRPlayerPath *)self->_playerPath copy];
  }

  return playerPath;
}

- (void)handleCanBeNowPlayingPlayerDidChange:(id)change
{
  userInfo = [change userInfo];
  v12 = MRGetPlayerPathFromUserInfo();

  origin = [v12 origin];
  playerPath = [(MRDNowPlayingClient *)self playerPath];
  origin2 = [playerPath origin];
  if ([origin isEqual:origin2])
  {
    client = [v12 client];
    playerPath2 = [(MRDNowPlayingClient *)self playerPath];
    client2 = [playerPath2 client];
    v11 = [client isEqual:client2];

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