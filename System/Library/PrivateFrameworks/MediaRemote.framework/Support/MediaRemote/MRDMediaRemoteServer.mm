@interface MRDMediaRemoteServer
+ (MRDMediaRemoteServer)server;
- (BOOL)_internalMediaRemoteNotificationIsLegal:(id)a3;
- (BOOL)_isACriticalSectionActive;
- (BOOL)_isMediaAppInstalled:(id)a3;
- (BOOL)isFirstLaunchAfterBoot;
- (MRDMediaRemoteClient)daemonClient;
- (MRDMediaRemoteClient)frontmostClient;
- (MRDMediaRemoteClient)localNowPlayingClient;
- (MRDMediaRemoteClient)systemMediaClient;
- (MRDMediaRemoteClient)systemPodcastClient;
- (MRDMediaRemoteServer)init;
- (MRDeviceInfo)deviceInfo;
- (RPCompanionLinkClient)sharedCompanionLinkClient;
- (RPRemoteDisplayDiscovery)sharedRemoteDisplayDiscovery;
- (id)_init;
- (id)allClients;
- (id)canBeNowPlayingClients;
- (id)clientForBundleIdentifier:(id)a3;
- (id)clientForPID:(int)a3;
- (id)clientForPlayerPath:(id)a3;
- (id)clientWithRegisteredCustomOrigin:(id)a3;
- (id)mostRecentCanBeNowPlayingClient;
- (id)mostRecentPlayingClient;
- (void)_clientDidOpenConnection:(id)a3;
- (void)_collectDiagnosticFromClient:(id)a3 completion:(id)a4;
- (void)_handleAdjustSystemVolumeByStepMessage:(id)a3 fromClient:(id)a4;
- (void)_handleAdjustSystemVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCollectClientDiagnosticsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCollectClientDiagnosticsMessageWithCompletion:(id)a3;
- (void)_handleCollectDiagnosticMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCompletePairingHandlerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCriticalSectionTransition:(id)a3 fromClient:(id)a4;
- (void)_handleGetIsBooksAppInstalledMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetIsMusicAppInstalledMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetSupportsSystemPairingMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetSystemIsMutedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetSystemVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRegisterPairingHandlerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestBlessMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSelectSourceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleServerXPCMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetSystemIsMutedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetSystemVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleUnregisterPairingHandler:(id)a3 fromClient:(id)a4;
- (void)_handleWakeMediaAppMessage:(id)a3 fromClient:(id)a4;
- (void)_handleWakePlayerServiceMessage:(id)a3 fromClient:(id)a4;
- (void)_postAppActivityNotificationNamed:(id)a3 withActivity:(id)a4;
- (void)_removeClient:(id)a3;
- (void)_restoreNowPlayingClientState;
- (void)_terminationHandler;
- (void)_validateAuditTokens:(id)a3 pids:(id)a4 auditTokens:(id)a5;
- (void)addClient:(id)a3;
- (void)addMediaRemoteSeverStartedHandler:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)initializeServer;
- (void)loadLocalRapportDeviceInfo;
- (void)postClientNotificationNamed:(id)a3 userInfo:(id)a4 predicate:(id)a5;
- (void)reevaluateClientsForActiveCriticalSection;
- (void)removeClientForPID:(int)a3;
- (void)restoreClientDeviceInfo:(id)a3;
- (void)restoreClientState:(id)a3 handler:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MRDMediaRemoteServer

- (void)reevaluateClientsForActiveCriticalSection
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007470;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(serialQueue, block);
  [(MRDMediaRemoteServer *)self allClients];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v4 = v10 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v18 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (([v8 isMediaRemoteDaemon] & 1) == 0)
        {
          if (*(v15 + 24) == 1)
          {
            [v8 pauseNotifications];
          }

          else
          {
            [v8 resumeNotifications];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v18 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v14, 8);
}

- (BOOL)_isACriticalSectionActive
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = [(NSMutableDictionary *)self->_activeClients allValues];
  v4 = [v3 mr_filter:&stru_1004BE3F8];
  v5 = [v4 count] != 0;

  return v5;
}

- (id)allClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003515C;
  v10 = sub_100035A64;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000778C;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (MRDMediaRemoteServer)server
{
  if (qword_1005294A8 != -1)
  {
    sub_100018D08();
  }

  v3 = qword_1005294A0;

  return v3;
}

- (MRDeviceInfo)deviceInfo
{
  v2 = [(MRDNowPlayingServer *)self->_nowPlayingServer localOriginClient];
  v3 = [v2 deviceInfo];

  return v3;
}

