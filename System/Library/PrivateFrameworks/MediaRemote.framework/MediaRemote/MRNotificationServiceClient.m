@interface MRNotificationServiceClient
- (BOOL)_processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport;
- (MRNotificationServiceClient)initWithServiceClient:(id)a3;
- (void)_handleActiveApplicationDidChangeNotification:(id)a3;
- (void)_handleActiveGroupSessionInfoDidChangeNotification:(id)a3;
- (void)_handleActiveOriginDidChangeNotification:(id)a3;
- (void)_handleActivePlayerDidChangeNotification:(id)a3;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3;
- (void)_handleApplicationClientStateDidChangeNotification:(id)a3;
- (void)_handleApplicationDidForegroundNotification:(id)a3;
- (void)_handleApplicationDidRegisterNotification:(id)a3;
- (void)_handleApplicationDidUnregisterNotification:(id)a3;
- (void)_handleApplicationDisplayNameDidChangeNotification:(id)a3;
- (void)_handleDeviceInfoDidChangeNotification:(id)a3;
- (void)_handleLocalGroupSessionEligibilityDidChangeNotification:(id)a3;
- (void)_handleLocalUserIdentityDidChangeNotification:(id)a3;
- (void)_handleOriginDidRegisterNotification:(id)a3;
- (void)_handleOriginDidUnregisterNotification:(id)a3;
- (void)_handlePlayerContentItemArtworkDidChangeNotification:(id)a3;
- (void)_handlePlayerContentItemsDidChangeNotification:(id)a3;
- (void)_handlePlayerDidRegisterNotification:(id)a3;
- (void)_handlePlayerDidUnregisterNotification:(id)a3;
- (void)_handlePlayerIsPlayingDidChangeNotification:(id)a3;
- (void)_handlePlayerNowPlayingInfoDidChangeNotification:(id)a3;
- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)a3;
- (void)_handlePlayerPlaybackStateDidChangeNotification:(id)a3;
- (void)_handlePlayerStateDidChangeNotification:(id)a3;
- (void)_handlePlayerSupportedCommandsDidChangeNotification:(id)a3;
- (void)_handleVolumeControlCapabilitiesDidChangeNotification:(id)a3;
- (void)_handleVolumeDidChangeNotification:(id)a3;
- (void)_maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:(id)a3;
- (void)_notificationFired:(id)a3 clientNotification:(id)a4 originNotification:(id)a5 nowPlayingNotification:(id)a6;
- (void)_notificationFired:(id)a3 originNotification:(id)a4 nowPlayingNotification:(id)a5;
- (void)_notificationFired:(id)a3 playerPathNotifcation:(id)a4 originNotification:(id)a5 nowPlayingNotification:(id)a6;
- (void)_postDefaultAppilicationNotifications:(id)a3;
- (void)_postDefaultOriginNotifications:(id)a3;
- (void)_postDefaultPlayerNotificationsWithUserInfo:(id)a3 object:(id)a4;
- (void)_processActiveApplicationInvalidationHandlersForNotification:(id)a3;
- (void)_processActivePlayerInvalidationHandlersForNotification:(id)a3;
- (void)_processApplicationInvalidationHandlersForNotification:(id)a3;
- (void)_processOriginInvalidationHandlersForNotification:(id)a3;
- (void)_processPlayerInvalidationHandlersForNotification:(id)a3;
- (void)registerCallbacks;
@end

@implementation MRNotificationServiceClient

