@interface MRDOriginForwarder
+ (id)localizedPlayerIDFromPlayerPath:(id)a3;
+ (void)waitUntilForwardingOperationsHaveFinished:(id)a3;
- (MRDOriginForwarder)initWithOrigin:(id)a3 destinationOrigin:(id)a4;
- (id)createDelocalizedPlayerPath:(id)a3;
- (id)createLocalizedPlayerPath:(id)a3;
- (id)debugDescription;
- (void)_handleActiveApplicationDidChangeNotification:(id)a3;
- (void)_handleActivePlayerDidChangeNotification:(id)a3;
- (void)_handleApplicationClientStateDidChangeNotification:(id)a3;
- (void)_handleApplicationDidRegisterNotification:(id)a3;
- (void)_handleApplicationDidUnregisterNotification:(id)a3;
- (void)_handleParticipantsDidChangeNotification:(id)a3;
- (void)_handlePlaybackStateDidChangeNotification:(id)a3;
- (void)_handlePlayerDidRegisterCanBeNowPlayingNotification:(id)a3;
- (void)_handlePlayerDidRegisterNotification:(id)a3;
- (void)_handlePlayerDidUnregisterCanBeNowPlayingNotification:(id)a3;
- (void)_handlePlayerDidUnregisterNotification:(id)a3;
- (void)_handlePlayerPlaybackQueueCapabilitiesDidChangeNotification:(id)a3;
- (void)_handlePlayerPlaybackQueueContentItemArtworkDidChangeNotification:(id)a3;
- (void)_handlePlayerPlaybackQueueContentItemsDidChangeNotification:(id)a3;
- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)a3;
- (void)_handlePlayerStateDidChangeNotification:(id)a3;
- (void)_handleSupportedCommandsDidChangeNotification:(id)a3;
- (void)_handleVolumeCapabilitiesDidChangeNotification:(id)a3;
- (void)cleanupForwarding;
- (void)dealloc;
- (void)forwardParticipantDataSourceIfNeeded;
- (void)initializeDestinationOriginWithSourceOriginData;
- (void)registerDestinationOriginCallbacksToRelayToSourceOrigin;
- (void)registerSourceOriginNotifications;
@end

@implementation MRDOriginForwarder

- (MRDOriginForwarder)initWithOrigin:(id)a3 destinationOrigin:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = MRDOriginForwarder;
  v9 = [(MRDOriginForwarder *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceOrigin, a3);
    objc_storeStrong(&v10->_destinationOrigin, a4);
    v11 = +[MRClient localClient];
    destinationClient = v10->_destinationClient;
    v10->_destinationClient = v11;

    [(MRDOriginForwarder *)v10 registerSourceOriginNotifications];
    [(MRDOriginForwarder *)v10 registerDestinationOriginCallbacksToRelayToSourceOrigin];
    [(MRDOriginForwarder *)v10 initializeDestinationOriginWithSourceOriginData];
    v13 = +[MRDMediaRemoteServer server];
    v14 = [v13 nowPlayingServer];
    [v14 registerOriginForwarder:v10];
  }

  return v10;
}