- (MRDMediaRemoteServer)init
{
  [NSException raise:NSInvalidArgumentException format:@"-init is not supported, use +server"];

  return 0;
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = MRDMediaRemoteServer;
  v2 = [(MRDMediaRemoteServer *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremoted.serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    activeClients = v2->_activeClients;
    v2->_activeClients = v6;

    v8 = objc_alloc_init(NSMutableArray);
    startHandlers = v2->_startHandlers;
    v2->_startHandlers = v8;
  }

  return v2;
}

- (void)initializeServer
{
  v3 = dispatch_get_global_queue(2, 0);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v3);
  termSigHandler = self->_termSigHandler;
  self->_termSigHandler = v4;

  v6 = self->_termSigHandler;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100131AE0;
  handler[3] = &unk_1004B6D08;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(self->_termSigHandler);
  v7 = +[MRDUIServer sharedServer];
  uiServer = self->_uiServer;
  self->_uiServer = v7;

  [(MRDUIServer *)self->_uiServer start];
  out_token = 0;
  if (notify_register_dispatch("AppleLanguagePreferencesChangedNotification", &out_token, &_dispatch_main_q, &stru_1004BE0C8))
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9D04();
    }
  }

  [MRAVConcreteOutputContext setOutputContextForLocalDeviceDataSource:&stru_1004BE108];
  v10 = objc_alloc_init(MRDAVRoutingDataSource);
  localRoutingDataSource = self->_localRoutingDataSource;
  self->_localRoutingDataSource = v10;

  v12 = [[MRDVolumeController alloc] initWithRoutingDataSource:self->_localRoutingDataSource];
  volumeController = self->_volumeController;
  self->_volumeController = v12;

  v14 = objc_alloc_init(MRDNowPlayingServer);
  nowPlayingServer = self->_nowPlayingServer;
  self->_nowPlayingServer = v14;

  v16 = objc_alloc_init(MRDRemoteControlServer);
  remoteControlServer = self->_remoteControlServer;
  self->_remoteControlServer = v16;

  v18 = objc_alloc_init(MRDBrowsableContentServer);
  browsableContentServer = self->_browsableContentServer;
  self->_browsableContentServer = v18;

  v20 = objc_alloc_init(MRDVirtualAudioInputServer);
  virtualAudioInputServer = self->_virtualAudioInputServer;
  self->_virtualAudioInputServer = v20;

  [(MRDVirtualAudioInputServer *)self->_virtualAudioInputServer setDelegate:self];
  v22 = objc_alloc_init(MRDTransactionServer);
  transactionServer = self->_transactionServer;
  self->_transactionServer = v22;

  v24 = objc_alloc_init(MRDBackgroundTasks);
  tasks = self->_tasks;
  self->_tasks = v24;

  v26 = [[MRDAVRoutingServer alloc] initWithRoutingDataSource:self->_localRoutingDataSource];
  routingServer = self->_routingServer;
  self->_routingServer = v26;

  v28 = [[MRDExternalDeviceRemoteServer alloc] initWithRoutingDataSource:self->_localRoutingDataSource];
  externalDeviceServer = self->_externalDeviceServer;
  self->_externalDeviceServer = v28;

  v30 = +[MRSharedSettings currentSettings];
  v31 = [v30 supportGroupSession];

  if (v31)
  {
    v32 = [[MRDGroupSessionServer alloc] initWithNowPlayingServer:self->_nowPlayingServer];
    groupSessionServer = self->_groupSessionServer;
    self->_groupSessionServer = v32;
  }

  v34 = objc_alloc_init(MRDMediaControlIPCServer);
  mediaControlServer = self->_mediaControlServer;
  self->_mediaControlServer = v34;

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100131C30;
  v39[3] = &unk_1004B6E08;
  v39[4] = self;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, v39);

  v36 = +[NSNotificationCenter defaultCenter];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10003BCBC;
  v38[3] = &unk_1004B99A0;
  v38[4] = self;
  v37 = [v36 addObserverForName:@"MRDMediaRemoteClientDidInvalidate" object:0 queue:0 usingBlock:v38];

  [(MRDMediaRemoteServer *)self _restoreNowPlayingClientState];
}

- (void)dealloc
{
  [(MRDVirtualAudioInputServer *)self->_virtualAudioInputServer setDelegate:0];
  [(MRDMediaRemoteServer *)self stop];
  v3.receiver = self;
  v3.super_class = MRDMediaRemoteServer;
  [(MRDMediaRemoteServer *)&v3 dealloc];
}

- (void)start
{
  if (!self->_listenerConnection)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.mediaremoted.connection", v3);
    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = v4;

    mach_service = xpc_connection_create_mach_service("com.apple.mediaremoted.xpc", self->_connectionQueue, 1uLL);
    listenerConnection = self->_listenerConnection;
    self->_listenerConnection = mach_service;

    v8 = self->_listenerConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100006F54;
    handler[3] = &unk_1004B6E08;
    handler[4] = self;
    xpc_connection_set_event_handler(v8, handler);
    xpc_connection_resume(self->_listenerConnection);
  }

  mediaControlServer = self->_mediaControlServer;
  if (mediaControlServer)
  {
    [(MRDMediaControlIPCServer *)mediaControlServer start];
  }

  externalDeviceServer = self->_externalDeviceServer;
  if (externalDeviceServer)
  {
    [(MRDExternalDeviceRemoteServer *)externalDeviceServer start];
  }

  notify_post(kMRMediaRemoteServiceDidResetDistributedNotification);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003515C;
  v25 = sub_100035A64;
  v26 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132330;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(serialQueue, block);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = v22[5];
  v13 = [v12 countByEnumeratingWithState:&v16 objects:v28 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v16 + 1) + 8 * v15) + 16))(*(*(&v16 + 1) + 8 * v15));
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v16 objects:v28 count:16];
    }

    while (v13);
  }

  MRGetSharedService();
  _Block_object_dispose(&v21, 8);
}

- (void)stop
{
  if (self->_listenerConnection)
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping MediaRemote server", v7, 2u);
    }

    xpc_connection_cancel(self->_listenerConnection);
    listenerConnection = self->_listenerConnection;
    self->_listenerConnection = 0;
  }

  connectionQueue = self->_connectionQueue;
  if (connectionQueue)
  {
    self->_connectionQueue = 0;
  }

  externalDeviceServer = self->_externalDeviceServer;
  if (externalDeviceServer)
  {
    [(MRDExternalDeviceRemoteServer *)externalDeviceServer stop];
  }
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132558;
  block[3] = &unk_1004B78D8;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  dispatch_sync(serialQueue, block);
  if (*(v13 + 24) == 1)
  {
    [(MRDMediaRemoteServer *)self restoreClientDeviceInfo:v6];
  }

  [(MRDMediaRemoteServer *)self reevaluateClientsForActiveCriticalSection];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"MRDMediaRemoteClientDidConnect" object:v6];

  _Block_object_dispose(&v12, 8);
}