- (void)registerCallbacks
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleActiveOriginDidChangeNotification_ name:@"_MRMediaRemoteActiveOriginDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleOriginDidRegisterNotification_ name:@"_MRMediaRemoteOriginDidRegisterNotification" object:0];
  [v3 addObserver:self selector:sel__handleOriginDidUnregisterNotification_ name:@"_MRMediaRemoteOriginDidUnregisterNotification" object:0];
  [v3 addObserver:self selector:sel__handleVolumeControlCapabilitiesDidChangeNotification_ name:@"_MPMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleVolumeDidChangeNotification_ name:@"_MPMediaRemotePickedRouteVolumeDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleDeviceInfoDidChangeNotification_ name:@"_MRDeviceInfoDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleActiveApplicationDidChangeNotification_ name:@"_MRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidRegisterNotification_ name:@"_MRMediaRemoteNowPlayingApplicationDidRegister" object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidUnregisterNotification_ name:@"_MRMediaRemoteNowPlayingApplicationDidUnregister" object:0];
  [v3 addObserver:self selector:sel__handleApplicationClientStateDidChangeNotification_ name:@"_MRMediaRemoteApplicationClientStateDidChange" object:0];
  [v3 addObserver:self selector:sel__handleApplicationDisplayNameDidChangeNotification_ name:@"_MRMediaRemoteApplicationDisplayNameDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleApplicationDidForegroundNotification_ name:@"_MRMediaRemoteApplicationDidForegroundNotification" object:0];
  [v3 addObserver:self selector:sel__handleActivePlayerDidChangeNotification_ name:@"_MRMediaRemoteActivePlayerDidChange" object:0];
  [v3 addObserver:self selector:sel__handlePlayerDidRegisterNotification_ name:@"_MRMediaRemoteNowPlayingPlayerDidRegister" object:0];
  [v3 addObserver:self selector:sel__handlePlayerDidUnregisterNotification_ name:@"_MRMediaRemoteNowPlayingPlayerDidUnregister" object:0];
  [v3 addObserver:self selector:sel__handlePlayerPlaybackQueueDidChangeNotification_ name:@"_kMRNowPlayingPlaybackQueueChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerContentItemsDidChangeNotification_ name:@"_MRPlayerPlaybackQueueContentItemsChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerContentItemArtworkDidChangeNotification_ name:@"_MRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerSupportedCommandsDidChangeNotification_ name:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerNowPlayingInfoDidChangeNotification_ name:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerPlaybackStateDidChangeNotification_ name:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerIsPlayingDidChangeNotification_ name:@"_MRMediaRemotePlayerIsPlayingDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handlePlayerStateDidChangeNotification_ name:@"_MRMediaRemotePlayerStateDidChange" object:0];
  [v3 addObserver:self selector:sel__handleActiveSystemEndpointDidChangeNotification_ name:@"_kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleActiveGroupSessionInfoDidChangeNotification_ name:@"_MRGroupSessionInfoDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleLocalUserIdentityDidChangeNotification_ name:@"_MRUserIdentityDidChangeNotification" object:0];
  [v3 addObserver:self selector:sel__handleLocalGroupSessionEligibilityDidChangeNotification_ name:@"_MRGroupSessionEligibilityDidChangeNotification" object:0];
}

- (BOOL)_processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport
{
  if (_processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport_onceToken != -1)
  {
    [MRNotificationServiceClient _processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport];
  }

  return _processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport_allowed;
}

void __106__MRNotificationServiceClient__processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1577578];
  v3 = [v2 containsObject:v1];
  _processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport_allowed = v3;
  if (v3)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Allowing Process for non-playerPath based notifications", v5, 2u);
    }
  }
}

- (MRNotificationServiceClient)initWithServiceClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRNotificationServiceClient;
  v6 = [(MRNotificationServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, a3);
    [(MRNotificationServiceClient *)v7 registerCallbacks];
  }

  return v7;
}

BOOL __87__MRNotificationServiceClient__processActiveOriginInvalidationHandlersForNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 origin];
  v3 = v2 == 0;

  return v3;
}

- (void)_processActiveApplicationInvalidationHandlersForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 userInfo];
    v9 = MRGetOriginFromUserInfo(v8);

    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

    serviceClient = self->_serviceClient;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __92__MRNotificationServiceClient__processActiveApplicationInvalidationHandlersForNotification___block_invoke;
    v15[3] = &unk_1E769FF48;
    v16 = v11;
    v17 = v9;
    v13 = v9;
    v14 = v11;
    [(MRMediaRemoteServiceClient *)serviceClient processPlayerPathInvalidationHandlersWithBlock:v15];
  }
}

BOOL __92__MRNotificationServiceClient__processActiveApplicationInvalidationHandlersForNotification___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isResolved])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 origin];
    if (!v5)
    {
      v5 = [*(a1 + 32) origin];
    }

    if ([*(a1 + 40) isEqual:v5])
    {
      v6 = [v3 client];
      if (v6)
      {
        v7 = [v3 client];
        v8 = [v7 bundleIdentifier];
        if (v8)
        {
          v4 = 0;
        }

        else
        {
          v9 = [v3 client];
          v4 = [v9 processIdentifier] == 0;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_processActivePlayerInvalidationHandlersForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v7 = [v6 BOOLValue];

  if ((v7 & 1) == 0)
  {
    v8 = [v4 userInfo];
    v9 = MRGetOriginFromUserInfo(v8);

    v10 = [v4 userInfo];
    v11 = MRGetClientFromUserInfo(v10);

    v12 = [v4 userInfo];
    v13 = [v12 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

    v14 = [v4 userInfo];
    v15 = [v14 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];

    serviceClient = self->_serviceClient;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__MRNotificationServiceClient__processActivePlayerInvalidationHandlersForNotification___block_invoke;
    v21[3] = &unk_1E769FF70;
    v22 = v13;
    v23 = v9;
    v24 = v15;
    v25 = v11;
    v17 = v11;
    v18 = v15;
    v19 = v9;
    v20 = v13;
    [(MRMediaRemoteServiceClient *)serviceClient processPlayerPathInvalidationHandlersWithBlock:v21];
  }
}

BOOL __87__MRNotificationServiceClient__processActivePlayerInvalidationHandlersForNotification___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 isResolved])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 origin];
    if (!v5)
    {
      v5 = [a1[4] origin];
    }

    if ([a1[5] isEqual:v5])
    {
      v6 = [v3 client];
      if (!v6)
      {
        v6 = [a1[6] client];
      }

      v7 = +[MRNowPlayingOriginClientManager sharedManager];
      v8 = [v7 existingOriginClientRequestsForPlayerPath:v3];

      v9 = [v8 deviceInfo];
      [v6 resolvePlaceholdersForDeviceInfo:v9];

      if ([a1[7] isEqual:v6])
      {
        v10 = [v3 player];
        v4 = v10 == 0;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_processOriginInvalidationHandlersForNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetOriginFromUserInfo(v4);

  serviceClient = self->_serviceClient;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__MRNotificationServiceClient__processOriginInvalidationHandlersForNotification___block_invoke;
  v8[3] = &unk_1E769F870;
  v9 = v5;
  v7 = v5;
  [(MRMediaRemoteServiceClient *)serviceClient processPlayerPathInvalidationHandlersWithBlock:v8];
}

uint64_t __81__MRNotificationServiceClient__processOriginInvalidationHandlersForNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 origin];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)_processApplicationInvalidationHandlersForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetOriginFromUserInfo(v5);

  v7 = [v4 userInfo];
  v8 = MRGetClientFromUserInfo(v7);

  v9 = [v4 userInfo];

  v10 = [v9 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

  serviceClient = self->_serviceClient;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__MRNotificationServiceClient__processApplicationInvalidationHandlersForNotification___block_invoke;
  v15[3] = &unk_1E769FF98;
  v16 = v10;
  v17 = v6;
  v18 = v8;
  v12 = v8;
  v13 = v6;
  v14 = v10;
  [(MRMediaRemoteServiceClient *)serviceClient processPlayerPathInvalidationHandlersWithBlock:v15];
}

