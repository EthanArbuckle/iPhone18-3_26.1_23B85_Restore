@interface MRDOriginForwarder
+ (id)localizedPlayerIDFromPlayerPath:(id)path;
+ (void)waitUntilForwardingOperationsHaveFinished:(id)finished;
- (MRDOriginForwarder)initWithOrigin:(id)origin destinationOrigin:(id)destinationOrigin;
- (id)createDelocalizedPlayerPath:(id)path;
- (id)createLocalizedPlayerPath:(id)path;
- (id)debugDescription;
- (void)_handleActiveApplicationDidChangeNotification:(id)notification;
- (void)_handleActivePlayerDidChangeNotification:(id)notification;
- (void)_handleApplicationClientStateDidChangeNotification:(id)notification;
- (void)_handleApplicationDidRegisterNotification:(id)notification;
- (void)_handleApplicationDidUnregisterNotification:(id)notification;
- (void)_handleParticipantsDidChangeNotification:(id)notification;
- (void)_handlePlaybackStateDidChangeNotification:(id)notification;
- (void)_handlePlayerDidRegisterCanBeNowPlayingNotification:(id)notification;
- (void)_handlePlayerDidRegisterNotification:(id)notification;
- (void)_handlePlayerDidUnregisterCanBeNowPlayingNotification:(id)notification;
- (void)_handlePlayerDidUnregisterNotification:(id)notification;
- (void)_handlePlayerPlaybackQueueCapabilitiesDidChangeNotification:(id)notification;
- (void)_handlePlayerPlaybackQueueContentItemArtworkDidChangeNotification:(id)notification;
- (void)_handlePlayerPlaybackQueueContentItemsDidChangeNotification:(id)notification;
- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)notification;
- (void)_handlePlayerStateDidChangeNotification:(id)notification;
- (void)_handleSupportedCommandsDidChangeNotification:(id)notification;
- (void)_handleVolumeCapabilitiesDidChangeNotification:(id)notification;
- (void)cleanupForwarding;
- (void)dealloc;
- (void)forwardParticipantDataSourceIfNeeded;
- (void)initializeDestinationOriginWithSourceOriginData;
- (void)registerDestinationOriginCallbacksToRelayToSourceOrigin;
- (void)registerSourceOriginNotifications;
@end

@implementation MRDOriginForwarder

- (MRDOriginForwarder)initWithOrigin:(id)origin destinationOrigin:(id)destinationOrigin
{
  originCopy = origin;
  destinationOriginCopy = destinationOrigin;
  v16.receiver = self;
  v16.super_class = MRDOriginForwarder;
  v9 = [(MRDOriginForwarder *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceOrigin, origin);
    objc_storeStrong(&v10->_destinationOrigin, destinationOrigin);
    v11 = +[MRClient localClient];
    destinationClient = v10->_destinationClient;
    v10->_destinationClient = v11;

    [(MRDOriginForwarder *)v10 registerSourceOriginNotifications];
    [(MRDOriginForwarder *)v10 registerDestinationOriginCallbacksToRelayToSourceOrigin];
    [(MRDOriginForwarder *)v10 initializeDestinationOriginWithSourceOriginData];
    v13 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v13 nowPlayingServer];
    [nowPlayingServer registerOriginForwarder:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(MRDOriginForwarder *)self cleanupForwarding];
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  [nowPlayingServer unregisterOriginForwarder:self];

  v5.receiver = self;
  v5.super_class = MRDOriginForwarder;
  [(MRDOriginForwarder *)&v5 dealloc];
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
  v6 = [NSString stringWithFormat:@"<%@, %p: sourceOrigin: %@ - destinationOrigin: %@>", v3, self, sourceOrigin, destinationOrigin];

  return v6;
}