- (void)removeClientForPID:(int)a3
{
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10013289C;
  v5[3] = &unk_1004B87D0;
  v6 = a3;
  v5[4] = self;
  dispatch_sync(serialQueue, v5);
  [(MRDMediaRemoteServer *)self reevaluateClientsForActiveCriticalSection];
}

- (id)clientForPID:(int)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10003515C;
  v12 = sub_100035A64;
  v13 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132B90;
  block[3] = &unk_1004B8848;
  block[4] = self;
  block[5] = &v8;
  v7 = a3;
  dispatch_sync(serialQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)clientForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003515C;
  v16 = sub_100035A64;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100132D20;
  block[3] = &unk_1004B78D8;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)clientWithRegisteredCustomOrigin:(id)a3
{
  v4 = [(MRDNowPlayingServer *)self->_nowPlayingServer originClientForOrigin:a3];
  if (v4)
  {
    v5 = [(MRDMediaRemoteServer *)self daemonClient];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)mostRecentCanBeNowPlayingClient
{
  v3 = +[NSDate distantFuture];
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];

  v6 = +[MROrigin localOrigin];
  v25 = v5;
  v7 = [v5 originClientForOrigin:v6];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v24 = v7;
  obj = [v7 nowPlayingClients];
  v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  v26 = self;
  v8 = 0;
  if (v29)
  {
    v28 = *v36;
    do
    {
      v9 = 0;
      do
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v9;
        v10 = *(*(&v35 + 1) + 8 * v9);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v11 = [v10 playerClients];
        v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v32;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v32 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v31 + 1) + 8 * i);
              v17 = [v16 canBeNowPlayingPlayerTimestamp];
              v18 = [v3 compare:v17];

              if (v18 == 1)
              {
                v19 = [v16 canBeNowPlayingPlayerTimestamp];

                v20 = v10;
                v8 = v20;
                v3 = v19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v13);
        }

        v9 = v30 + 1;
      }

      while ((v30 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v29);
  }

  v21 = [v8 client];
  v22 = -[MRDMediaRemoteServer clientForPID:](v26, "clientForPID:", [v21 processIdentifier]);

  return v22;
}

- (id)mostRecentPlayingClient
{
  v3 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(MRDMediaRemoteServer *)self canBeNowPlayingClients];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(MRDNowPlayingServer *)self->_nowPlayingServer localPlayersForXpcClient:*(*(&v16 + 1) + 8 * i)];
        [v3 addObjectsFromArray:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v10 = [v3 sortedArrayUsingComparator:&stru_1004BE150];
  v11 = [v10 lastObject];

  nowPlayingServer = self->_nowPlayingServer;
  v13 = [v11 playerPath];
  v14 = [(MRDNowPlayingServer *)nowPlayingServer xpcClientForPlayerPath:v13];

  return v14;
}

- (id)canBeNowPlayingClients
{
  v2 = [(MRDMediaRemoteServer *)self allClients];
  v3 = objc_alloc_init(NSMutableArray);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 canBeNowPlaying])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)clientForPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [v4 origin];
  v6 = [v5 isLocal];

  if (v6)
  {
    v7 = [v4 client];

    -[MRDMediaRemoteServer clientForPID:](self, "clientForPID:", [v7 processIdentifier]);
  }

  else
  {
    v7 = [v4 origin];

    [(MRDMediaRemoteServer *)self clientWithRegisteredCustomOrigin:v7];
  }
  v8 = ;

  return v8;
}

- (void)addMediaRemoteSeverStartedHandler:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100133638;
  v7[3] = &unk_1004B79F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)postClientNotificationNamed:(id)a3 userInfo:(id)a4 predicate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  kdebug_trace();
  if (qword_1005294B0 != -1)
  {
    sub_1003A9D78();
  }

  v11 = MRGetPlayerPathFromUserInfo();
  v12 = [v11 copy];

  v13 = qword_1005294B8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001338F8;
  block[3] = &unk_1004BBCD8;
  v19 = v9;
  v20 = v8;
  v21 = v12;
  v22 = self;
  v23 = v10;
  v14 = v10;
  v15 = v12;
  v16 = v8;
  v17 = v9;
  dispatch_async(v13, block);
}

- (void)restoreClientDeviceInfo:(id)a3
{
  v4 = a3;
  nowPlayingServer = self->_nowPlayingServer;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100133D74;
  v7[3] = &unk_1004BE198;
  v8 = v4;
  v6 = v4;
  [(MRDNowPlayingServer *)nowPlayingServer restoreDeviceInfoToClient:v6 handler:v7];
}

- (void)restoreClientState:(id)a3 handler:(id)a4
{
  routingServer = self->_routingServer;
  v7 = a4;
  v8 = a3;
  [(MRDAVRoutingServer *)routingServer restoreClientState:v8 handler:v7];
  [(MRDNowPlayingServer *)self->_nowPlayingServer restoreClientState:v8 handler:v7];
  [(MRDGroupSessionServer *)self->_groupSessionServer restoreClientState:v8 handler:v7];
}