uint64_t __86__MRNotificationServiceClient__processApplicationInvalidationHandlersForNotification___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 origin];
  if (!v4)
  {
    v4 = [a1[4] origin];
  }

  if (![a1[5] isEqual:v4])
  {
    goto LABEL_6;
  }

  v5 = [v3 client];
  v6 = +[MRNowPlayingOriginClientManager sharedManager];
  v7 = [v6 existingOriginClientRequestsForPlayerPath:v3];

  v8 = [v7 deviceInfo];
  [v5 resolvePlaceholdersForDeviceInfo:v8];

  v9 = [a1[6] isEqual:v5];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
LABEL_6:
    v10 = 0;
  }

  return v10;
}

- (void)_processPlayerInvalidationHandlersForNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetOriginFromUserInfo(v5);

  v7 = [v4 userInfo];
  v8 = MRGetClientFromUserInfo(v7);

  v9 = [v4 userInfo];
  v10 = MRGetPlayerFromUserInfo(v9);

  v11 = [v4 userInfo];
  v12 = [v11 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

  v13 = [v4 userInfo];

  v14 = [v13 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];

  serviceClient = self->_serviceClient;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __81__MRNotificationServiceClient__processPlayerInvalidationHandlersForNotification___block_invoke;
  v21[3] = &unk_1E769FFC0;
  v22 = v12;
  v23 = v6;
  v24 = v14;
  v25 = v8;
  v26 = v10;
  v16 = v10;
  v17 = v8;
  v18 = v14;
  v19 = v6;
  v20 = v12;
  [(MRMediaRemoteServiceClient *)serviceClient processPlayerPathInvalidationHandlersWithBlock:v21];
}