- (void)dealloc
{
  [(MRDOriginForwarder *)self cleanupForwarding];
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  [v4 unregisterOriginForwarder:self];

  v5.receiver = self;
  v5.super_class = MRDOriginForwarder;
  [(MRDOriginForwarder *)&v5 dealloc];
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(MRDOriginForwarder *)self sourceOrigin];
  v5 = [(MRDOriginForwarder *)self destinationOrigin];
  v6 = [NSString stringWithFormat:@"<%@, %p: sourceOrigin: %@ - destinationOrigin: %@>", v3, self, v4, v5];

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
  v4 = [v3 computeNowPlayingApplication];

  if ((v4 & 1) == 0)
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
  v4 = [(MRDOriginForwarder *)self destinationOrigin];
  v5 = [v3 originClientForOrigin:v4];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100082A9C;
  v20[3] = &unk_1004B8CC8;
  objc_copyWeak(&v21, location);
  [v5 setCommandCallback:v20];
  v6 = [(MRDOriginForwarder *)self destinationOrigin];
  v18[1] = _NSConcreteStackBlock;
  v18[2] = 3221225472;
  v18[3] = sub_100082D0C;
  v18[4] = &unk_1004B8D18;
  objc_copyWeak(&v19, location);
  MRMediaRemotePlaybackQueueDataSourceSetRequestCallback();

  v7 = [(MRDOriginForwarder *)self destinationOrigin];
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
  v8 = [(MRDOriginForwarder *)self destinationOrigin];
  v14[1] = _NSConcreteStackBlock;
  v14[2] = 3221225472;
  v14[3] = sub_1000832C8;
  v14[4] = &unk_1004B8E08;
  objc_copyWeak(&v15, location);
  MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin();

  v9 = [(MRDOriginForwarder *)self destinationOrigin];
  v13[1] = _NSConcreteStackBlock;
  v13[2] = 3221225472;
  v13[3] = sub_100083408;
  v13[4] = &unk_1004B8E30;
  objc_copyWeak(v14, location);
  MRMediaRemotePlaybackSessionSetMigrateEndCallbackForOrigin();

  v10 = [(MRDOriginForwarder *)self destinationOrigin];
  v12[1] = _NSConcreteStackBlock;
  v12[2] = 3221225472;
  v12[3] = sub_100083538;
  v12[4] = &unk_1004B8E58;
  objc_copyWeak(v13, location);
  MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin();

  v11 = [(MRDOriginForwarder *)self destinationOrigin];
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
    v63 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ Initializing OriginForwarder", buf, 0xCu);
  }

  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [(MRDOriginForwarder *)self sourceOrigin];
  v7 = [v5 originClientForOrigin:v6];

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
        v10 = [v9 client];
        v11 = [v9 client];
        v12 = [(MRDOriginForwarder *)self destinationOrigin];
        MRMediaRemoteSyncClientProperties();

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = v9;
        v13 = [v9 playerClients];
        v14 = [v13 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v52 + 1) + 8 * i);
              v19 = [v18 playerPath];
              v20 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v19];
              v21 = [v20 player];
              v22 = [v21 hasAuxiliaryProperties];

              if (v22)
              {
                MRMediaRemoteSetPlayerProperties();
              }

              if ([v18 playbackState])
              {
                [v18 playbackState];
                MRMediaRemoteSetPlaybackStateForPlayer();
              }

              v23 = [v18 supportedRemoteControlCommands];
              if (v23)
              {
                MRMediaRemoteSetSupportedCommandsForPlayer();
              }

              v24 = [v18 playbackQueue];
              if (v24)
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

            v15 = [v13 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v15);
        }

        v25 = [v50 activePlayerClient];
        v26 = [v25 playerPath];
        v27 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v26];

        v28 = [v50 client];
        v29 = [v28 bundleIdentifier];
        v7 = v48;
        v30 = [v48 defaultSupportedCommandsForClient:v29];

        if (v30)
        {
          v31 = [v27 client];
          v32 = [(MRDOriginForwarder *)self destinationOrigin];
          MRMediaRemoteSetDefaultSupportedCommandsForClient();
        }

        v33 = [v27 client];
        v34 = [v33 hasAuxiliaryProperties];

        if (v34)
        {
          v35 = [v27 client];
          v36 = [v27 origin];
          MRMediaRemoteSetClientProperties();
        }

        v37 = [v27 player];

        if (v37)
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

  v38 = [v7 activePlayerPath];
  v39 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v38];

  if ([v7 volumeControlCapabilities])
  {
    [v7 volumeControlCapabilities];
    v40 = [v39 origin];
    MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
  }

  v41 = +[MRUserSettings currentSettings];
  v42 = [v41 computeNowPlayingApplication];

  if ((v42 & 1) == 0)
  {
    v43 = [v39 client];
    v44 = [(MRDOriginForwarder *)self destinationOrigin];
    MRMediaRemoteSetNowPlayingClientForOrigin();
  }

  [(MRDOriginForwarder *)self forwardParticipantDataSourceIfNeeded];
  v45 = _MRLogForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = self;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ End Initializing OriginForwarder", buf, 0xCu);
  }
}