- (MRDMediaRemoteClient)localNowPlayingClient
{
  v3 = [(MRDNowPlayingServer *)self->_nowPlayingServer localActivePlayerPath];
  v4 = [(MRDMediaRemoteServer *)self clientForPlayerPath:v3];

  return v4;
}

- (MRDMediaRemoteClient)systemMediaClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003515C;
  v10 = sub_100035A64;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100134074;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRDMediaRemoteClient)systemPodcastClient
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003515C;
  v10 = sub_100035A64;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100134274;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRDMediaRemoteClient)frontmostClient
{
  v3 = sub_10019FE94();
  if (v3)
  {
    v4 = [(MRDMediaRemoteServer *)self clientForBundleIdentifier:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRDMediaRemoteClient)daemonClient
{
  v3 = getpid();

  return [(MRDMediaRemoteServer *)self clientForPID:v3];
}

- (RPCompanionLinkClient)sharedCompanionLinkClient
{
  if (qword_1005294C8 != -1)
  {
    sub_1003A9F0C();
  }

  v3 = qword_1005294C0;

  return v3;
}

- (RPRemoteDisplayDiscovery)sharedRemoteDisplayDiscovery
{
  if (qword_1005294D8 != -1)
  {
    sub_1003A9FF8();
  }

  v3 = qword_1005294D0;

  return v3;
}

- (void)loadLocalRapportDeviceInfo
{
  v3 = [(MRDMediaRemoteServer *)self sharedRemoteDisplayDiscovery];
  v4 = [(MRDMediaRemoteServer *)self sharedCompanionLinkClient];
  v5 = [v4 localDevice];

  if (!v5)
  {
    v6 = dispatch_semaphore_create(0);
    [v4 localDeviceUpdatedHandler];
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100134A38;
    v13 = &unk_1004BE2A8;
    v15 = v14 = v6;
    v7 = v15;
    v8 = v6;
    [v4 setLocalDeviceUpdatedHandler:&v10];
    v9 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v8, v9);
    [v4 setLocalDeviceUpdatedHandler:{v7, v10, v11, v12, v13}];
  }
}

- (void)_clientDidOpenConnection:(id)a3
{
  v4 = a3;
  pid = xpc_connection_get_pid(v4);
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = pid;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client with pid %ld opened connection.", &v8, 0xCu);
  }

  v7 = [[MRDMediaRemoteClient alloc] initWithConnection:v4];
  [(MRDMediaRemoteClient *)v7 setMessageHandler:self];
  [(MRDMediaRemoteServer *)self addClient:v7];
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_MESSAGE_ID_KEY");
  v10 = HIBYTE(uint64);
  if (HIBYTE(uint64) <= 4)
  {
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        routingServer = self->_routingServer;
        goto LABEL_22;
      }

      if (v10 == 4)
      {
        routingServer = self->_remoteControlServer;
        goto LABEL_22;
      }
    }

    else
    {
      if (v10 == 1)
      {
        [(MRDMediaRemoteServer *)self _handleServerXPCMessage:v6 fromClient:v7];
        goto LABEL_23;
      }

      if (v10 == 2)
      {
        routingServer = self->_nowPlayingServer;
        goto LABEL_22;
      }
    }
  }

  else if (v10 <= 8)
  {
    if (v10 == 5)
    {
      routingServer = self->_browsableContentServer;
      goto LABEL_22;
    }

    if (v10 == 6)
    {
      routingServer = self->_externalDeviceServer;
      goto LABEL_22;
    }
  }

  else
  {
    switch(v10)
    {
      case 9:
        routingServer = self->_virtualAudioInputServer;
        goto LABEL_22;
      case 0xB:
        routingServer = self->_uiServer;
        goto LABEL_22;
      case 0xC:
        routingServer = self->_groupSessionServer;
LABEL_22:
        [routingServer handleXPCMessage:v6 fromClient:v7];
        goto LABEL_23;
    }
  }

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = uint64;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "XPC message with id %lu not handled.", &v13, 0xCu);
  }

LABEL_23:
  objc_autoreleasePoolPop(v8);
}