uint64_t __81__MRNotificationServiceClient__processPlayerInvalidationHandlersForNotification___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 origin];
  if (!v4)
  {
    v4 = [a1[4] origin];
  }

  if ([a1[5] isEqual:v4])
  {
    v5 = [v3 client];
    if (!v5)
    {
      v5 = [a1[6] client];
    }

    v6 = +[MRNowPlayingOriginClientManager sharedManager];
    v7 = [v6 existingOriginClientRequestsForPlayerPath:v3];

    v8 = [v7 deviceInfo];
    [v5 resolvePlaceholdersForDeviceInfo:v8];

    if ([a1[7] isEqual:v5])
    {
      v9 = [v3 player];
      v10 = [a1[8] isEqual:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_postDefaultPlayerNotificationsWithUserInfo:(id)a3 object:(id)a4
{
  v6 = a4;
  v13 = [a3 mutableCopy];
  v7 = MEMORY[0x1E695E118];
  [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  [v13 setObject:v7 forKeyedSubscript:@"_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey"];
  v8 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [v8 postNotification:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" userInfo:v13 object:v6];

  v9 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [v9 postNotification:@"_MRMediaRemotePlayerIsPlayingDidChangeNotification" userInfo:v13 object:v6];

  v10 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [v10 postNotification:@"_kMRNowPlayingPlaybackQueueChangedNotification" userInfo:v13 object:v6];

  v11 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [v11 postNotification:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" userInfo:v13 object:v6];

  v12 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [v12 postNotification:@"_MRMediaRemotePlayerStateDidChange" userInfo:v13 object:v6];
}

- (void)_postDefaultAppilicationNotifications:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v10 = [v5 mutableCopy];

  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v7 = [v4 object];
  [v6 postNotification:@"_MRMediaRemoteApplicationClientStateDidChange" userInfo:v10 object:v7];

  v8 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v9 = [v4 object];

  [v8 postNotification:@"_MRMediaRemoteActivePlayerDidChange" userInfo:v10 object:v9];
}

- (void)_postDefaultOriginNotifications:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v10 = [v5 mutableCopy];

  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v7 = [v4 object];
  [v6 postNotification:@"_MRDeviceInfoDidChangeNotification" userInfo:v10 object:v7];

  v8 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v9 = [v4 object];

  [v8 postNotification:@"_MRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" userInfo:v10 object:v9];
}

- (void)_notificationFired:(id)a3 playerPathNotifcation:(id)a4 originNotification:(id)a5 nowPlayingNotification:(id)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v26 = a6;
  v12 = a4;
  v13 = [v10 userInfo];
  v14 = [v13 objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v15 = [v13 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  v16 = [v13 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];
  v17 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v18 = [v10 object];
  [v17 postNotification:v12 userInfo:v13 object:v18];

  if (([v14 isEqual:v16] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    v19 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v20 = [v10 object];
    [v19 postNotification:v11 userInfo:v13 object:v20];
  }

  if (([v14 isEqual:v15] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    v21 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v22 = [v10 object];
    v23 = [v21 postNotification:v26 userInfo:v13 object:v22];

    if (v23)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v24 = _MRLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v28 = v26;
          v29 = 2114;
          v30 = v14;
          _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_notificationFired:(id)a3 clientNotification:(id)a4 originNotification:(id)a5 nowPlayingNotification:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v29 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [v10 userInfo];
  v14 = [v13 objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v15 = [v14 copy];

  [v15 setPlayer:0];
  v16 = [v13 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  v17 = [v16 copy];

  [v17 setPlayer:0];
  v18 = [v13 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];
  v19 = [v18 copy];

  [v19 setPlayer:0];
  v20 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v21 = [v10 object];
  [v20 postNotification:v12 userInfo:v13 object:v21];

  if (([v15 isEqual:v19] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    v22 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v23 = [v10 object];
    [v22 postNotification:v29 userInfo:v13 object:v23];
  }

  if (([v15 isEqual:v17] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    v24 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v25 = [v10 object];
    v26 = [v24 postNotification:v11 userInfo:v13 object:v25];

    if (v26)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v27 = _MRLogForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v31 = v11;
          v32 = 2114;
          v33 = v15;
          _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_notificationFired:(id)a3 originNotification:(id)a4 nowPlayingNotification:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 userInfo];
  v12 = [v11 objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v13 = [v11 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  v14 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v15 = [v8 object];
  [v14 postNotification:v10 userInfo:v11 object:v15];

  v16 = [v12 origin];
  v17 = [v13 origin];
  if (([v16 isEqual:v17] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    v18 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v19 = [v8 object];
    v20 = [v18 postNotification:v9 userInfo:v11 object:v19];

    if (v20)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v21 = _MRLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138543618;
          v24 = v9;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", &v23, 0x16u);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_handleActiveOriginDidChangeNotification:(id)a3
{
  serviceClient = self->_serviceClient;
  v8 = a3;
  v5 = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  v6 = [v8 userInfo];
  v7 = [v8 object];
  [v5 postNotification:@"kMRMediaRemoteActiveOriginDidChangeNotification" userInfo:v6 object:v7];

  [(MRNotificationServiceClient *)self _postDefaultOriginNotifications:v8];
  [(MRNotificationServiceClient *)self _processActiveOriginInvalidationHandlersForNotification:v8];
}

- (void)_handleOriginDidRegisterNotification:(id)a3
{
  serviceClient = self->_serviceClient;
  v11 = a3;
  v5 = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  v6 = [v11 userInfo];
  v7 = [v11 object];
  [v5 postNotification:@"kMRMediaRemoteOriginDidRegisterNotification" userInfo:v6 object:v7];

  v8 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v9 = [v11 userInfo];
  v10 = [v11 object];
  [v8 postNotification:@"kMRMediaRemoteAvailableOriginsDidChangeNotification" userInfo:v9 object:v10];

  [(MRNotificationServiceClient *)self _processOriginInvalidationHandlersForNotification:v11];
}

- (void)_handleOriginDidUnregisterNotification:(id)a3
{
  serviceClient = self->_serviceClient;
  v5 = a3;
  v6 = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  v7 = [v5 userInfo];
  v8 = [v5 object];
  [v6 postNotification:@"kMRMediaRemoteOriginDidUnregisterNotification" userInfo:v7 object:v8];

  v9 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v10 = [v5 userInfo];
  v11 = [v5 object];
  [v9 postNotification:@"kMRMediaRemoteAvailableOriginsDidChangeNotification" userInfo:v10 object:v11];

  [(MRNotificationServiceClient *)self _processOriginInvalidationHandlersForNotification:v5];
  v12 = [v5 userInfo];

  v14 = MRGetOriginFromUserInfo(v12);

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  [v13 removeOriginRequests:v14];
}

- (void)_handleActiveApplicationDidChangeNotification:(id)a3
{
  v4 = a3;
  [(MRNotificationServiceClient *)self _notificationFired:v4 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDidChangeNotification"];
  [(MRNotificationServiceClient *)self _postDefaultAppilicationNotifications:v4];
  [(MRNotificationServiceClient *)self _processActiveApplicationInvalidationHandlersForNotification:v4];
}

- (void)_handleApplicationDidRegisterNotification:(id)a3
{
  serviceClient = self->_serviceClient;
  v8 = a3;
  v5 = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  v6 = [v8 userInfo];
  v7 = [v8 object];
  [v5 postNotification:@"kMRMediaRemoteNowPlayingApplicationDidRegister" userInfo:v6 object:v7];

  [(MRNotificationServiceClient *)self _processApplicationInvalidationHandlersForNotification:v8];
}

- (void)_handleApplicationDidUnregisterNotification:(id)a3
{
  v30 = a3;
  v4 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v5 = [v30 userInfo];
  v6 = [v30 object];
  [v4 postNotification:@"kMRMediaRemoteNowPlayingApplicationDidUnregister" userInfo:v5 object:v6];

  [(MRNotificationServiceClient *)self _processApplicationInvalidationHandlersForNotification:v30];
  v7 = [v30 userInfo];
  v9 = MRGetPlayerPathFromUserInfo(v7, v8);

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 existingOriginClientRequestsForPlayerPath:v9];

  [v11 removeClient:v9];
  v12 = [v30 userInfo];
  v13 = [v12 objectForKeyedSubscript:@"_MRMediaRemoteApplicationHasSupportedCommandsUserInfoKey"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [v30 userInfo];
    v16 = [v15 mutableCopy];

    v18 = MRGetPlayerPathFromUserInfo(v16, v17);
    v19 = [v18 copy];

    v20 = [MRPlayerPath alloc];
    v21 = [v19 origin];
    v22 = [MRClient alloc];
    v23 = [v19 client];
    v24 = [v23 bundleIdentifier];
    v25 = [(MRClient *)v22 initWithBundleIdentifier:v24];
    v26 = [(MRPlayerPath *)v20 initWithOrigin:v21 client:v25 player:0];
    MRAddPlayerPathToUserInfo(v16, v26);

    v27 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v28 = MRCreateDecodedUserInfo(v16);
    v29 = [v30 object];
    [v27 postNotification:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" userInfo:v28 object:v29];
  }
}

- (void)_handleApplicationClientStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v17 = MRGetPlayerPathFromUserInfo(v5, v6);

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v9 = [v8 BOOLValue];

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 existingClientRequestsForPlayerPath:v17];

  v12 = [v17 client];
  [v11 setClientProperties:v12];

  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = @"kMRMediaRemoteApplicationClientStateDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v4 clientNotification:v13 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationClientStateDidChange"];
  v14 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v15 = [v4 userInfo];
  v16 = [v4 object];

  [v14 postNotification:@"_MRMediaRemoteApplicationDisplayNameDidChangeNotification" userInfo:v15 object:v16];
}

- (void)_handleApplicationDisplayNameDidChangeNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteApplicationDisplayNameDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v8 clientNotification:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDisplayNameDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDisplayNameDidChangeNotification"];
}

- (void)_handleApplicationDidForegroundNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteApplicationDidForeground";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v8 clientNotification:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDidForegroundNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDidForegroundNotification"];
}

- (void)_handleActivePlayerDidChangeNotification:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteActivePlayerDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v10 playerPathNotifcation:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingPlayerDidChange" nowPlayingNotification:@"kMRMediaRemoteNowPlayingPlayerDidChange"];
  v8 = [v10 userInfo];
  v9 = [v10 object];
  [(MRNotificationServiceClient *)self _postDefaultPlayerNotificationsWithUserInfo:v8 object:v9];

  [(MRNotificationServiceClient *)self _processActivePlayerInvalidationHandlersForNotification:v10];
}

- (void)_handlePlayerDidRegisterNotification:(id)a3
{
  serviceClient = self->_serviceClient;
  v8 = a3;
  v5 = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  v6 = [v8 userInfo];
  v7 = [v8 object];
  [v5 postNotification:@"kMRMediaRemoteNowPlayingPlayerDidRegister" userInfo:v6 object:v7];

  [(MRNotificationServiceClient *)self _processPlayerInvalidationHandlersForNotification:v8];
}

- (void)_handlePlayerDidUnregisterNotification:(id)a3
{
  v26 = a3;
  v4 = [v26 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];
  v6 = [v5 intValue];

  v7 = [v26 userInfo];
  v8 = [v7 mutableCopy];

  [v8 setObject:&unk_1F1577860 forKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  if (MRMediaRemotePlaybackStateIsAdvancing(v6))
  {
    p_serviceClient = &self->_serviceClient;
    v10 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v11 = MRCreateDecodedUserInfo(v8);
    v12 = [v26 object];
    [v10 postNotification:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" userInfo:v11 object:v12];

    v13 = _MRMediaRemotePlayerIsPlayingDidChangeNotification;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_6;
    }

    p_serviceClient = &self->_serviceClient;
    v13 = _MRMediaRemotePlayerPlaybackStateDidChangeNotification;
  }

  v14 = [(MRMediaRemoteServiceClient *)*p_serviceClient notificationClient];
  v15 = *v13;
  v16 = MRCreateDecodedUserInfo(v8);
  v17 = [v26 object];
  [v14 postNotification:v15 userInfo:v16 object:v17];

LABEL_6:
  v18 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v19 = [v26 userInfo];
  v20 = [v26 object];
  [v18 postNotification:@"kMRMediaRemoteNowPlayingPlayerDidUnregister" userInfo:v19 object:v20];

  [(MRNotificationServiceClient *)self _processPlayerInvalidationHandlersForNotification:v26];
  v21 = [v26 userInfo];
  v23 = MRGetPlayerPathFromUserInfo(v21, v22);

  v24 = +[MRNowPlayingOriginClientManager sharedManager];
  v25 = [v24 existingClientRequestsForPlayerPath:v23];

  [v25 removePlayer:v23];
}

- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)a3
{
  v23 = a3;
  v4 = [v23 userInfo];
  v6 = MRGetPlayerPathFromUserInfo(v4, v5);

  if ([v6 isLocal])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v23 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    v7 = [v9 BOOLValue];
  }

  v10 = [v23 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  v12 = [v11 BOOLValue];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 existingPlayerClientRequestsForPlayerPath:v6];

  if (v14)
  {
    v15 = [v14 subscriptionController];
    [v15 invalidate];

    v16 = [v23 mr_playbackQueue];
    [v14 setPlaybackQueue:v16];
  }

  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRPlayerPlaybackQueueChangedNotification";
  }

  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"kMROriginNowPlayingPlaybackQueueChangedNotification";
  }

  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRNowPlayingPlaybackQueueChangedNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v23 playerPathNotifcation:v17 originNotification:v18 nowPlayingNotification:v19];
  [(MRNotificationServiceClient *)self _maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:v23];
  v20 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v21 = [v23 userInfo];
  v22 = [v23 object];
  [v20 postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:v21 object:v22];
}

- (void)_maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:(id)a3
{
  v16 = a3;
  v4 = [v16 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = [v16 userInfo];
    v8 = [v7 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    v9 = [v8 BOOLValue];

    v10 = [v16 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
    v12 = [v11 BOOLValue];

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v13 = @"MRPlayerPlaybackQueueNowPlayingItemChangedNotification";
    }

    if (v12)
    {
      v14 = 0;
    }

    else
    {
      v14 = @"MROriginNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    }

    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = @"MRNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    }

    [(MRNotificationServiceClient *)self _notificationFired:v16 playerPathNotifcation:v13 originNotification:v14 nowPlayingNotification:v15];
  }
}

- (void)_handlePlayerContentItemsDidChangeNotification:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v7 = MRGetPlayerPathFromUserInfo(v5, v6);

  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 existingPlayerClientRequestsForPlayerPath:v7];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKey:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

  [v9 updateContentItems:v11];
  v27 = v7;
  if ([v7 isLocal])
  {
    v12 = 0;
  }

  else
  {
    v12 = @"kMRPlayerPlaybackQueueContentItemsChangedNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v4 playerPathNotifcation:v12 originNotification:@"kMROriginPlaybackQueueContentItemsChangedNotification" nowPlayingNotification:@"kMRPlaybackQueueContentItemsChangedNotification", self];
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v28 + 1) + 8 * i);
        RequestIdentifier = MRContentItemGetRequestIdentifier(v19);
        v21 = [v9 subscriptionController];
        LOBYTE(RequestIdentifier) = [v21 hasRequest:RequestIdentifier];

        if ((RequestIdentifier & 1) == 0)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    v22 = [*(v26 + 8) notificationClient];
    v23 = [v4 userInfo];
    v24 = [v4 object];
    [v22 postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:v23 object:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlayerContentItemArtworkDidChangeNotification:(id)a3
{
  v16 = a3;
  v4 = [v16 userInfo];
  v6 = MRGetPlayerPathFromUserInfo(v4, v5);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingPlayerClientRequestsForPlayerPath:v6];

  if (v8)
  {
    v9 = [v16 userInfo];
    v11 = MRGetContentItemsFromUserInfo(v9, v10);

    [v8 updateContentItemArtwork:v11];
  }

  if ([v6 isLocal])
  {
    v12 = 0;
  }

  else
  {
    v12 = @"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v16 playerPathNotifcation:v12 originNotification:@"kMROriginPlaybackQueueContentItemArtworkChangedNotification" nowPlayingNotification:@"kMRPlaybackQueueContentItemArtworkChangedNotification"];
  v13 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v14 = [v16 userInfo];
  v15 = [v16 object];
  [v13 postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:v14 object:v15];
}

- (void)_handlePlayerSupportedCommandsDidChangeNotification:(id)a3
{
  v20 = a3;
  v4 = [v20 userInfo];
  v6 = MRGetPlayerPathFromUserInfo(v4, v5);

  if ([v6 isLocal])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v20 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    v7 = [v9 BOOLValue];
  }

  v10 = [v20 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  v12 = [v11 BOOLValue];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 existingPlayerClientRequestsForPlayerPath:v6];

  if (v14)
  {
    v15 = [v20 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"kMRSupportedCommandsUserInfoKey"];
    [v14 setSupportedCommands:v16];
  }

  if (v7)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification";
  }

  if (v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"kMRMediaRemoteOriginSupportedCommandsDidChangeNotification";
  }

  if (v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRMediaRemoteSupportedCommandsDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v20 playerPathNotifcation:v17 originNotification:v18 nowPlayingNotification:v19];
}

- (void)_handlePlayerNowPlayingInfoDidChangeNotification:(id)a3
{
  v8 = a3;
  v4 = [v8 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v8 playerPathNotifcation:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingInfoDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingInfoDidChangeNotification"];
}

- (void)_handlePlayerPlaybackStateDidChangeNotification:(id)a3
{
  v21 = a3;
  v5 = [v21 userInfo];
  v7 = MRGetPlayerPathFromUserInfo(v5, v6);

  v8 = [v21 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v10 = [v9 BOOLValue];

  v11 = [v21 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  v13 = [v12 BOOLValue];

  v14 = [v21 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  if (!v15)
  {
    [(MRNotificationServiceClient *)a2 _handlePlayerPlaybackStateDidChangeNotification:v21];
  }

  v16 = +[MRNowPlayingOriginClientManager sharedManager];
  v17 = [v16 existingPlayerClientRequestsForPlayerPath:v7];

  [v17 setPlaybackState:{objc_msgSend(v15, "intValue")}];
  if (v10)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification";
  }

  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification";
  }

  if (v13)
  {
    v20 = 0;
  }

  else
  {
    v20 = @"kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v21 playerPathNotifcation:v18 originNotification:v19 nowPlayingNotification:v20];
}

- (void)_handlePlayerIsPlayingDidChangeNotification:(id)a3
{
  v25 = a3;
  v5 = [v25 userInfo];
  v7 = MRGetPlayerPathFromUserInfo(v5, v6);

  v8 = [v25 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v10 = [v9 BOOLValue];

  v11 = [v25 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  v13 = [v12 BOOLValue];

  v14 = [v25 userInfo];
  v15 = [v14 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey"];

  if (!v15)
  {
    [(MRNotificationServiceClient *)a2 _handlePlayerIsPlayingDidChangeNotification:v25];
  }

  v16 = [v25 userInfo];
  v17 = [v16 objectForKeyedSubscript:@"_MRMediaRemoteOriginLastPlayingTimestampUserInfoKey"];

  if (v17)
  {
    v18 = +[MRNowPlayingOriginClientManager sharedManager];
    v19 = [v18 existingOriginClientRequestsForPlayerPath:v7];

    v20 = objc_alloc(MEMORY[0x1E695DF00]);
    [v17 doubleValue];
    v21 = [v20 initWithTimeIntervalSinceReferenceDate:?];
    [v19 setLastPlayingDate:v21];
  }

  if (v10)
  {
    v22 = 0;
  }

  else
  {
    v22 = @"kMRMediaRemotePlayerIsPlayingDidChangeNotification";
  }

  if (v13)
  {
    v23 = 0;
  }

  else
  {
    v23 = @"kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification";
  }

  if (v13)
  {
    v24 = 0;
  }

  else
  {
    v24 = @"kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v25 playerPathNotifcation:v22 originNotification:v23 nowPlayingNotification:v24];
}

- (void)_handlePlayerStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v18 = MRGetPlayerPathFromUserInfo(v5, v6);

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  LODWORD(v5) = [v8 BOOLValue];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  v11 = [v10 BOOLValue];

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v12 existingPlayerClientRequestsForPlayerPath:v18];

  v14 = [v18 player];
  [v13 setPlayerProperties:v14];

  if (v5)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"kMRMediaRemotePlayerStateDidChange";
  }

  if (v11)
  {
    v16 = 0;
  }

  else
  {
    v16 = @"kMRMediaRemoteOriginNowPlayingPlayerStateDidChange";
  }

  if (v11)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRMediaRemoteNowPlayingPlayerStateDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v4 playerPathNotifcation:v15 originNotification:v16 nowPlayingNotification:v17];
}

- (void)_handleDeviceInfoDidChangeNotification:(id)a3
{
  v16 = a3;
  v4 = [v16 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  v6 = [v5 BOOLValue];

  if ((v6 & 1) == 0 && (MRProcessIsMediaRemoteDaemon() & 1) == 0)
  {
    v7 = [v16 userInfo];
    v9 = MRGetPlayerPathFromUserInfo(v7, v8);

    v10 = +[MRNowPlayingOriginClientManager sharedManager];
    v11 = [v10 existingOriginClientRequestsForPlayerPath:v9];

    v12 = [v16 userInfo];
    v14 = MRGetDeviceInfoFromUserInfo(v12, v13);
    [v11 setDeviceInfo:v14];
  }

  if (v6)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"kMRDeviceInfoDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:v16 originNotification:v15 nowPlayingNotification:@"kMRActiveDeviceInfoDidChangeNotification"];
}

- (void)_handleVolumeControlCapabilitiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v14 = MRGetPlayerPathFromUserInfo(v5, v6);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingOriginClientRequestsForPlayerPath:v14];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeControlCapabilitiesUserInfoKey"];
  [v8 setVolumeCapabilities:v10];

  v11 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v12 = [v4 userInfo];
  v13 = [v4 object];

  [v11 postNotification:@"kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification" userInfo:v12 object:v13];
}

- (void)_handleVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v14 = MRGetPlayerPathFromUserInfo(v5, v6);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingOriginClientRequestsForPlayerPath:v14];

  v9 = [v4 userInfo];
  v10 = [v9 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeUserInfoKey"];
  [v8 setVolume:v10];

  v11 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v12 = [v4 userInfo];
  v13 = [v4 object];

  [v11 postNotification:@"kMRMediaRemotePickedRouteVolumeDidChangeNotification" userInfo:v12 object:v13];
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kMRMediaRemoteActiveEndpointTypeUserInfoKey"];
  v9 = [v8 intValue];

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"_MRMediaRemoteIsRestoringClientStateUserInfoKey"];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    v13 = _MRLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      active = MRMediaRemoteActiveEndpointTypeCopyDescription(v9);
      *buf = 138412546;
      v23 = active;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "Restoring %@SystemEndpoint with UID=%@", buf, 0x16u);
    }

    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"received update from server (restoring: %@)", v15];
  v17 = +[MRNowPlayingOriginClientManager sharedManager];
  [v17 updateActiveSystemEndpointOutputDeviceUID:v6 forType:v9 reason:v16];

  v18 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v19 = [v4 userInfo];
  v20 = [v4 object];
  [v18 postNotification:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" userInfo:v19 object:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleActiveGroupSessionInfoDidChangeNotification:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"MRActiveGroupSessionInfoUserInfoKey"];

  v7 = +[MRGroupSessionRequestManager sharedManager];
  [v7 updateGroupSessionInfo:v6];

  v8 = [v4 userInfo];
  v9 = [v8 mutableCopy];

  v10 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v11 = [v4 object];

  [v10 postNotification:@"MRActiveGroupSessionInfoDidChangeNotification" userInfo:v9 object:v11];
  v12 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v15 = @"kMRMediaRemoteActiveEndpointTypeUserInfoKey";
  v16[0] = &unk_1F1577878;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [v12 postNotification:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" userInfo:v13 object:0];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleLocalGroupSessionEligibilityDidChangeNotification:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"MRGroupSessionEligibilityStatusUserInfoKey"];

  v6 = +[MRGroupSessionRequestManager sharedManager];
  v7 = [v6 updateGroupSessionEligibility:v5];

  if (v7)
  {
    v8 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v9 = [v14 userInfo];
    [v8 postNotification:@"MRGroupSessionEligibilityDidChangeNotification" userInfo:v9 object:0];

    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 groupSessionDelayedInitializationEnabled];

    if (v11)
    {
      v12 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
      v13 = [v14 userInfo];
      [v12 postNotification:@"MRActiveGroupSessionInfoDidChangeNotification" userInfo:v13 object:0];
    }
  }
}

- (void)_handleLocalUserIdentityDidChangeNotification:(id)a3
{
  v3 = [a3 userInfo];
  v6 = [v3 objectForKeyedSubscript:@"_MRUserIdentityDataUserInfoKey"];

  v4 = [[MRUserIdentity alloc] initWithProtobufData:v6];
  v5 = +[MRGroupSessionRequestManager sharedManager];
  [v5 updateLocalIdentity:v4];
}

- (void)_handlePlayerPlaybackStateDidChangeNotification:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MRNotificationServiceClient.m" lineNumber:602 description:{@"playbackState UserInfoKey not present in notification %@", a3}];
}

- (void)_handlePlayerIsPlayingDidChangeNotification:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"MRNotificationServiceClient.m" lineNumber:622 description:{@"IsPlaying UserInfoKey not present in notification %@", a3}];
}

@end