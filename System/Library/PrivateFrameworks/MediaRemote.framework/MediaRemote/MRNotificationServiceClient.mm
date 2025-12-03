@interface MRNotificationServiceClient
- (BOOL)_processNeedsNonPlayerPathBasedNotificationsForBackwardCompatabilitySupport;
- (MRNotificationServiceClient)initWithServiceClient:(id)client;
- (void)_handleActiveApplicationDidChangeNotification:(id)notification;
- (void)_handleActiveGroupSessionInfoDidChangeNotification:(id)notification;
- (void)_handleActiveOriginDidChangeNotification:(id)notification;
- (void)_handleActivePlayerDidChangeNotification:(id)notification;
- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification;
- (void)_handleApplicationClientStateDidChangeNotification:(id)notification;
- (void)_handleApplicationDidForegroundNotification:(id)notification;
- (void)_handleApplicationDidRegisterNotification:(id)notification;
- (void)_handleApplicationDidUnregisterNotification:(id)notification;
- (void)_handleApplicationDisplayNameDidChangeNotification:(id)notification;
- (void)_handleDeviceInfoDidChangeNotification:(id)notification;
- (void)_handleLocalGroupSessionEligibilityDidChangeNotification:(id)notification;
- (void)_handleLocalUserIdentityDidChangeNotification:(id)notification;
- (void)_handleOriginDidRegisterNotification:(id)notification;
- (void)_handleOriginDidUnregisterNotification:(id)notification;
- (void)_handlePlayerContentItemArtworkDidChangeNotification:(id)notification;
- (void)_handlePlayerContentItemsDidChangeNotification:(id)notification;
- (void)_handlePlayerDidRegisterNotification:(id)notification;
- (void)_handlePlayerDidUnregisterNotification:(id)notification;
- (void)_handlePlayerIsPlayingDidChangeNotification:(id)notification;
- (void)_handlePlayerNowPlayingInfoDidChangeNotification:(id)notification;
- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)notification;
- (void)_handlePlayerPlaybackStateDidChangeNotification:(id)notification;
- (void)_handlePlayerStateDidChangeNotification:(id)notification;
- (void)_handlePlayerSupportedCommandsDidChangeNotification:(id)notification;
- (void)_handleVolumeControlCapabilitiesDidChangeNotification:(id)notification;
- (void)_handleVolumeDidChangeNotification:(id)notification;
- (void)_maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:(id)notification;
- (void)_notificationFired:(id)fired clientNotification:(id)notification originNotification:(id)originNotification nowPlayingNotification:(id)playingNotification;
- (void)_notificationFired:(id)fired originNotification:(id)notification nowPlayingNotification:(id)playingNotification;
- (void)_notificationFired:(id)fired playerPathNotifcation:(id)notifcation originNotification:(id)notification nowPlayingNotification:(id)playingNotification;
- (void)_postDefaultAppilicationNotifications:(id)notifications;
- (void)_postDefaultOriginNotifications:(id)notifications;
- (void)_postDefaultPlayerNotificationsWithUserInfo:(id)info object:(id)object;
- (void)_processActiveApplicationInvalidationHandlersForNotification:(id)notification;
- (void)_processActivePlayerInvalidationHandlersForNotification:(id)notification;
- (void)_processApplicationInvalidationHandlersForNotification:(id)notification;
- (void)_processOriginInvalidationHandlersForNotification:(id)notification;
- (void)_processPlayerInvalidationHandlersForNotification:(id)notification;
- (void)registerCallbacks;
@end

@implementation MRNotificationServiceClient