- (void)_handleServerXPCMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_MESSAGE_ID_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218498;
    v13 = uint64;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v6;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received message %llu from client %@ : %@", &v12, 0x20u);
  }

  switch(uint64)
  {
    case 0x100000000000001uLL:
      [(MRDMediaRemoteServer *)self _handleSelectSourceMessage:v6 fromClient:v7];
      break;
    case 0x100000000000002uLL:
      [(MRDMediaRemoteServer *)self _handleKeepAliveMessage:v6 fromClient:v7];
      break;
    case 0x100000000000003uLL:
      [(MRDMediaRemoteServer *)self _handlePostNotificationMessage:v6 fromClient:v7];
      break;
    case 0x100000000000004uLL:
      [(MRDMediaRemoteServer *)self _handleGetSystemVolumeMessage:v6 fromClient:v7];
      break;
    case 0x100000000000005uLL:
      [(MRDMediaRemoteServer *)self _handleSetSystemVolumeMessage:v6 fromClient:v7];
      break;
    case 0x100000000000006uLL:
      [(MRDMediaRemoteServer *)self _handleAdjustSystemVolumeByStepMessage:v6 fromClient:v7];
      break;
    case 0x100000000000007uLL:
      [(MRDMediaRemoteServer *)self _handleSetSystemIsMutedMessage:v6 fromClient:v7];
      break;
    case 0x100000000000008uLL:
      [(MRDMediaRemoteServer *)self _handleGetSystemIsMutedMessage:v6 fromClient:v7];
      break;
    case 0x100000000000009uLL:
      transactionServer = self->_transactionServer;
      goto LABEL_26;
    case 0x10000000000000AuLL:
      transactionServer = self->_tasks;
LABEL_26:
      [transactionServer handleXPCMessage:v6 fromClient:v7];
      break;
    case 0x10000000000000CuLL:
      [(MRDMediaRemoteServer *)self _handlePing:v6 fromClient:v7];
      break;
    case 0x10000000000000DuLL:
      [(MRDMediaRemoteServer *)self _handleGetSupportsSystemPairingMessage:v6 fromClient:v7];
      break;
    case 0x10000000000000EuLL:
      [(MRDMediaRemoteServer *)self _handleCollectDiagnosticMessage:v6 fromClient:v7];
      break;
    case 0x10000000000000FuLL:
      [(MRDMediaRemoteServer *)self _handleCollectClientDiagnosticsMessage:v6 fromClient:v7];
      break;
    case 0x100000000000010uLL:
      [(MRDMediaRemoteServer *)self _handleWakeMediaAppMessage:v6 fromClient:v7];
      break;
    case 0x100000000000011uLL:
      [(MRDMediaRemoteServer *)self _handleWakePlayerServiceMessage:v6 fromClient:v7];
      break;
    case 0x100000000000012uLL:
      [(MRDMediaRemoteServer *)self _handleRequestBlessMessage:v6 fromClient:v7];
      break;
    case 0x100000000000013uLL:
      [(MRDMediaRemoteServer *)self _handleRegisterPairingHandlerMessage:v6 fromClient:v7];
      break;
    case 0x100000000000014uLL:
      [(MRDMediaRemoteServer *)self _handleUnregisterPairingHandler:v6 fromClient:v7];
      break;
    case 0x100000000000015uLL:
      [(MRDMediaRemoteServer *)self _handleCompletePairingHandlerMessage:v6 fromClient:v7];
      break;
    case 0x100000000000016uLL:
      [(MRDMediaRemoteServer *)self _handleGetIsBooksAppInstalledMessage:v6 fromClient:v7];
      break;
    case 0x100000000000017uLL:
      [(MRDMediaRemoteServer *)self _handleGetIsMusicAppInstalledMessage:v6 fromClient:v7];
      break;
    case 0x100000000000019uLL:
      [(MRDMediaRemoteServer *)self _handleSuspendDisconnectionPauseMessage:v6 fromClient:v7];
      break;
    case 0x10000000000001AuLL:
      [(MRDMediaRemoteServer *)self _handleAdjustSystemVolumeMessage:v6 fromClient:v7];
      break;
    case 0x10000000000001BuLL:
      [(MRDMediaRemoteServer *)self _handleCriticalSectionTransition:v6 fromClient:v7];
      break;
    default:
      v11 = _MRLogForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = uint64;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Server message with id %llu not handled.", &v12, 0xCu);
      }

      break;
  }
}

- (void)_collectDiagnosticFromClient:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = MRCreateXPCMessage();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100135198;
  v9[3] = &unk_1004BE2D0;
  v10 = v5;
  v8 = v5;
  [v6 relayXPCMessage:v7 andReply:1 resultCallback:v9];
}

- (void)_handleSelectSourceMessage:(id)a3 fromClient:(id)a4
{
  string = xpc_dictionary_get_string(a3, "MRXPC_SOURCE_ID_KEY");
  if (string)
  {
    v9 = [NSString stringWithUTF8String:string];
    [(MRDAVRoutingServer *)self->_routingServer pickCachedRouteWithUID:?];
  }

  else
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138412290;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "NULL source ID string sent to %@", buf, 0xCu);
    }
  }
}

- (void)_handleGetSystemVolumeMessage:(id)a3 fromClient:(id)a4
{
  v9 = a3;
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 nowPlayingServer];
  v6 = [v5 localOriginClient];
  [v6 volume];
  v8 = v7;

  sub_10000BEE0(v9, "MRXPC_VOLUME_VALUE_KEY", 4, COERCE__INT64(v8), 0);
}

- (void)_handleSetSystemVolumeMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_double(v6, "MRXPC_VOLUME_VALUE_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 displayName];
    *buf = 138543618;
    v18 = v10;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client: %{public}@ Set system volume: setting volume to %f", buf, 0x16u);
  }

  volumeController = self->_volumeController;
  v16 = 0;
  *&v12 = v8;
  [(MRDVolumeController *)volumeController setVolume:&v16 error:v12];
  v13 = v16;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 code];
  }

  else
  {
    v15 = 0;
  }

  sub_10000F9E4(v6, v15);
}

- (void)_handleAdjustSystemVolumeByStepMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_double(v6, "MRXPC_VOLUME_VALUE_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 displayName];
    *buf = 138543618;
    v18 = v10;
    v19 = 2048;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client: %{public}@ Adjust system volume: stepping volume by %f", buf, 0x16u);
  }

  volumeController = self->_volumeController;
  v16 = 0;
  *&v12 = v8;
  [(MRDVolumeController *)volumeController adjustVolumeWithStepAmount:&v16 error:v12];
  v13 = v16;
  v14 = v13;
  if (v13)
  {
    v15 = [v13 code];
  }

  else
  {
    v15 = 0;
  }

  sub_10000F9E4(v6, v15);
}

- (void)_handleSetSystemIsMutedMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateProtobufFromXPCMessage();
  v7 = [v6 isMuted];
  volumeController = self->_volumeController;
  v12 = 0;
  [(MRDVolumeController *)volumeController setIsMuted:v7 error:&v12];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10013576C;
  v10[3] = &unk_1004B6E08;
  v11 = v12;
  v9 = v11;
  sub_100008278(v5, v10);
}

- (void)_handleGetSystemIsMutedMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v6 localOriginClient];
  v8 = [v7 isMuted];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100135854;
  v9[3] = &unk_1004BE2F0;
  v10 = v8;
  sub_100008278(v4, v9);
}

- (void)_handleAdjustSystemVolumeMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateProtobufFromXPCMessage();
  volumeController = self->_volumeController;
  v11 = 0;
  -[MRDVolumeController adjustVolume:error:](volumeController, "adjustVolume:error:", [v6 adjustment], &v11);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001359A4;
  v9[3] = &unk_1004B6E08;
  v10 = v11;
  v8 = v10;
  sub_100008278(v5, v9);
}

- (void)_handleGetIsBooksAppInstalledMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRMediaRemoteCopyLocalDeviceSystemBooksApplicationDisplayID();
  sub_10000BEE0(v5, "MRXPC_APP_INSTALLED_KEY", 2, [(MRDMediaRemoteServer *)self _isMediaAppInstalled:v6], 0);
}

- (void)_handleGetIsMusicAppInstalledMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  sub_10000BEE0(v5, "MRXPC_APP_INSTALLED_KEY", 2, [(MRDMediaRemoteServer *)self _isMediaAppInstalled:v6], 0);
}

- (BOOL)_isMediaAppInstalled:(id)a3
{
  if (a3)
  {
    v3 = [LSApplicationProxy applicationProxyForIdentifier:?];
    v4 = [v3 appState];
    v5 = [v4 isValid];

    return v5;
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA0E4();
    }

    return 0;
  }
}

- (void)_handleWakeMediaAppMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100135C70;
  v15[3] = &unk_1004BE318;
  v16 = v5;
  v7 = v5;
  v8 = objc_retainBlock(v15);
  v9 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100135C8C;
  v12[3] = &unk_1004BE340;
  v13 = v6;
  v14 = v8;
  v10 = v6;
  v11 = v8;
  sub_10019E5EC(v9, &__NSDictionary0__struct, v12, 5.0);
}

- (void)_handleWakePlayerServiceMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MRDMediaRemoteServer server];
  v35 = [v7 nowPlayingServer];
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_10013618C;
  v46[3] = &unk_1004BE318;
  v30 = v5;
  v47 = v30;
  v29 = objc_retainBlock(v46);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = v7;
  obj = [v7 allClients];
  v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v34)
  {
    v33 = *v43;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v43 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v42 + 1) + 8 * i);
        v9 = [v35 localPlayersForXpcClient:?];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v39;
          v36 = i;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v39 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v38 + 1) + 8 * v14) playerPath];
            v16 = [v15 client];
            v17 = [v16 parentApplicationBundleIdentifier];
            v18 = v6;
            v19 = [v6 bundleIdentifier];
            v20 = v17;
            v21 = v19;
            v22 = v21;
            if (v20 == v21)
            {
              break;
            }

            v23 = [v20 isEqual:v21];

            if (v23)
            {
              goto LABEL_17;
            }

            v14 = v14 + 1;
            v6 = v18;
            if (v12 == v14)
            {
              v12 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
              i = v36;
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_15;
            }
          }

LABEL_17:
          v24 = v37;

          v6 = v18;
          i = v36;
          if (!v24)
          {
            continue;
          }

          v27 = [v18 bundleIdentifier];
          v28 = [NSString stringWithFormat:@"Player Service Wake - %@", v27];
          v26 = v29;
          (v29[2])(v29, [v24 takeAssertionAndBlessForReason:v28]);

          goto LABEL_24;
        }

LABEL_15:
      }

      v34 = [obj countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v25 = _MRLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_1003AA188();
  }

  v26 = v29;
  (v29[2])(v29, 0);
LABEL_24:
}

- (void)_handleRequestBlessMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 entitlements] & 0x10) != 0)
  {
    v8 = [v6 bundleIdentifier];
    v9 = [NSString stringWithFormat:@"Bless Request - %@", v8];

    v10 = [MRDTaskAssertion alloc];
    v11 = [v6 pid];
    v12 = [v6 bundleIdentifier];
    v13 = [(MRDTaskAssertion *)v10 initWithType:4 pid:v11 bundleID:v12 name:v9];

    if ([(MRDTaskAssertion *)v13 invalidateInDuration:10.0])
    {
      v14 = [v6 bundleIdentifier];
      v15 = sub_10019FC4C(v14);
      if ((v15 & 1) == 0)
      {
        v16 = _MRLogForCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_1003AA1F0();
        }
      }

      v7 = v15;
    }

    else
    {
      v17 = _MRLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1003AA1BC();
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  sub_10000BEE0(v5, "MRXPC_BOOL_RESULT_KEY", 2, v7, 0);
}

- (void)_handleGetSupportsSystemPairingMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001363EC;
  v6[3] = &unk_1004BE2F0;
  v7 = ([a4 entitlements] & 4) != 0;
  sub_100008278(v5, v6);
}

- (void)_handleCollectDiagnosticMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MRDDiagnostic);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.mediaremote.MRDMediaRemoteServer-diagnostic", v7);

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100136504;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_handleCollectClientDiagnosticsMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100136BE4;
  v6[3] = &unk_1004BE390;
  v7 = a3;
  v5 = v7;
  [(MRDMediaRemoteServer *)self _handleCollectClientDiagnosticsMessageWithCompletion:v6];
}