- (void)cleanupForwarding
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  v5 = [(MRDOriginForwarder *)self destinationOrigin];
  v6 = [v4 originClientForOrigin:v5];

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
        v9 = [v8 playerClients];
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
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
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * i);
              v15 = [v14 participantDataSource];
              if (v15)
              {
                v16 = _MRLogForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  v17 = [v14 playerPath];
                  *buf = 138412546;
                  v32 = v15;
                  v33 = 2112;
                  v34 = v17;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] <participantDataSource> Removing participantDataSource instance %@ on playerPath: %@", buf, 0x16u);
                }

                [v14 setParticipantDataSource:0];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v35 count:16];
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
  v35 = [v3 nowPlayingServer];
  v34 = [v3 daemonClient];
  if (v34)
  {
    v26 = v3;
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 nowPlayingServer];
    v6 = [(MRDOriginForwarder *)self sourceOrigin];
    v7 = [v5 originClientForOrigin:v6];

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
    v32 = self;
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
        v33 = [v9 playerClients];
        v10 = [v33 countByEnumeratingWithState:&v36 objects:v50 count:16];
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
                objc_enumerationMutation(v33);
              }

              v14 = *(*(&v36 + 1) + 8 * i);
              v15 = [v14 participantDataSource];
              if (v15)
              {
                v16 = [v14 playerPath];
                v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v16];
                v18 = [v35 queryPlayerPath:v17 forClient:v34];
                v19 = [v18 playerClient];
                v20 = v19;
                if (v19)
                {
                  v21 = [v19 participantDataSource];

                  if (v21 != v15)
                  {
                    v22 = _MRLogForCategory();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v45 = v15;
                      v46 = 2112;
                      v47 = v16;
                      v48 = 2112;
                      v49 = v17;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] <participantDataSource> Installing instance %@ from playerPath: %@ on playerPath: %@", buf, 0x20u);
                    }

                    [v20 setParticipantDataSource:v15];
                    v23 = objc_alloc_init(NSMutableDictionary);
                    MRAddPlayerPathToUserInfo();
                    v24 = +[MRDMediaRemoteServer server];
                    [v24 postClientNotificationNamed:v31 userInfo:v23];
LABEL_20:

                    self = v32;
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

            v11 = [v33 countByEnumeratingWithState:&v36 objects:v50 count:16];
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

- (void)_handleVolumeCapabilitiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v18, 0x16u);
      }
    }

    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:kMRAVEndpointVolumeControlCapabilitiesUserInfoKey];

    [v15 intValue];
    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v17 = [v16 origin];
    MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
  }
}

- (void)_handleApplicationDidRegisterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v23 = 138412546;
        v24 = self;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v23, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v18 = [v16 playerPath];
    v19 = [v18 client];

    if (v19)
    {
      v20 = [v16 playerPath];
      v21 = [v20 client];
      v22 = [v17 origin];
      MRMediaRemoteSetClientProperties();
    }
  }
}

- (void)_handleApplicationDidUnregisterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v15 = [v14 client];
    v16 = [v14 origin];
    MRMediaRemoteRemoveClientForOrigin();
  }
}

- (void)_handleApplicationClientStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v22 = 138412546;
        v23 = self;
        v24 = 2112;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v22, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [v16 playerPath];
    v18 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v17];

    v19 = [v18 client];

    if (v19)
    {
      v20 = [v18 client];
      v21 = [v18 origin];
      MRMediaRemoteSetClientProperties();
    }
  }
}

- (void)_handleActiveApplicationDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v15 = [v14 client];
    v16 = [(MRDOriginForwarder *)self destinationOrigin];
    MRMediaRemoteSetNowPlayingClientForOrigin();
  }
}

- (void)_handlePlayerDidRegisterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v14 = 138412546;
        v15 = self;
        v16 = 2112;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v14, 0x16u);
      }
    }

    [(MRDOriginForwarder *)self forwardParticipantDataSourceIfNeeded];
  }
}

- (void)_handlePlayerDidUnregisterNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteRemovePlayer();
  }
}

- (void)_handlePlayerDidRegisterCanBeNowPlayingNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetCanBeNowPlayingForPlayer();
  }
}