- (void)registerCallbacks
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleActiveOriginDidChangeNotification_ name:@"_MRMediaRemoteActiveOriginDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleOriginDidRegisterNotification_ name:@"_MRMediaRemoteOriginDidRegisterNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleOriginDidUnregisterNotification_ name:@"_MRMediaRemoteOriginDidUnregisterNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleVolumeControlCapabilitiesDidChangeNotification_ name:@"_MPMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleVolumeDidChangeNotification_ name:@"_MPMediaRemotePickedRouteVolumeDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleDeviceInfoDidChangeNotification_ name:@"_MRDeviceInfoDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleActiveApplicationDidChangeNotification_ name:@"_MRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDidRegisterNotification_ name:@"_MRMediaRemoteNowPlayingApplicationDidRegister" object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDidUnregisterNotification_ name:@"_MRMediaRemoteNowPlayingApplicationDidUnregister" object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationClientStateDidChangeNotification_ name:@"_MRMediaRemoteApplicationClientStateDidChange" object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDisplayNameDidChangeNotification_ name:@"_MRMediaRemoteApplicationDisplayNameDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleApplicationDidForegroundNotification_ name:@"_MRMediaRemoteApplicationDidForegroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleActivePlayerDidChangeNotification_ name:@"_MRMediaRemoteActivePlayerDidChange" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerDidRegisterNotification_ name:@"_MRMediaRemoteNowPlayingPlayerDidRegister" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerDidUnregisterNotification_ name:@"_MRMediaRemoteNowPlayingPlayerDidUnregister" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerPlaybackQueueDidChangeNotification_ name:@"_kMRNowPlayingPlaybackQueueChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerContentItemsDidChangeNotification_ name:@"_MRPlayerPlaybackQueueContentItemsChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerContentItemArtworkDidChangeNotification_ name:@"_MRPlayerPlaybackQueueContentItemArtworkChangedNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerSupportedCommandsDidChangeNotification_ name:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerNowPlayingInfoDidChangeNotification_ name:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerPlaybackStateDidChangeNotification_ name:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerIsPlayingDidChangeNotification_ name:@"_MRMediaRemotePlayerIsPlayingDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handlePlayerStateDidChangeNotification_ name:@"_MRMediaRemotePlayerStateDidChange" object:0];
  [defaultCenter addObserver:self selector:sel__handleActiveSystemEndpointDidChangeNotification_ name:@"_kMRMediaRemoteActiveSystemEndpointDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleActiveGroupSessionInfoDidChangeNotification_ name:@"_MRGroupSessionInfoDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleLocalUserIdentityDidChangeNotification_ name:@"_MRUserIdentityDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel__handleLocalGroupSessionEligibilityDidChangeNotification_ name:@"_MRGroupSessionEligibilityDidChangeNotification" object:0];
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

- (MRNotificationServiceClient)initWithServiceClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = MRNotificationServiceClient;
  v6 = [(MRNotificationServiceClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceClient, client);
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

- (void)_processActiveApplicationInvalidationHandlersForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = MRGetOriginFromUserInfo(userInfo2);

    userInfo3 = [notificationCopy userInfo];
    v11 = [userInfo3 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

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

- (void)_processActivePlayerInvalidationHandlersForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v6 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = MRGetOriginFromUserInfo(userInfo2);

    userInfo3 = [notificationCopy userInfo];
    v11 = MRGetClientFromUserInfo(userInfo3);

    userInfo4 = [notificationCopy userInfo];
    v13 = [userInfo4 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

    userInfo5 = [notificationCopy userInfo];
    v15 = [userInfo5 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];

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

- (void)_processOriginInvalidationHandlersForNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetOriginFromUserInfo(userInfo);

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

- (void)_processApplicationInvalidationHandlersForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetOriginFromUserInfo(userInfo);

  userInfo2 = [notificationCopy userInfo];
  v8 = MRGetClientFromUserInfo(userInfo2);

  userInfo3 = [notificationCopy userInfo];

  v10 = [userInfo3 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

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

- (void)_processPlayerInvalidationHandlersForNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetOriginFromUserInfo(userInfo);

  userInfo2 = [notificationCopy userInfo];
  v8 = MRGetClientFromUserInfo(userInfo2);

  userInfo3 = [notificationCopy userInfo];
  v10 = MRGetPlayerFromUserInfo(userInfo3);

  userInfo4 = [notificationCopy userInfo];
  v12 = [userInfo4 objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];

  userInfo5 = [notificationCopy userInfo];

  v14 = [userInfo5 objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];

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

- (void)_postDefaultPlayerNotificationsWithUserInfo:(id)info object:(id)object
{
  objectCopy = object;
  v13 = [info mutableCopy];
  v7 = MEMORY[0x1E695E118];
  [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  [v13 setObject:v7 forKeyedSubscript:@"_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [notificationClient postNotification:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" userInfo:v13 object:objectCopy];

  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [notificationClient2 postNotification:@"_MRMediaRemotePlayerIsPlayingDidChangeNotification" userInfo:v13 object:objectCopy];

  notificationClient3 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [notificationClient3 postNotification:@"_kMRNowPlayingPlaybackQueueChangedNotification" userInfo:v13 object:objectCopy];

  notificationClient4 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [notificationClient4 postNotification:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" userInfo:v13 object:objectCopy];

  notificationClient5 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  [notificationClient5 postNotification:@"_MRMediaRemotePlayerStateDidChange" userInfo:v13 object:objectCopy];
}

- (void)_postDefaultAppilicationNotifications:(id)notifications
{
  notificationsCopy = notifications;
  userInfo = [notificationsCopy userInfo];
  v10 = [userInfo mutableCopy];

  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [notificationsCopy object];
  [notificationClient postNotification:@"_MRMediaRemoteApplicationClientStateDidChange" userInfo:v10 object:object];

  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object2 = [notificationsCopy object];

  [notificationClient2 postNotification:@"_MRMediaRemoteActivePlayerDidChange" userInfo:v10 object:object2];
}

- (void)_postDefaultOriginNotifications:(id)notifications
{
  notificationsCopy = notifications;
  userInfo = [notificationsCopy userInfo];
  v10 = [userInfo mutableCopy];

  [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [notificationsCopy object];
  [notificationClient postNotification:@"_MRDeviceInfoDidChangeNotification" userInfo:v10 object:object];

  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object2 = [notificationsCopy object];

  [notificationClient2 postNotification:@"_MRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" userInfo:v10 object:object2];
}

- (void)_notificationFired:(id)fired playerPathNotifcation:(id)notifcation originNotification:(id)notification nowPlayingNotification:(id)playingNotification
{
  v31 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  notificationCopy = notification;
  playingNotificationCopy = playingNotification;
  notifcationCopy = notifcation;
  userInfo = [firedCopy userInfo];
  v14 = [userInfo objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v15 = [userInfo objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  v16 = [userInfo objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [firedCopy object];
  [notificationClient postNotification:notifcationCopy userInfo:userInfo object:object];

  if (([v14 isEqual:v16] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    object2 = [firedCopy object];
    [notificationClient2 postNotification:notificationCopy userInfo:userInfo object:object2];
  }

  if (([v14 isEqual:v15] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    notificationClient3 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    object3 = [firedCopy object];
    v23 = [notificationClient3 postNotification:playingNotificationCopy userInfo:userInfo object:object3];

    if (v23)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v24 = _MRLogForCategory(0);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v28 = playingNotificationCopy;
          v29 = 2114;
          v30 = v14;
          _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_notificationFired:(id)fired clientNotification:(id)notification originNotification:(id)originNotification nowPlayingNotification:(id)playingNotification
{
  v34 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  originNotificationCopy = originNotification;
  playingNotificationCopy = playingNotification;
  notificationCopy = notification;
  userInfo = [firedCopy userInfo];
  v14 = [userInfo objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v15 = [v14 copy];

  [v15 setPlayer:0];
  v16 = [userInfo objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  v17 = [v16 copy];

  [v17 setPlayer:0];
  v18 = [userInfo objectForKey:@"kMROriginActiveNowPlayingPlayerPathUserInfoKey"];
  v19 = [v18 copy];

  [v19 setPlayer:0];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [firedCopy object];
  [notificationClient postNotification:notificationCopy userInfo:userInfo object:object];

  if (([v15 isEqual:v19] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    object2 = [firedCopy object];
    [notificationClient2 postNotification:originNotificationCopy userInfo:userInfo object:object2];
  }

  if (([v15 isEqual:v17] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    notificationClient3 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    object3 = [firedCopy object];
    v26 = [notificationClient3 postNotification:playingNotificationCopy userInfo:userInfo object:object3];

    if (v26)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v27 = _MRLogForCategory(0);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v31 = playingNotificationCopy;
          v32 = 2114;
          v33 = v15;
          _os_log_impl(&dword_1A2860000, v27, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", buf, 0x16u);
        }
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_notificationFired:(id)fired originNotification:(id)notification nowPlayingNotification:(id)playingNotification
{
  v27 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  playingNotificationCopy = playingNotification;
  notificationCopy = notification;
  userInfo = [firedCopy userInfo];
  v12 = [userInfo objectForKey:@"kMRNowPlayingPlayerPathUserInfoKey"];
  v13 = [userInfo objectForKey:@"kMRActiveNowPlayingPlayerPathUserInfoKey"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [firedCopy object];
  [notificationClient postNotification:notificationCopy userInfo:userInfo object:object];

  origin = [v12 origin];
  origin2 = [v13 origin];
  if (([origin isEqual:origin2] & 1) != 0 || -[MRNotificationServiceClient _shouldPostNotifications](self, "_shouldPostNotifications"))
  {
    notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    object2 = [firedCopy object];
    v20 = [notificationClient2 postNotification:playingNotificationCopy userInfo:userInfo object:object2];

    if (v20)
    {
      if (MRProcessIsMediaRemoteDaemon())
      {
        v21 = _MRLogForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138543618;
          v24 = playingNotificationCopy;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Posted Active Now Playing Notification %{public}@ for path %{public}@", &v23, 0x16u);
        }
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_handleActiveOriginDidChangeNotification:(id)notification
{
  serviceClient = self->_serviceClient;
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteActiveOriginDidChangeNotification" userInfo:userInfo object:object];

  [(MRNotificationServiceClient *)self _postDefaultOriginNotifications:notificationCopy];
  [(MRNotificationServiceClient *)self _processActiveOriginInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handleOriginDidRegisterNotification:(id)notification
{
  serviceClient = self->_serviceClient;
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteOriginDidRegisterNotification" userInfo:userInfo object:object];

  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo2 = [notificationCopy userInfo];
  object2 = [notificationCopy object];
  [notificationClient2 postNotification:@"kMRMediaRemoteAvailableOriginsDidChangeNotification" userInfo:userInfo2 object:object2];

  [(MRNotificationServiceClient *)self _processOriginInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handleOriginDidUnregisterNotification:(id)notification
{
  serviceClient = self->_serviceClient;
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteOriginDidUnregisterNotification" userInfo:userInfo object:object];

  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo2 = [notificationCopy userInfo];
  object2 = [notificationCopy object];
  [notificationClient2 postNotification:@"kMRMediaRemoteAvailableOriginsDidChangeNotification" userInfo:userInfo2 object:object2];

  [(MRNotificationServiceClient *)self _processOriginInvalidationHandlersForNotification:notificationCopy];
  userInfo3 = [notificationCopy userInfo];

  v14 = MRGetOriginFromUserInfo(userInfo3);

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  [v13 removeOriginRequests:v14];
}

- (void)_handleActiveApplicationDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDidChangeNotification"];
  [(MRNotificationServiceClient *)self _postDefaultAppilicationNotifications:notificationCopy];
  [(MRNotificationServiceClient *)self _processActiveApplicationInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handleApplicationDidRegisterNotification:(id)notification
{
  serviceClient = self->_serviceClient;
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteNowPlayingApplicationDidRegister" userInfo:userInfo object:object];

  [(MRNotificationServiceClient *)self _processApplicationInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handleApplicationDidUnregisterNotification:(id)notification
{
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteNowPlayingApplicationDidUnregister" userInfo:userInfo object:object];

  [(MRNotificationServiceClient *)self _processApplicationInvalidationHandlersForNotification:notificationCopy];
  userInfo2 = [notificationCopy userInfo];
  v9 = MRGetPlayerPathFromUserInfo(userInfo2, v8);

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 existingOriginClientRequestsForPlayerPath:v9];

  [v11 removeClient:v9];
  userInfo3 = [notificationCopy userInfo];
  v13 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteApplicationHasSupportedCommandsUserInfoKey"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    userInfo4 = [notificationCopy userInfo];
    v16 = [userInfo4 mutableCopy];

    v18 = MRGetPlayerPathFromUserInfo(v16, v17);
    v19 = [v18 copy];

    v20 = [MRPlayerPath alloc];
    origin = [v19 origin];
    v22 = [MRClient alloc];
    client = [v19 client];
    bundleIdentifier = [client bundleIdentifier];
    v25 = [(MRClient *)v22 initWithBundleIdentifier:bundleIdentifier];
    v26 = [(MRPlayerPath *)v20 initWithOrigin:origin client:v25 player:0];
    MRAddPlayerPathToUserInfo(v16, v26);

    notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v28 = MRCreateDecodedUserInfo(v16);
    object2 = [notificationCopy object];
    [notificationClient2 postNotification:@"_MRMediaRemotePlayerSupportedCommandsDidChangeNotification" userInfo:v28 object:object2];
  }
}

- (void)_handleApplicationClientStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v17 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v8 BOOLValue];

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v10 existingClientRequestsForPlayerPath:v17];

  client = [v17 client];
  [v11 setClientProperties:client];

  if (bOOLValue)
  {
    v13 = 0;
  }

  else
  {
    v13 = @"kMRMediaRemoteApplicationClientStateDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy clientNotification:v13 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationClientStateDidChange"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo3 = [notificationCopy userInfo];
  object = [notificationCopy object];

  [notificationClient postNotification:@"_MRMediaRemoteApplicationDisplayNameDidChangeNotification" userInfo:userInfo3 object:object];
}

- (void)_handleApplicationDisplayNameDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteApplicationDisplayNameDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy clientNotification:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDisplayNameDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDisplayNameDidChangeNotification"];
}

- (void)_handleApplicationDidForegroundNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteApplicationDidForeground";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy clientNotification:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingApplicationDidForegroundNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingApplicationDidForegroundNotification"];
}

- (void)_handleActivePlayerDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemoteActivePlayerDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingPlayerDidChange" nowPlayingNotification:@"kMRMediaRemoteNowPlayingPlayerDidChange"];
  userInfo2 = [notificationCopy userInfo];
  object = [notificationCopy object];
  [(MRNotificationServiceClient *)self _postDefaultPlayerNotificationsWithUserInfo:userInfo2 object:object];

  [(MRNotificationServiceClient *)self _processActivePlayerInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handlePlayerDidRegisterNotification:(id)notification
{
  serviceClient = self->_serviceClient;
  notificationCopy = notification;
  notificationClient = [(MRMediaRemoteServiceClient *)serviceClient notificationClient];
  userInfo = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteNowPlayingPlayerDidRegister" userInfo:userInfo object:object];

  [(MRNotificationServiceClient *)self _processPlayerInvalidationHandlersForNotification:notificationCopy];
}

- (void)_handlePlayerDidUnregisterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];
  intValue = [v5 intValue];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 mutableCopy];

  [v8 setObject:&unk_1F1577860 forKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  if (MRMediaRemotePlaybackStateIsAdvancing(intValue))
  {
    p_serviceClient = &self->_serviceClient;
    notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    v11 = MRCreateDecodedUserInfo(v8);
    object = [notificationCopy object];
    [notificationClient postNotification:@"_MRMediaRemotePlayerPlaybackStateDidChangeNotification" userInfo:v11 object:object];

    v13 = _MRMediaRemotePlayerIsPlayingDidChangeNotification;
  }

  else
  {
    if (!intValue)
    {
      goto LABEL_6;
    }

    p_serviceClient = &self->_serviceClient;
    v13 = _MRMediaRemotePlayerPlaybackStateDidChangeNotification;
  }

  notificationClient2 = [(MRMediaRemoteServiceClient *)*p_serviceClient notificationClient];
  v15 = *v13;
  v16 = MRCreateDecodedUserInfo(v8);
  object2 = [notificationCopy object];
  [notificationClient2 postNotification:v15 userInfo:v16 object:object2];

LABEL_6:
  notificationClient3 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo3 = [notificationCopy userInfo];
  object3 = [notificationCopy object];
  [notificationClient3 postNotification:@"kMRMediaRemoteNowPlayingPlayerDidUnregister" userInfo:userInfo3 object:object3];

  [(MRNotificationServiceClient *)self _processPlayerInvalidationHandlersForNotification:notificationCopy];
  userInfo4 = [notificationCopy userInfo];
  v23 = MRGetPlayerPathFromUserInfo(userInfo4, v22);

  v24 = +[MRNowPlayingOriginClientManager sharedManager];
  v25 = [v24 existingClientRequestsForPlayerPath:v23];

  [v25 removePlayer:v23];
}

- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo(userInfo, v5);

  if ([v6 isLocal])
  {
    bOOLValue = 1;
  }

  else
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    bOOLValue = [v9 BOOLValue];
  }

  userInfo3 = [notificationCopy userInfo];
  v11 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  bOOLValue2 = [v11 BOOLValue];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 existingPlayerClientRequestsForPlayerPath:v6];

  if (v14)
  {
    subscriptionController = [v14 subscriptionController];
    [subscriptionController invalidate];

    mr_playbackQueue = [notificationCopy mr_playbackQueue];
    [v14 setPlaybackQueue:mr_playbackQueue];
  }

  if (bOOLValue)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRPlayerPlaybackQueueChangedNotification";
  }

  if (bOOLValue2)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"kMROriginNowPlayingPlaybackQueueChangedNotification";
  }

  if (bOOLValue2)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRNowPlayingPlaybackQueueChangedNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v17 originNotification:v18 nowPlayingNotification:v19];
  [(MRNotificationServiceClient *)self _maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:notificationCopy];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo4 = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:userInfo4 object:object];
}

- (void)_maybePostPlaybackQueueNowPlayingItemChangedNotificationFromPlaybackQueueChangedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    bOOLValue2 = [v8 BOOLValue];

    userInfo3 = [notificationCopy userInfo];
    v11 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
    bOOLValue3 = [v11 BOOLValue];

    if (bOOLValue2)
    {
      v13 = 0;
    }

    else
    {
      v13 = @"MRPlayerPlaybackQueueNowPlayingItemChangedNotification";
    }

    if (bOOLValue3)
    {
      v14 = 0;
    }

    else
    {
      v14 = @"MROriginNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    }

    if (bOOLValue3)
    {
      v15 = 0;
    }

    else
    {
      v15 = @"MRNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    }

    [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v13 originNotification:v14 nowPlayingNotification:v15];
  }
}

- (void)_handlePlayerContentItemsDidChangeNotification:(id)notification
{
  v33 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v7 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  v8 = +[MRNowPlayingOriginClientManager sharedManager];
  v9 = [v8 existingPlayerClientRequestsForPlayerPath:v7];

  userInfo2 = [notificationCopy userInfo];
  v11 = [userInfo2 objectForKey:@"kMRMediaRemoteUpdatedContentItemsUserInfoKey"];

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

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v12 originNotification:@"kMROriginPlaybackQueueContentItemsChangedNotification" nowPlayingNotification:@"kMRPlaybackQueueContentItemsChangedNotification", self];
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
        subscriptionController = [v9 subscriptionController];
        LOBYTE(RequestIdentifier) = [subscriptionController hasRequest:RequestIdentifier];

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
    notificationClient = [*(v26 + 8) notificationClient];
    userInfo3 = [notificationCopy userInfo];
    object = [notificationCopy object];
    [notificationClient postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:userInfo3 object:object];
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_handlePlayerContentItemArtworkDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo(userInfo, v5);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingPlayerClientRequestsForPlayerPath:v6];

  if (v8)
  {
    userInfo2 = [notificationCopy userInfo];
    v11 = MRGetContentItemsFromUserInfo(userInfo2, v10);

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

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v12 originNotification:@"kMROriginPlaybackQueueContentItemArtworkChangedNotification" nowPlayingNotification:@"kMRPlaybackQueueContentItemArtworkChangedNotification"];
  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo3 = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"_MRMediaRemotePlayerNowPlayingInfoDidChangeNotification" userInfo:userInfo3 object:object];
}

- (void)_handlePlayerSupportedCommandsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo(userInfo, v5);

  if ([v6 isLocal])
  {
    bOOLValue = 1;
  }

  else
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
    bOOLValue = [v9 BOOLValue];
  }

  userInfo3 = [notificationCopy userInfo];
  v11 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  bOOLValue2 = [v11 BOOLValue];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  v14 = [v13 existingPlayerClientRequestsForPlayerPath:v6];

  if (v14)
  {
    userInfo4 = [notificationCopy userInfo];
    v16 = [userInfo4 objectForKeyedSubscript:@"kMRSupportedCommandsUserInfoKey"];
    [v14 setSupportedCommands:v16];
  }

  if (bOOLValue)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"kMRMediaRemoteOriginSupportedCommandsDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRMediaRemoteSupportedCommandsDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v17 originNotification:v18 nowPlayingNotification:v19];
}

- (void)_handlePlayerNowPlayingInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = 0;
  }

  else
  {
    v7 = @"kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v7 originNotification:@"kMRMediaRemoteOriginNowPlayingInfoDidChangeNotification" nowPlayingNotification:@"kMRMediaRemoteNowPlayingInfoDidChangeNotification"];
}

- (void)_handlePlayerPlaybackStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v7 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v9 BOOLValue];

  userInfo3 = [notificationCopy userInfo];
  v12 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  bOOLValue2 = [v12 BOOLValue];

  userInfo4 = [notificationCopy userInfo];
  v15 = [userInfo4 objectForKeyedSubscript:@"kMRMediaRemotePlaybackStateUserInfoKey"];

  if (!v15)
  {
    [(MRNotificationServiceClient *)a2 _handlePlayerPlaybackStateDidChangeNotification:notificationCopy];
  }

  v16 = +[MRNowPlayingOriginClientManager sharedManager];
  v17 = [v16 existingPlayerClientRequestsForPlayerPath:v7];

  [v17 setPlaybackState:{objc_msgSend(v15, "intValue")}];
  if (bOOLValue)
  {
    v18 = 0;
  }

  else
  {
    v18 = @"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v19 = 0;
  }

  else
  {
    v19 = @"kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v20 = 0;
  }

  else
  {
    v20 = @"kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v18 originNotification:v19 nowPlayingNotification:v20];
}

- (void)_handlePlayerIsPlayingDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v7 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v9 BOOLValue];

  userInfo3 = [notificationCopy userInfo];
  v12 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  bOOLValue2 = [v12 BOOLValue];

  userInfo4 = [notificationCopy userInfo];
  v15 = [userInfo4 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingApplicationIsPlayingUserInfoKey"];

  if (!v15)
  {
    [(MRNotificationServiceClient *)a2 _handlePlayerIsPlayingDidChangeNotification:notificationCopy];
  }

  userInfo5 = [notificationCopy userInfo];
  v17 = [userInfo5 objectForKeyedSubscript:@"_MRMediaRemoteOriginLastPlayingTimestampUserInfoKey"];

  if (v17)
  {
    v18 = +[MRNowPlayingOriginClientManager sharedManager];
    v19 = [v18 existingOriginClientRequestsForPlayerPath:v7];

    v20 = objc_alloc(MEMORY[0x1E695DF00]);
    [v17 doubleValue];
    v21 = [v20 initWithTimeIntervalSinceReferenceDate:?];
    [v19 setLastPlayingDate:v21];
  }

  if (bOOLValue)
  {
    v22 = 0;
  }

  else
  {
    v22 = @"kMRMediaRemotePlayerIsPlayingDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v23 = 0;
  }

  else
  {
    v23 = @"kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification";
  }

  if (bOOLValue2)
  {
    v24 = 0;
  }

  else
  {
    v24 = @"kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v22 originNotification:v23 nowPlayingNotification:v24];
}

- (void)_handlePlayerStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v18 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  LODWORD(userInfo) = [v8 BOOLValue];

  userInfo3 = [notificationCopy userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitPlayerNotificationUserInfoKey"];
  bOOLValue = [v10 BOOLValue];

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v12 existingPlayerClientRequestsForPlayerPath:v18];

  player = [v18 player];
  [v13 setPlayerProperties:player];

  if (userInfo)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"kMRMediaRemotePlayerStateDidChange";
  }

  if (bOOLValue)
  {
    v16 = 0;
  }

  else
  {
    v16 = @"kMRMediaRemoteOriginNowPlayingPlayerStateDidChange";
  }

  if (bOOLValue)
  {
    v17 = 0;
  }

  else
  {
    v17 = @"kMRMediaRemoteNowPlayingPlayerStateDidChange";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy playerPathNotifcation:v15 originNotification:v16 nowPlayingNotification:v17];
}

- (void)_handleDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0 && (MRProcessIsMediaRemoteDaemon() & 1) == 0)
  {
    userInfo2 = [notificationCopy userInfo];
    v9 = MRGetPlayerPathFromUserInfo(userInfo2, v8);

    v10 = +[MRNowPlayingOriginClientManager sharedManager];
    v11 = [v10 existingOriginClientRequestsForPlayerPath:v9];

    userInfo3 = [notificationCopy userInfo];
    v14 = MRGetDeviceInfoFromUserInfo(userInfo3, v13);
    [v11 setDeviceInfo:v14];
  }

  if (bOOLValue)
  {
    v15 = 0;
  }

  else
  {
    v15 = @"kMRDeviceInfoDidChangeNotification";
  }

  [(MRNotificationServiceClient *)self _notificationFired:notificationCopy originNotification:v15 nowPlayingNotification:@"kMRActiveDeviceInfoDidChangeNotification"];
}

- (void)_handleVolumeControlCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v14 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingOriginClientRequestsForPlayerPath:v14];

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeControlCapabilitiesUserInfoKey"];
  [v8 setVolumeCapabilities:v10];

  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo3 = [notificationCopy userInfo];
  object = [notificationCopy object];

  [notificationClient postNotification:@"kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification" userInfo:userInfo3 object:object];
}

- (void)_handleVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v14 = MRGetPlayerPathFromUserInfo(userInfo, v6);

  v7 = +[MRNowPlayingOriginClientManager sharedManager];
  v8 = [v7 existingOriginClientRequestsForPlayerPath:v14];

  userInfo2 = [notificationCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"kMRMediaRemotePickedRouteVolumeUserInfoKey"];
  [v8 setVolume:v10];

  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo3 = [notificationCopy userInfo];
  object = [notificationCopy object];

  [notificationClient postNotification:@"kMRMediaRemotePickedRouteVolumeDidChangeNotification" userInfo:userInfo3 object:object];
}

- (void)_handleActiveSystemEndpointDidChangeNotification:(id)notification
{
  v26 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:@"kMRMediaRemoteActiveEndpointTypeUserInfoKey"];
  intValue = [v8 intValue];

  userInfo3 = [notificationCopy userInfo];
  v11 = [userInfo3 objectForKeyedSubscript:@"_MRMediaRemoteIsRestoringClientStateUserInfoKey"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = _MRLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      active = MRMediaRemoteActiveEndpointTypeCopyDescription(intValue);
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
  [v17 updateActiveSystemEndpointOutputDeviceUID:v6 forType:intValue reason:v16];

  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  userInfo4 = [notificationCopy userInfo];
  object = [notificationCopy object];
  [notificationClient postNotification:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" userInfo:userInfo4 object:object];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_handleActiveGroupSessionInfoDidChangeNotification:(id)notification
{
  v16[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"MRActiveGroupSessionInfoUserInfoKey"];

  v7 = +[MRGroupSessionRequestManager sharedManager];
  [v7 updateGroupSessionInfo:v6];

  userInfo2 = [notificationCopy userInfo];
  v9 = [userInfo2 mutableCopy];

  notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  object = [notificationCopy object];

  [notificationClient postNotification:@"MRActiveGroupSessionInfoDidChangeNotification" userInfo:v9 object:object];
  notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
  v15 = @"kMRMediaRemoteActiveEndpointTypeUserInfoKey";
  v16[0] = &unk_1F1577878;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [notificationClient2 postNotification:@"kMRMediaRemoteActiveSystemEndpointDidChangeNotification" userInfo:v13 object:0];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleLocalGroupSessionEligibilityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"MRGroupSessionEligibilityStatusUserInfoKey"];

  v6 = +[MRGroupSessionRequestManager sharedManager];
  v7 = [v6 updateGroupSessionEligibility:v5];

  if (v7)
  {
    notificationClient = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
    userInfo2 = [notificationCopy userInfo];
    [notificationClient postNotification:@"MRGroupSessionEligibilityDidChangeNotification" userInfo:userInfo2 object:0];

    v10 = +[MRUserSettings currentSettings];
    groupSessionDelayedInitializationEnabled = [v10 groupSessionDelayedInitializationEnabled];

    if (groupSessionDelayedInitializationEnabled)
    {
      notificationClient2 = [(MRMediaRemoteServiceClient *)self->_serviceClient notificationClient];
      userInfo3 = [notificationCopy userInfo];
      [notificationClient2 postNotification:@"MRActiveGroupSessionInfoDidChangeNotification" userInfo:userInfo3 object:0];
    }
  }
}

- (void)_handleLocalUserIdentityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"_MRUserIdentityDataUserInfoKey"];

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