- (void)registerSourceOriginNotifications
{
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleVolumeCapabilitiesDidChangeNotification:" name:kMRAVEndpointVolumeControlCapabilitiesDidChangeNotification object:0];
  [v5 addObserver:self selector:"_handleApplicationDidRegisterNotification:" name:kMRMediaRemoteNowPlayingApplicationDidRegister object:0];
  [v5 addObserver:self selector:"_handleApplicationDidUnregisterNotification:" name:kMRMediaRemoteNowPlayingApplicationDidUnregister object:0];
  [v5 addObserver:self selector:"_handleApplicationClientStateDidChangeNotification:" name:kMRMediaRemoteApplicationClientStateDidChange object:0];
  v3 = +[MRUserSettings currentSettings];
  computeNowPlayingApplication = [v3 computeNowPlayingApplication];

  if ((computeNowPlayingApplication & 1) == 0)
  {
    [v5 addObserver:self selector:"_handleActiveApplicationDidChangeNotification:" name:kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification object:0];
  }

  [v5 addObserver:self selector:"_handlePlayerDidRegisterNotification:" name:kMRMediaRemoteNowPlayingPlayerDidRegister object:0];
  [v5 addObserver:self selector:"_handlePlayerDidUnregisterNotification:" name:kMRMediaRemoteNowPlayingPlayerDidUnregister object:0];
  [v5 addObserver:self selector:"_handlePlayerDidRegisterCanBeNowPlayingNotification:" name:kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying object:0];
  [v5 addObserver:self selector:"_handlePlayerDidUnregisterCanBeNowPlayingNotification:" name:kMRMediaRemoteNowPlayingPlayerDidUnregisterCanBeNowPlaying object:0];
  [v5 addObserver:self selector:"_handlePlayerStateDidChangeNotification:" name:kMRMediaRemotePlayerStateDidChange object:0];
  [v5 addObserver:self selector:"_handleActivePlayerDidChangeNotification:" name:kMRMediaRemoteActivePlayerDidChange object:0];
  [v5 addObserver:self selector:"_handlePlaybackStateDidChangeNotification:" name:kMRMediaRemotePlayerPlaybackStateDidChangeNotification object:0];
  [v5 addObserver:self selector:"_handleSupportedCommandsDidChangeNotification:" name:kMRMediaRemotePlayerSupportedCommandsDidChangeNotification object:0];
  [v5 addObserver:self selector:"_handlePlayerPlaybackQueueCapabilitiesDidChangeNotification:" name:kMRPlaybackQueueCapabilitiesChangedNotification object:0];
  [v5 addObserver:self selector:"_handlePlayerPlaybackQueueDidChangeNotification:" name:kMRPlayerPlaybackQueueChangedNotification object:0];
  [v5 addObserver:self selector:"_handlePlayerPlaybackQueueContentItemsDidChangeNotification:" name:kMRPlayerPlaybackQueueContentItemsChangedNotification object:0];
  [v5 addObserver:self selector:"_handlePlayerPlaybackQueueContentItemArtworkDidChangeNotification:" name:kMRPlayerPlaybackQueueContentItemArtworkChangedNotification object:0];
  [v5 addObserver:self selector:"_handleParticipantsDidChangeNotification:" name:MRPlaybackQueueParticipantsDidChangeForPlayerNotification object:0];
}