- (void)_handleCollectClientDiagnosticsMessageWithCompletion:(id)a3
{
  v25 = a3;
  v4 = dispatch_group_create();
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.mediaremote.MRDMediaRemoteServer", v5);

  v7 = objc_alloc_init(NSMutableArray);
  [(MRDMediaRemoteServer *)self allClients];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v44 = 0u;
  v8 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      v11 = 0;
      do
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v41 + 1) + 8 * v11);
        dispatch_group_enter(v4);
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100137028;
        v36[3] = &unk_1004BE3B8;
        v37 = v6;
        v38 = v12;
        v39 = v7;
        v40 = v4;
        [(MRDMediaRemoteServer *)self _collectDiagnosticFromClient:v12 completion:v36];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v9);
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1001371A8;
  v32[3] = &unk_1004B71F8;
  v33 = v6;
  v34 = v7;
  v35 = v25;
  v13 = v25;
  v14 = v7;
  v15 = v6;
  v16 = objc_retainBlock(v32);
  v17 = [MRBlockGuard alloc];
  v18 = +[MRUserSettings currentSettings];
  [v18 broadcastCommandWaitDuration];
  v20 = v19;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1001373C4;
  v30[3] = &unk_1004B6FE8;
  v21 = v16;
  v31 = v21;
  v22 = [v17 initWithTimeout:@"clientDiagnose" reason:v30 handler:v20];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001373D4;
  block[3] = &unk_1004B79F0;
  v28 = v22;
  v29 = v21;
  v23 = v21;
  v24 = v22;
  dispatch_group_notify(v4, &_dispatch_main_q, block);
}

- (void)_handleRegisterPairingHandlerMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = MRCreateStringFromXPCMessage();
  if (v7)
  {
    v8 = +[MRDMediaRemoteServer server];
    v9 = [v8 routingServer];
    v10 = [v9 routingDataSource];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001375DC;
    v13[3] = &unk_1004BD080;
    v14 = v7;
    v15 = v5;
    [v10 addAuthorizationCallbackForRouteID:v14 requestCallback:v13];

    v11 = 0;
    v12 = v14;
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Pairing Handler register failed for routeUID: %{public}@", buf, 0xCu);
    }

    v11 = 2;
  }

  sub_10000F9E4(v6, v11);
}

- (void)_handleUnregisterPairingHandler:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreateStringFromXPCMessage();
  v6 = _MRLogForCategory();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing Handler unregister fro routeUID: %@", &v11, 0xCu);
    }

    v6 = +[MRDMediaRemoteServer server];
    v8 = [v6 routingServer];
    v9 = [v8 routingDataSource];
    [v9 removeAuthorizationCallbackForRouteID:v5];

    v10 = 0;
  }

  else
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing Handler unregister failed for routeUID: %@", &v11, 0xCu);
    }

    v10 = 2;
  }

  sub_10000F9E4(v4, v10);
}

- (void)_handleCompletePairingHandlerMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MRCreateStringFromXPCMessage();
  v8 = MRCreateStringFromXPCMessage();
  v9 = _MRLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pairing handler complete attempt for routeUID: %@", &v12, 0xCu);
    }

    v9 = [v6 pairingHandler];
    [v9 performHandlerForRouteUID:v7 passcode:v8];
    v11 = 0;
  }

  else
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Pairing Handler complete failed for routeUID: %@", &v12, 0xCu);
    }

    v11 = 2;
  }

  sub_10000F9E4(v5, v11);
}

- (void)_handleCriticalSectionTransition:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 entitlements] & 0x4000) != 0)
  {
    int64 = xpc_dictionary_get_int64(v6, "MRXPC_CRITICAL_SECTION_TRANSITION_KEY");
    string = xpc_dictionary_get_string(v6, "MRXPC_CRITICAL_SECTION_IDENTIFIER_KEY");
    if (string)
    {
      v11 = string;
      v12 = [NSUUID alloc];
      v13 = [NSString stringWithUTF8String:v11];
      v14 = [v12 initWithUUIDString:v13];

      if (int64 == 1)
      {
        [v7 invalidateCriticalSectionAssertionForRequestID:v14];
      }

      else if (!int64)
      {
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100137C40;
        v16[3] = &unk_1004B6D08;
        v16[4] = self;
        [v7 takeCriticalSectionAssertionForRequestID:v14 completion:v16];
      }

      [(MRDMediaRemoteServer *)self reevaluateClientsForActiveCriticalSection];
      sub_10000BEE0(v6, "MRXPC_BOOL_RESULT_KEY", 2, 1, 0);
    }

    else
    {
      v15 = _MRLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1003AA224();
      }
    }
  }

  else
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1003AA258();
    }

    sub_10000BEE0(v6, "MRXPC_BOOL_RESULT_KEY", 2, 0, 0);
  }
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100137F0C;
  v14 = &unk_1004B68F0;
  v15 = v4;
  v16 = self;
  v6 = v4;
  dispatch_sync(serialQueue, &v11);
  v7 = [(MRDMediaRemoteServer *)self localNowPlayingClient:v11];
  [v6 setLocalNowPlayingClient:v7];

  v8 = [(MRDMediaRemoteServer *)self systemMediaClient];
  [v6 setSystemMediaClient:v8];

  v9 = [(MRDMediaRemoteServer *)self frontmostClient];
  [v6 setFrontmostClient:v9];

  v10 = [(MRDMediaRemoteServer *)self daemonClient];
  [v6 setDaemonClient:v10];

  [v6 setVolumeController:self->_volumeController];
}