- (void)_handlePlayerDidUnregisterCanBeNowPlayingNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetCanBeNowPlayingForPlayer();
  }
}

- (void)_handlePlayerStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v20 = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [v16 playerPath];
    v18 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v17];

    v19 = [v18 player];

    if (v19)
    {
      MRMediaRemoteSetPlayerProperties();
    }
  }
}

- (void)_handleActivePlayerDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v15 = 138412546;
        v16 = self;
        v17 = 2112;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v15, 0x16u);
      }
    }

    v14 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetNowPlayingPlayer();
  }
}

- (void)_handlePlaybackStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:kMRMediaRemotePlaybackStateUserInfoKey];
    [v15 intValue];

    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemoteSetPlaybackStateForPlayer();
  }
}

- (void)_handleSupportedCommandsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v20 = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v18 = [v16 playerClient];
    v19 = [v18 supportedRemoteControlCommands];
    MRMediaRemoteSetSupportedCommandsForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueCapabilitiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v19 = 138412546;
        v20 = self;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v19, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v18 = [v16 playerClient];
    [v18 playbackQueueCapabilities];
    MRMediaRemoteSetPlaybackQueueCapabilities();
  }
}

- (void)_handlePlayerPlaybackQueueDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v20 = 138412546;
        v21 = self;
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v20, 0x16u);
      }
    }

    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 nowPlayingServer];
    v16 = [v15 queryExistingPlayerPath:v6];

    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    v18 = [v16 playerClient];
    v19 = [v18 playbackQueue];
    MRMediaRemotePlaybackQueueDataSourceInvalidateWithPlaybackQueueForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueContentItemsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v17, 0x16u);
      }
    }

    v14 = [v4 userInfo];
    v15 = MRGetContentItemsFromUserInfo();

    v16 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();
  }
}

- (void)_handlePlayerPlaybackQueueContentItemArtworkDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRDOriginForwarder] %@ forwarding %@", &v18, 0x16u);
      }
    }

    v14 = [v4 userInfo];
    v15 = MRGetContentItemsFromUserInfo();

    v16 = objc_alloc_init(MRPlaybackQueueRequest);
    [v16 setArtworkHeight:1.0];
    [v16 setArtworkWidth:1.0];
    v17 = [(MRDOriginForwarder *)self createLocalizedPlayerPath:v6];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer();
  }
}

- (void)_handleParticipantsDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v6 origin];
  v8 = [(MRDOriginForwarder *)self sourceOrigin];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = +[MRUserSettings currentSettings];
    v11 = [v10 verboseOriginForwarderLogging];

    if (v11)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v4 name];
        v17 = 138412546;
        v18 = self;
        v19 = 2112;
        v20 = v13;
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

- (id)createDelocalizedPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [MRPlayerPath alloc];
  v6 = [(MRDOriginForwarder *)self sourceOrigin];
  v7 = [v4 client];
  v8 = [v4 player];

  v9 = [v5 initWithOrigin:v6 client:v7 player:v8];

  return v9;
}

- (id)createLocalizedPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [MRPlayerPath alloc];
  v6 = [(MRDOriginForwarder *)self destinationOrigin];
  v7 = [v4 client];
  v8 = [v4 player];

  v9 = [v5 initWithOrigin:v6 client:v7 player:v8];

  return v9;
}

+ (id)localizedPlayerIDFromPlayerPath:(id)a3
{
  v3 = a3;
  v4 = [NSString alloc];
  v5 = [v3 client];
  v6 = [v5 bundleIdentifier];
  v7 = [v3 player];
  v8 = [v7 identifier];
  v9 = [v3 client];

  v10 = [v4 initWithFormat:@"%@-%@-%d", v6, v8, objc_msgSend(v9, "processIdentifier")];

  return v10;
}

+ (void)waitUntilForwardingOperationsHaveFinished:(id)a3
{
  v3 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000867C8;
  v6[3] = &unk_1004B8EF8;
  v7 = v3;
  v5 = v3;
  [v4 postClientNotificationNamed:@"placeholder" predicate:v6];
}

@end