- (void)registerDestinationOriginCallbacksToRelayToSourceOrigin
{
  objc_initWeak(location, self);
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
  v5 = [v3 originClientForOrigin:destinationOrigin];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100082A9C;
  v20[3] = &unk_1004B8CC8;
  objc_copyWeak(&v21, location);
  [v5 setCommandCallback:v20];
  destinationOrigin2 = [(MRDOriginForwarder *)self destinationOrigin];
  v18[1] = _NSConcreteStackBlock;
  v18[2] = 3221225472;
  v18[3] = sub_100082D0C;
  v18[4] = &unk_1004B8D18;
  objc_copyWeak(&v19, location);
  MRMediaRemotePlaybackQueueDataSourceSetRequestCallback();

  destinationOrigin3 = [(MRDOriginForwarder *)self destinationOrigin];
  v17[1] = _NSConcreteStackBlock;
  v17[2] = 3221225472;
  v17[3] = sub_100082EDC;
  v17[4] = &unk_1004B8D68;
  objc_copyWeak(v18, location);
  MRMediaRemotePlaybackSessionSetRequestCallbackForOrigin();

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000830C8;
  v16[3] = &unk_1004B8DB8;
  objc_copyWeak(v17, location);
  [v5 setPlaybackSessionMigrateRequestCallback:v16];
  destinationOrigin4 = [(MRDOriginForwarder *)self destinationOrigin];
  v14[1] = _NSConcreteStackBlock;
  v14[2] = 3221225472;
  v14[3] = sub_1000832C8;
  v14[4] = &unk_1004B8E08;
  objc_copyWeak(&v15, location);
  MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin();

  destinationOrigin5 = [(MRDOriginForwarder *)self destinationOrigin];
  v13[1] = _NSConcreteStackBlock;
  v13[2] = 3221225472;
  v13[3] = sub_100083408;
  v13[4] = &unk_1004B8E30;
  objc_copyWeak(v14, location);
  MRMediaRemotePlaybackSessionSetMigrateEndCallbackForOrigin();

  destinationOrigin6 = [(MRDOriginForwarder *)self destinationOrigin];
  v12[1] = _NSConcreteStackBlock;
  v12[2] = 3221225472;
  v12[3] = sub_100083538;
  v12[4] = &unk_1004B8E58;
  objc_copyWeak(v13, location);
  MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin();

  destinationOrigin7 = [(MRDOriginForwarder *)self destinationOrigin];
  objc_copyWeak(v12, location);
  MRMediaRemotePlaybackSessionSetMigratePostCallbackForOrigin();

  objc_destroyWeak(v12);
  objc_destroyWeak(v13);
  objc_destroyWeak(v14);
  objc_destroyWeak(&v15);
  objc_destroyWeak(v17);
  objc_destroyWeak(v18);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);

  objc_destroyWeak(location);
}

- (void)initializeDestinationOriginWithSourceOriginData
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ Initializing OriginForwarder", buf, 0xCu);
  }

  v4 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v4 nowPlayingServer];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v7 = [nowPlayingServer originClientForOrigin:sourceOrigin];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v7 nowPlayingClients];
  v49 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v49)
  {
    v47 = *v57;
    v48 = v7;
    do
    {
      v8 = 0;
      do
      {
        if (*v57 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v8;
        v9 = *(*(&v56 + 1) + 8 * v8);
        client = [v9 client];
        client2 = [v9 client];
        destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
        MRMediaRemoteSyncClientProperties();

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = v9;
        playerClients = [v9 playerClients];
        v14 = [playerClients countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v53;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v53 != v16)
              {
                objc_enumerationMutation(playerClients);
              }

              v18 = *(*(&v52 + 1) + 8 * i);
              playerPath = [v18 playerPath];
              v20 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:playerPath];
              player = [v20 player];
              hasAuxiliaryProperties = [player hasAuxiliaryProperties];

              if (hasAuxiliaryProperties)
              {
                MRMediaRemoteSetPlayerProperties();
              }

              if ([v18 playbackState])
              {
                [v18 playbackState];
                MRMediaRemoteSetPlaybackStateForPlayer();
              }

              supportedRemoteControlCommands = [v18 supportedRemoteControlCommands];
              if (supportedRemoteControlCommands)
              {
                MRMediaRemoteSetSupportedCommandsForPlayer();
              }

              playbackQueue = [v18 playbackQueue];
              if (playbackQueue)
              {
                MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer();
              }

              if ([v18 playbackQueueCapabilities])
              {
                MRMediaRemoteSetPlaybackQueueCapabilities();
              }

              if ([v18 canBeNowPlayingPlayer])
              {
                MRMediaRemoteSetCanBeNowPlayingForPlayer();
              }
            }

            v15 = [playerClients countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v15);
        }

        activePlayerClient = [v50 activePlayerClient];
        playerPath2 = [activePlayerClient playerPath];
        v27 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:playerPath2];

        client3 = [v50 client];
        bundleIdentifier = [client3 bundleIdentifier];
        v7 = v48;
        v30 = [v48 defaultSupportedCommandsForClient:bundleIdentifier];

        if (v30)
        {
          client4 = [v27 client];
          destinationOrigin2 = [(MRDOriginForwarder *)self destinationOrigin];
          MRMediaRemoteSetDefaultSupportedCommandsForClient();
        }

        client5 = [v27 client];
        hasAuxiliaryProperties2 = [client5 hasAuxiliaryProperties];

        if (hasAuxiliaryProperties2)
        {
          client6 = [v27 client];
          origin = [v27 origin];
          MRMediaRemoteSetClientProperties();
        }

        player2 = [v27 player];

        if (player2)
        {
          MRMediaRemoteSetNowPlayingPlayer();
        }

        v8 = v51 + 1;
      }

      while ((v51 + 1) != v49);
      v49 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v49);
  }

  activePlayerPath = [v7 activePlayerPath];
  v39 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:activePlayerPath];

  if ([v7 volumeControlCapabilities])
  {
    [v7 volumeControlCapabilities];
    origin2 = [v39 origin];
    MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
  }

  v41 = +[MRUserSettings currentSettings];
  computeNowPlayingApplication = [v41 computeNowPlayingApplication];

  if ((computeNowPlayingApplication & 1) == 0)
  {
    client7 = [v39 client];
    destinationOrigin3 = [(MRDOriginForwarder *)self destinationOrigin];
    MRMediaRemoteSetNowPlayingClientForOrigin();
  }

  [(MRDOriginForwarder *)self forwardParticipantDataSourceIfNeeded];
  v45 = _MRLogForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ End Initializing OriginForwarder", buf, 0xCu);
  }
}