- (void)_postAppActivityNotificationNamed:(id)a3 withActivity:(id)a4
{
  v5 = a3;
  ExternalRepresentation = _MRApplicationActivityCreateExternalRepresentation();
  v8 = kMRApplicationActivityUserInfoDataKey;
  v9 = ExternalRepresentation;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(MRDMediaRemoteServer *)self postClientNotificationNamed:v5 userInfo:v7];
}

- (BOOL)_internalMediaRemoteNotificationIsLegal:(id)a3
{
  v3 = qword_1005294E8;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1003AA28C();
  }

  v5 = [qword_1005294E0 containsObject:v4];

  return v5;
}

- (void)_removeClient:(id)a3
{
  v4 = a3;
  v5 = [v4 pid];
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Client %{public}@ invalidated.", &v10, 0xCu);
  }

  [(MRDRemoteControlServer *)self->_remoteControlServer clearContextsForClient:v4];
  [(MRDVirtualAudioInputServer *)self->_virtualAudioInputServer clearRegisteredDevicesForClient:v4];
  [(MRDVirtualAudioInputServer *)self->_virtualAudioInputServer clearRecordingEndpointsForClient:v4];
  [(MRDExternalDeviceRemoteServer *)self->_externalDeviceServer clearEndpointForClient:v4];
  v7 = [(MRDAVRoutingServer *)self->_routingServer hostedRoutingService];
  v8 = [v7 hostedRoutingController];
  [v8 removeVirtualOutputDevicesForClient:v4];

  [(MRDNowPlayingServer *)self->_nowPlayingServer clearNowPlayingClientForXPCClient:v4];
  [(MRDMediaRemoteServer *)self removeClientForPID:v5];
  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:@"MRDMediaRemoteServerClientInvalidatedNotification" object:v4 userInfo:0];
}

- (void)_validateAuditTokens:(id)a3 pids:(id)a4 auditTokens:(id)a5
{
  v7 = a3;
  v22 = a4;
  v21 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        memset(&v24, 0, sizeof(v24));
        [v12 getBytes:&v24 length:32];
        atoken = v24;
        v13 = audit_token_to_pid(&atoken);
        atoken = v24;
        v14 = audit_token_to_pidversion(&atoken);
        v15 = [NSNumber numberWithInt:v13];
        v23 = 0;
        v16 = [RBSProcessHandle handleForIdentifier:v15 error:&v23];

        if (!v16)
        {
          v18 = _MRLogForCategory();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          atoken.val[0] = 67109120;
          atoken.val[1] = v13;
          v19 = v18;
          v20 = "No process for pid %d";
          goto LABEL_13;
        }

        [v16 auditToken];
        if (audit_token_to_pidversion(&atoken) == v14)
        {
          v17 = [NSNumber numberWithInt:v13];
          [v22 addObject:v17];

          atoken = v24;
          v18 = [NSData dataWithBytes:&atoken length:32];
          [v21 addObject:v18];
          goto LABEL_14;
        }

        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          atoken.val[0] = 67109120;
          atoken.val[1] = v13;
          v19 = v18;
          v20 = "Pidversion out of date for %d";
LABEL_13:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &atoken, 8u);
        }

LABEL_14:
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }
}

- (BOOL)isFirstLaunchAfterBoot
{
  if (qword_1005294F0 != -1)
  {
    sub_1003AA2A0();
  }

  return byte_100520678;
}

- (void)_restoreNowPlayingClientState
{
  if ([(MRDMediaRemoteServer *)self isFirstLaunchAfterBoot])
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting client and expected pids", buf, 2u);
    }

    v4 = +[MRDSettings currentSettings];
    [v4 setExpectedClientAuditTokens:&__NSArray0__struct];

    v5 = +[MRDSettings currentSettings];
    [v5 setConnectedClientAuditTokens:&__NSArray0__struct];
  }

  else
  {
    v6 = +[MRDSettings currentSettings];
    v7 = [v6 connectedClientAuditTokens];
    v5 = [v7 copy];

    v8 = +[MRDSettings currentSettings];
    v9 = [v8 expectedClientAuditTokens];
    v10 = [v9 copy];

    v11 = +[NSMutableArray array];
    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    [(MRDMediaRemoteServer *)self _validateAuditTokens:v5 pids:v12 auditTokens:v11];
    [(MRDMediaRemoteServer *)self _validateAuditTokens:v10 pids:v13 auditTokens:v11];
    v14 = [[NSMutableSet alloc] initWithArray:v12];
    [v14 addObjectsFromArray:v13];
    v15 = +[MRDSettings currentSettings];
    [v15 setExpectedClientAuditTokens:v11];

    v16 = +[MRDSettings currentSettings];
    [v16 setConnectedClientAuditTokens:&__NSArray0__struct];

    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Restoring client pids %{public}@", buf, 0xCu);
    }

    v18 = _MRLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Restoring expected client pids %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100138C0C;
    block[3] = &unk_1004B68F0;
    v23 = v14;
    v24 = self;
    v20 = v14;
    dispatch_async(v19, block);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100138D94;
  v21[3] = &unk_1004B6D08;
  v21[4] = self;
  dispatch_async(&_dispatch_main_q, v21);
}

- (void)_terminationHandler
{
  v2 = _MRLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SIGTERM received, preparing to shut down", v3, 2u);
  }

  xpc_transaction_exit_clean();
  MRInvalidateTransactions();
}

@end