- (void)cleanupForwarding
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
  v6 = [nowPlayingServer originClientForOrigin:destinationOrigin];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v6;
  obj = [v6 nowPlayingClients];
  v21 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v21)
  {
    v20 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = v7;
        v8 = *(*(&v27 + 1) + 8 * v7);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        playerClients = [v8 playerClients];
        v10 = [playerClients countByEnumeratingWithState:&v23 objects:v35 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(playerClients);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              participantDataSource = [v14 participantDataSource];
              if (participantDataSource)
              {
                v16 = _MRLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  playerPath = [v14 playerPath];
                  *buf = 138412546;
                  v32 = participantDataSource;
                  v33 = 2112;
                  v34 = playerPath;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] <participantDataSource> Removing participantDataSource instance %@ on playerPath: %@", buf, 0x16u);
                }

                [v14 setParticipantDataSource:0];
              }
            }

            v11 = [playerClients countByEnumeratingWithState:&v23 objects:v35 count:16];
          }

          while (v11);
        }

        v7 = v22 + 1;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v21);
  }
}

- (void)forwardParticipantDataSourceIfNeeded
{
  v3 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v3 nowPlayingServer];
  daemonClient = [v3 daemonClient];
  if (daemonClient)
  {
    v26 = v3;
    v4 = +[MRDMediaRemoteServer server];
    nowPlayingServer2 = [v4 nowPlayingServer];
    sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
    v7 = [nowPlayingServer2 originClientForOrigin:sourceOrigin];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v7;
    obj = [v7 nowPlayingClients];
    v29 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (!v29)
    {
      goto LABEL_27;
    }

    v28 = *v41;
    v31 = MRPlaybackQueueParticipantsDidChangeForPlayerNotification;
    selfCopy = self;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v8;
        v9 = *(*(&v40 + 1) + 8 * v8);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        playerClients = [v9 playerClients];
        v10 = [playerClients countByEnumeratingWithState:&v36 objects:v50 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v37;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v37 != v12)
              {
                objc_enumerationMutation(playerClients);
              }

              v14 = *(*(&v36 + 1) + 8 * i);
              participantDataSource = [v14 participantDataSource];
              if (participantDataSource)
              {
                playerPath = [v14 playerPath];
                v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:playerPath];
                v18 = [nowPlayingServer queryPlayerPath:v17 forClient:daemonClient];
                playerClient = [v18 playerClient];
                v20 = playerClient;
                if (playerClient)
                {
                  participantDataSource2 = [playerClient participantDataSource];

                  if (participantDataSource2 != participantDataSource)
                  {
                    v22 = _MRLogForCategory();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v45 = participantDataSource;
                      v46 = 2112;
                      v47 = playerPath;
                      v48 = 2112;
                      v49 = v17;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] <participantDataSource> Installing instance %@ from playerPath: %@ on playerPath: %@", buf, 0x20u);
                    }

                    [v20 setParticipantDataSource:participantDataSource];
                    v23 = objc_alloc_init(NSMutableDictionary);
                    MRAddPlayerPathToUserInfo();
                    v24 = +[MRDMediaRemoteServer server];
                    [v24 postClientNotificationNamed:v31 userInfo:v23];
LABEL_20:

                    self = selfCopy;
                    goto LABEL_21;
                  }
                }

                else
                {
                  v23 = _MRLogForCategory();
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    [v18 error];
                    v24 = MRMediaRemoteErrorCopyDescription();
                    *buf = 138412546;
                    v45 = v17;
                    v46 = 2112;
                    v47 = v24;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] <participantDataSource> Player client not found for %@, because %@", buf, 0x16u);
                    goto LABEL_20;
                  }

LABEL_21:
                }
              }
            }

            v11 = [playerClients countByEnumeratingWithState:&v36 objects:v50 count:16];
          }

          while (v11);
        }

        v8 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      if (!v29)
      {
LABEL_27:

        v3 = v26;
        break;
      }
    }
  }
}

- (void)_handleVolumeCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v18 = 138412546;
        selfCopy = self;
        v20 = 2112;
        v21 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v18, 0x16u);
      }
    }

    userInfo2 = [notificationCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:kMRAVEndpointVolumeControlCapabilitiesUserInfoKey];

    [v15 intValue];
    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    origin2 = [v16 origin];
    MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
  }
}

- (void)_handleApplicationDidRegisterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v23 = 138412546;
        selfCopy = self;
        v25 = 2112;
        v26 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v23, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    playerPath = [v16 playerPath];
    client = [playerPath client];

    if (client)
    {
      playerPath2 = [v16 playerPath];
      client2 = [playerPath2 client];
      origin2 = [v17 origin];
      MRMediaRemoteSetClientProperties();
    }
  }
}

- (void)_handleApplicationDidUnregisterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    client = [v14 client];
    origin2 = [v14 origin];
    MRMediaRemoteRemoveClientForOrigin();
  }
}

- (void)_handleApplicationClientStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v22 = 138412546;
        selfCopy = self;
        v24 = 2112;
        v25 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v22, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    playerPath = [v16 playerPath];
    v18 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:playerPath];

    client = [v18 client];

    if (client)
    {
      client2 = [v18 client];
      origin2 = [v18 origin];
      MRMediaRemoteSetClientProperties();
    }
  }
}

- (void)_handleActiveApplicationDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    client = [v14 client];
    destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
    MRMediaRemoteSetNowPlayingClientForOrigin();
  }
}

- (void)_handlePlayerDidRegisterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v14 = 138412546;
        selfCopy = self;
        v16 = 2112;
        v17 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v14, 0x16u);
      }
    }

    [(MRDOriginForwarder *)self forwardParticipantDataSourceIfNeeded];
  }
}

- (void)_handlePlayerDidUnregisterNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v15 = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteRemovePlayer();
  }
}

- (void)_handlePlayerDidRegisterCanBeNowPlayingNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v15 = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetCanBeNowPlayingForPlayer();
  }
}

- (void)_handlePlayerDidUnregisterCanBeNowPlayingNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v15 = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetCanBeNowPlayingForPlayer();
  }
}

- (void)_handlePlayerStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v20 = 138412546;
        selfCopy = self;
        v22 = 2112;
        v23 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    playerPath = [v16 playerPath];
    v18 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:playerPath];

    player = [v18 player];

    if (player)
    {
      MRMediaRemoteSetPlayerProperties();
    }
  }
}

- (void)_handleActivePlayerDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v15 = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetNowPlayingPlayer();
  }
}

- (void)_handlePlaybackStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    userInfo2 = [notificationCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:kMRMediaRemotePlaybackStateUserInfoKey];
    [v15 intValue];

    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetPlaybackStateForPlayer();
  }
}

- (void)_handleSupportedCommandsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v20 = 138412546;
        selfCopy = self;
        v22 = 2112;
        v23 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    playerClient = [v16 playerClient];
    supportedRemoteControlCommands = [playerClient supportedRemoteControlCommands];
    MRMediaRemoteSetSupportedCommandsForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v19 = 138412546;
        selfCopy = self;
        v21 = 2112;
        v22 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v19, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    playerClient = [v16 playerClient];
    [playerClient playbackQueueCapabilities];
    MRMediaRemoteSetPlaybackQueueCapabilities();
  }
}

- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v20 = 138412546;
        selfCopy = self;
        v22 = 2112;
        v23 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v14 nowPlayingServer];
    v16 = [nowPlayingServer queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    playerClient = [v16 playerClient];
    playbackQueue = [playerClient playbackQueue];
    MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueContentItemsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    userInfo2 = [notificationCopy userInfo];
    v15 = MRGetContentItemsFromUserInfo();

    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueContentItemArtworkDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v18 = 138412546;
        selfCopy = self;
        v20 = 2112;
        v21 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v18, 0x16u);
      }
    }

    userInfo2 = [notificationCopy userInfo];
    v15 = MRGetContentItemsFromUserInfo();

    v16 = objc_alloc_init(MRPlaybackQueueRequest);
    [v16 setArtworkHeight:1.0];
    [v16 setArtworkWidth:1.0];
    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer();
  }
}

- (void)_handleParticipantsDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  origin = [v6 origin];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [origin isEqual:sourceOrigin];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    verboseOriginForwarderLogging = [v10 verboseOriginForwarderLogging];

    if (verboseOriginForwarderLogging)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        name = [notificationCopy name];
        v17 = 138412546;
        selfCopy = self;
        v19 = 2112;
        v20 = name;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v15 = objc_alloc_init(NSMutableDictionary);
    MRAddPlayerPathToUserInfo();
    v16 = +[MRDMediaRemoteServer server];
    [v16 postClientNotificationNamed:MRPlaybackQueueParticipantsDidChangeForPlayerNotification userInfo:v15];
  }
}

- (id)createDelocalizedPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [MRPlayerPath alloc];
  sourceOrigin = [(MRDOriginForwarder *)self sourceOrigin];
  client = [pathCopy client];
  player = [pathCopy player];

  v9 = [v5 initWithOrigin:sourceOrigin client:client player:player];

  return v9;
}

- (id)createLocalizedPlayerPath:(id)path
{
  pathCopy = path;
  v5 = [MRPlayerPath alloc];
  destinationOrigin = [(MRDOriginForwarder *)self destinationOrigin];
  client = [pathCopy client];
  player = [pathCopy player];

  v9 = [v5 initWithOrigin:destinationOrigin client:client player:player];

  return v9;
}

+ (id)localizedPlayerIDFromPlayerPath:(id)path
{
  pathCopy = path;
  v4 = [NSString alloc];
  client = [pathCopy client];
  bundleIdentifier = [client bundleIdentifier];
  player = [pathCopy player];
  identifier = [player identifier];
  client2 = [pathCopy client];

  v10 = [v4 initWithFormat:@"%@-%@-%d", bundleIdentifier, identifier, objc_msgSend(client2, "processIdentifier")];

  return v10;
}

+ (void)waitUntilForwardingOperationsHaveFinished:(id)finished
{
  finishedCopy = finished;
  v4 = +[MRDMediaRemoteServer server];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000867C8;
  v6[3] = &unk_1004B8EF8;
  v7 = finishedCopy;
  v5 = finishedCopy;
  [v4 postClientNotificationNamed:@"placeholder" predicate:v6];
}

@end