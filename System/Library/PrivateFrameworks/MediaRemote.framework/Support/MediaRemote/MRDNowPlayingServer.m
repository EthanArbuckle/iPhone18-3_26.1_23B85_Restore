@interface MRDNowPlayingServer
- (BOOL)_hasForwarderForOrigin:(id)a3;
- (BOOL)activePlayerIsPlaying;
- (BOOL)hasElectedPlayer;
- (BOOL)hasProactiveRecommendedPlayer;
- (BOOL)localActivePlayerIsPlaying;
- (BOOL)lockScreenPlatterActive;
- (BOOL)lockScreenRecommendationActive;
- (BOOL)nowPlayingLauncher:(id)a3 shouldRelaunch:(id)a4;
- (MRDNowPlayingClient)activeNowPlayingClient;
- (MRDNowPlayingClient)localActiveNowPlayingClient;
- (MRDNowPlayingOriginClient)activeOriginClient;
- (MRDNowPlayingOriginClient)companionOriginClient;
- (MRDNowPlayingOriginClient)localOriginClient;
- (MRDNowPlayingPlayerClient)activePlayerClient;
- (MRDNowPlayingPlayerClient)localActivePlayerClient;
- (MRDNowPlayingServer)init;
- (MRPlayerPath)activePlayerPath;
- (MRPlayerPath)localActivePlayerPath;
- (NSArray)originClients;
- (NSSet)allLocalNowPlayingInfoClients;
- (NSSet)allNowPlayingInfoClients;
- (NSString)activeClientBundleIdentifier;
- (NSString)localActiveClientBundleIdentifier;
- (id)_onQueue_activeOriginClient;
- (id)_onQueue_allNowPlayingInfoClients;
- (id)_onQueue_allNowPlayingInfoClientsForOrigin:(id)a3;
- (id)_onQueue_companionOriginClient;
- (id)_onQueue_originClientForDeviceUID:(id)a3;
- (id)_onQueue_originClientForGroupLeaderOfDeviceUID:(id)a3;
- (id)_onQueue_originClientForOrigin:(id)a3;
- (id)_onQueue_queryExistingPlayerPath:(id)a3;
- (id)_onQueue_restoredActiveOrigin;
- (id)augmentedUserInfoForPlayerPath:(id)a3;
- (id)localPlayersForXpcClient:(id)a3;
- (id)onQueue_resolveExistingPlayerPath:(id)a3;
- (id)originClientForDeviceUID:(id)a3;
- (id)originClientForGroupLeaderOfDeviceUID:(id)a3;
- (id)originClientForOrigin:(id)a3;
- (id)overrideClient;
- (id)queryExistingPlayerPath:(id)a3;
- (id)queryExistingPlayerPathForXPCMessage:(id)a3 forClient:(id)a4;
- (id)queryPlayerPath:(id)a3 forClient:(id)a4;
- (id)queryPlayerPathForXPCMessage:(id)a3 fromClient:(id)a4;
- (id)resolveExistingPlayerPath:(id)a3;
- (id)resolvePlayerPath:(id)a3 fromClient:(id)a4 useDefaultPlayerIfNoneSpecified:(BOOL)a5;
- (id)xpcClientForPlayerPath:(id)a3;
- (int)activeClientPID;
- (int)localActiveClientPID;
- (unsigned)activePlayerPlaybackState;
- (unsigned)localActivePlayerPlaybackState;
- (void)_addOrigin:(id)a3 withDeviceInfo:(id)a4 emitNotification:(BOOL)a5;
- (void)_handleBeginApplicationActivityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleBeginMusicHandoffSessionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleContentItemArtworkChangedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleContentItemChangedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleEndApplicationActivityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleFetchPlaybackQueueParticipantsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetActiveOriginMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetActivePlayerPathsForLocalOriginMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetAnyAppIsPlayingMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetApplicationActivityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetAudioFormatContentInfoForOriginMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetAvailableOriginsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetClientPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetDeviceInfo:(id)a3 fromClient:(id)a4;
- (void)_handleGetElectedPlayerPathMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetImageDimensionsForArtworkDataMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetLastPlayingDateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetMediaSuggestionDeviceUIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetNowPlayingClientMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetNowPlayingClientsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetNowPlayingPlayersMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPlaybackStateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPlayerPictureInPictureEnabledMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPlayerPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetProactiveRecommendedPlayerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetSupportedCommandsMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionRequest:(id)a3 fromClient:(id)a4;
- (void)_handleRegisterForWakingNowPlayingNotifications:(id)a3 fromClient:(id)a4;
- (void)_handleRemoveNowPlayingClientMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRemoveNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestAudioAmplitudeSamplesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestPlaybackQueueCapabilities:(id)a3 fromClient:(id)a4;
- (void)_handleRequestVideoThumbnailsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleResetPlaybackQueueRequests:(id)a3 fromClient:(id)a4;
- (void)_handleResolvePlayerPath:(id)a3 fromClient:(id)a4;
- (void)_handleSendLyricsEvent:(id)a3 fromClient:(id)a4;
- (void)_handleSendMusicHandoffEventMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetActiveOriginMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetCanBeNowPlayingAppMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetCanBeNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetClientPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetDefaultSupportedCommandsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetHardwareRemoteBehaviorMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetNowPlayingAppOverrideMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetNowPlayingClientMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetOriginClientPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetOverriddenNowPlayingAppMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlaybackQueue:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlaybackQueueCapabilities:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlaybackStateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlayerClientPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlayerPictureInPictureEnabledMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetPlayerPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetSupportedCommandsMessage:(id)a3 fromClient:(id)a4;
- (void)_handleUpdateClientPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleUpdatePlayerPropertiesMessage:(id)a3 fromClient:(id)a4;
- (void)_onQueue_savePersistentActiveOrigin:(id)a3;
- (void)_onQueue_setActiveOrigin:(id)a3 saveState:(BOOL)a4;
- (void)_removeNowPlayingClient:(id)a3 forOrigin:(id)a4;
- (void)_removeOrigin:(id)a3;
- (void)_validateResult:(id)a3 forClient:(id)a4;
- (void)beginMusicHandoffSessionWithSource:(id)a3 destination:(id)a4 completion:(id)a5;
- (void)clearNowPlayingClientForXPCClient:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)handleNowPlayingOriginClient:(id)a3 deviceInfoDidChange:(id)a4 previousDeviceInfo:(id)a5;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)maybePostDistributedNotifications;
- (void)nowPlayingClient:(id)a3 activePlayerDidChangeFromPlayerClient:(id)a4 toPlayerClient:(id)a5;
- (void)nowPlayingClient:(id)a3 clientStateDidChange:(id)a4;
- (void)nowPlayingClient:(id)a3 playerDidRegister:(id)a4;
- (void)nowPlayingClient:(id)a3 playerDidUnregister:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 activePlayerClientsDidChange:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 applicationActivityDidBegin:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 applicationActivityDidEnd:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 applicationActivityStatusDidChange:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 clientDidRegister:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 clientDidUnregister:(id)a4;
- (void)nowPlayingOriginClient:(id)a3 currentRouteVolumeDidChange:(float)a4;
- (void)nowPlayingOriginClientDidChangeAudioFormatContentInfo:(id)a3;
- (void)nowPlayingOriginClientPlaybackDidTimeout:(id)a3;
- (void)nowPlayingPlayerClient:(id)a3 clientCanBeNowPlayingDidChange:(BOOL)a4;
- (void)nowPlayingPlayerClient:(id)a3 playbackQueueArtworkContentItemsDidChange:(id)a4;
- (void)nowPlayingPlayerClient:(id)a3 playbackQueueCapabilitiesDidChange:(unint64_t)a4;
- (void)nowPlayingPlayerClient:(id)a3 playbackQueueContentItemsDidChange:(id)a4;
- (void)nowPlayingPlayerClient:(id)a3 playbackQueueParticipantsDidChange:(id)a4;
- (void)nowPlayingPlayerClient:(id)a3 playerCanBeNowPlayingDidChange:(BOOL)a4;
- (void)nowPlayingPlayerClient:(id)a3 playerStateDidChange:(id)a4;
- (void)nowPlayingPlayerClient:(id)a3 supportedCommandsDidChange:(id)a4;
- (void)nowPlayingServer:(id)a3 activeOriginDidChangeFromOriginClient:(id)a4 toOriginClient:(id)a5;
- (void)postActivePlayerPathsDidChangeForOrigin:(id)a3 handler:(id)a4;
- (void)postAudioFormatContentInfoDidChangeForOrigin:(id)a3 handler:(id)a4;
- (void)postClientDidRegisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4;
- (void)postClientDidRegisterForPlayerPath:(id)a3 handler:(id)a4;
- (void)postClientDidUnregisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4;
- (void)postClientDidUnregisterForPlayerPath:(id)a3 hasDefaultSupportedCommands:(BOOL)a4 canBeNowPlaying:(BOOL)a5 handler:(id)a6;
- (void)postClientNowPlayingNotificationNamed:(id)a3 userInfo:(id)a4 predicate:(id)a5;
- (void)postDeviceInfoDidChange:(id)a3 previousDeviceInfo:(id)a4 forOrigin:(id)a5 handler:(id)a6;
- (void)postElectedPlayerDidChange:(id)a3 change:(int64_t)a4 event:(int64_t)a5 reason:(id)a6 handler:(id)a7;
- (void)postLockScreenActiveDidChange:(BOOL)a3 handler:(id)a4;
- (void)postLockScreenControlsDidChangeDistributedNotification;
- (void)postLockScreenPlayerPathDidChange:(id)a3 handler:(id)a4;
- (void)postLockScreenVisibleDidChange:(BOOL)a3 handler:(id)a4;
- (void)postNowPlayingClientStateDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postNowPlayingPlayerStateDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postOriginDidRegister:(id)a3 handler:(id)a4;
- (void)postOriginDidUnRegister:(id)a3 deviceInfo:(id)a4 handler:(id)a5;
- (void)postPlaybackQueueCapabilitiesDidChange:(unint64_t)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postPlaybackQueueContentItemsArtworkDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postPlaybackQueueContentItemsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postPlaybackQueueDidChange:(id)a3 nowPlayingItemDidChange:(BOOL)a4 forPlayerPath:(id)a5 handler:(id)a6;
- (void)postPlaybackQueueParticipantsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postPlayerDidRegisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4;
- (void)postPlayerDidRegisterForPlayerPath:(id)a3 handler:(id)a4;
- (void)postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4;
- (void)postProactiveRecommendedPlayerDidChange:(id)a3 change:(int64_t)a4 event:(int64_t)a5 reason:(id)a6 handler:(id)a7;
- (void)postSupportedCommandsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5;
- (void)postVolumeDidChange:(id)a3 volume:(float)a4 handler:(id)a5;
- (void)registerOriginForwarder:(id)a3;
- (void)reregisterOrigin:(id)a3 deviceInfo:(id)a4;
- (void)restoreClientState:(id)a3 handler:(id)a4;
- (void)restoreDeviceInfoToClient:(id)a3 handler:(id)a4;
- (void)setActiveOrigin:(id)a3;
- (void)setOverrideClient:(id)a3;
- (void)startObservingNowPlayingInfoForNowPlayingPlayerClient:(id)a3;
- (void)stopObservingNowPlayingInfo;
- (void)unregisterOriginForwarder:(id)a3;
- (void)updateDeviceInfo:(id)a3 origin:(id)a4;
- (void)wakeDeviceIfNecessaryForNowPlayingPlayerClient:(id)a3;
@end

@implementation MRDNowPlayingServer

- (void)maybePostDistributedNotifications
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D24C;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (MRPlayerPath)activePlayerPath
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activePlayerPath];

  return v3;
}

- (id)_onQueue_activeOriginClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = self->_activeOriginClient;
  if (!v3)
  {
    v3 = self->_localOriginClient;
  }

  return v3;
}

- (MRDNowPlayingOriginClient)activeOriginClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003513C;
  v9 = sub_100035A54;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDNowPlayingPlayerClient)activePlayerClient
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];

  return v4;
}

- (MRDNowPlayingOriginClient)localOriginClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003513C;
  v9 = sub_100035A54;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (MRDNowPlayingPlayerClient)localActivePlayerClient
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];

  return v4;
}

- (NSArray)originClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003513C;
  v10 = sub_100035A54;
  v11 = objc_alloc_init(NSMutableArray);
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v4 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v4;
}

- (MRDNowPlayingServer)init
{
  v34.receiver = self;
  v34.super_class = MRDNowPlayingServer;
  v2 = [(MRDNowPlayingServer *)&v34 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.mediaremote.MRDNowPlayingServer.nowPlayingInfoObserverQueue", v9);
    nowPlayingInfoObserverQueue = v2->_nowPlayingInfoObserverQueue;
    v2->_nowPlayingInfoObserverQueue = v10;

    v12 = objc_alloc_init(MRDDeviceInfoDataSource);
    deviceInfoDataSource = v2->_deviceInfoDataSource;
    v2->_deviceInfoDataSource = v12;

    v14 = +[MROrigin localOrigin];
    v15 = [(MRDDeviceInfoDataSource *)v2->_deviceInfoDataSource deviceInfo];
    [(MRDNowPlayingServer *)v2 _addOrigin:v14 withDeviceInfo:v15 emitNotification:0];

    v16 = objc_alloc_init(MRDNowPlayingPlaybackQueueServer);
    playbackQueueServer = v2->_playbackQueueServer;
    v2->_playbackQueueServer = v16;

    v18 = +[MRUserSettings currentSettings];
    LODWORD(v15) = [v18 takelockScreenAssertion];

    if (v15)
    {
      v19 = objc_alloc_init(MRDLockScreenController);
      lockScreenController = v2->_lockScreenController;
      v2->_lockScreenController = v19;

      [(MRDLockScreenController *)v2->_lockScreenController setDelegate:v2];
      v21 = objc_alloc_init(MRDLockScreenRoutingController);
      lockScreenRoutingController = v2->_lockScreenRoutingController;
      v2->_lockScreenRoutingController = v21;

      [(MRDLockScreenRoutingControllerProtocol *)v2->_lockScreenRoutingController setDataSource:v2];
    }

    v23 = +[MRUserSettings currentSettings];
    v24 = [v23 supportElectedPlayer];

    if (v24)
    {
      v25 = [[MRDElectedPlayerController alloc] initWithOriginClient:v2->_localOriginClient];
      electedPlayerController = v2->_electedPlayerController;
      v2->_electedPlayerController = v25;

      [(MRDElectedPlayerController *)v2->_electedPlayerController setDelegate:v2];
    }

    v27 = +[MRUserSettings currentSettings];
    v28 = [v27 supportProactiveRecommendedPlayer];

    if (v28)
    {
      v29 = [[MRDProactiveRecommendedPlayerController alloc] initWithOriginClient:v2->_localOriginClient];
      proactiveRecommendedPlayerController = v2->_proactiveRecommendedPlayerController;
      v2->_proactiveRecommendedPlayerController = v29;

      [(MRDProactiveRecommendedPlayerController *)v2->_proactiveRecommendedPlayerController setDelegate:v2];
    }

    if (MSVDeviceIsAudioAccessory())
    {
      v31 = [[MRDNowPlayingLauncher alloc] initWithBundleIdentifier:@"com.apple.NowPlayingCap" options:1];
      nowPlayingCapLauncher = v2->_nowPlayingCapLauncher;
      v2->_nowPlayingCapLauncher = v31;

      [(MRDNowPlayingLauncher *)v2->_nowPlayingCapLauncher setDelegate:v2];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MRDNowPlayingServer;
  [(MRDNowPlayingServer *)&v4 dealloc];
}

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_MESSAGE_ID_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = uint64;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received Now Playing message %llu from client %@ : %@", &v11, 0x20u);
  }

  switch(uint64)
  {
    case 0x200000000000001uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingAppOverrideMessage:v6 fromClient:v7];
      break;
    case 0x200000000000002uLL:
      [(MRDNowPlayingServer *)self _handleSetOverriddenNowPlayingAppMessage:v6 fromClient:v7];
      break;
    case 0x200000000000003uLL:
      [(MRDNowPlayingServer *)self _handleBeginApplicationActivityMessage:v6 fromClient:v7];
      break;
    case 0x200000000000004uLL:
      [(MRDNowPlayingServer *)self _handleGetApplicationActivityMessage:v6 fromClient:v7];
      break;
    case 0x200000000000005uLL:
      [(MRDNowPlayingServer *)self _handleEndApplicationActivityMessage:v6 fromClient:v7];
      break;
    case 0x200000000000006uLL:
      [(MRDNowPlayingServer *)self _handleSetCanBeNowPlayingAppMessage:v6 fromClient:v7];
      break;
    case 0x200000000000007uLL:
      [(MRDNowPlayingPlaybackQueueServer *)self->_playbackQueueServer handlePlaybackQueueRequest:v6 fromClient:v7];
      break;
    case 0x200000000000008uLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackQueue:v6 fromClient:v7];
      break;
    case 0x200000000000009uLL:
      [(MRDNowPlayingServer *)self _handleRequestPlaybackQueueCapabilities:v6 fromClient:v7];
      break;
    case 0x20000000000000AuLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackQueueCapabilities:v6 fromClient:v7];
      break;
    case 0x20000000000000BuLL:
      [(MRDNowPlayingServer *)self _handleResetPlaybackQueueRequests:v6 fromClient:v7];
      break;
    case 0x20000000000000CuLL:
      [(MRDNowPlayingServer *)self _handleGetClientPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x20000000000000DuLL:
      [(MRDNowPlayingServer *)self _handleSetClientPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x20000000000000EuLL:
      [(MRDNowPlayingServer *)self _handleUpdateClientPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x20000000000000FuLL:
      [(MRDNowPlayingServer *)self _handleGetPlayerPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000010uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000011uLL:
      [(MRDNowPlayingServer *)self _handleUpdatePlayerPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000012uLL:
      [(MRDNowPlayingServer *)self _handleGetPlaybackStateMessage:v6 fromClient:v7];
      break;
    case 0x200000000000013uLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackStateMessage:v6 fromClient:v7];
      break;
    case 0x200000000000014uLL:
      [(MRDNowPlayingServer *)self _handleGetAnyAppIsPlayingMessage:v6 fromClient:v7];
      break;
    case 0x200000000000015uLL:
      [(MRDNowPlayingServer *)self _handleRequestVideoThumbnailsMessage:v6 fromClient:v7];
      break;
    case 0x200000000000016uLL:
      [(MRDNowPlayingServer *)self _handleRequestAudioAmplitudeSamplesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000017uLL:
      [(MRDNowPlayingServer *)self _handleSendLyricsEvent:v6 fromClient:v7];
      break;
    case 0x200000000000018uLL:
      [(MRDNowPlayingServer *)self _handleResolvePlayerPath:v6 fromClient:v7];
      break;
    case 0x200000000000019uLL:
      [(MRDNowPlayingServer *)self _handleGetAvailableOriginsMessage:v6 fromClient:v7];
      break;
    case 0x20000000000001AuLL:
      [(MRDNowPlayingServer *)self _handleSetActiveOriginMessage:v6 fromClient:v7];
      break;
    case 0x20000000000001BuLL:
      [(MRDNowPlayingServer *)self _handleGetActiveOriginMessage:v6 fromClient:v7];
      break;
    case 0x20000000000001FuLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingClientsMessage:v6 fromClient:v7];
      break;
    case 0x200000000000020uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingClientMessage:v6 fromClient:v7];
      break;
    case 0x200000000000021uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingClientMessage:v6 fromClient:v7];
      break;
    case 0x200000000000022uLL:
      [(MRDNowPlayingServer *)self _handleRemoveNowPlayingClientMessage:v6 fromClient:v7];
      break;
    case 0x200000000000023uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingPlayersMessage:v6 fromClient:v7];
      break;
    case 0x200000000000024uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingPlayerMessage:v6 fromClient:v7];
      break;
    case 0x200000000000025uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingPlayerMessage:v6 fromClient:v7];
      break;
    case 0x200000000000026uLL:
      [(MRDNowPlayingServer *)self _handleRemoveNowPlayingPlayerMessage:v6 fromClient:v7];
      break;
    case 0x200000000000027uLL:
      [(MRDNowPlayingServer *)self _handleGetActivePlayerPathsForLocalOriginMessage:v6 fromClient:v7];
      break;
    case 0x200000000000029uLL:
      [(MRDNowPlayingServer *)self _handleSetHardwareRemoteBehaviorMessage:v6 fromClient:v7];
      break;
    case 0x20000000000002AuLL:
      [(MRDNowPlayingServer *)self _handleContentItemArtworkChangedMessage:v6 fromClient:v7];
      break;
    case 0x20000000000002BuLL:
      [(MRDNowPlayingServer *)self _handleContentItemChangedMessage:v6 fromClient:v7];
      break;
    case 0x20000000000002CuLL:
      [(MRDNowPlayingServer *)self _handleGetDeviceInfo:v6 fromClient:v7];
      break;
    case 0x20000000000002EuLL:
      [(MRDNowPlayingServer *)self _handleGetElectedPlayerPathMessage:v6 fromClient:v7];
      break;
    case 0x20000000000002FuLL:
      [(MRDNowPlayingServer *)self _handleGetProactiveRecommendedPlayerMessage:v6 fromClient:v7];
      break;
    case 0x200000000000030uLL:
      [(MRDNowPlayingServer *)self _handlePlaybackSessionRequest:v6 fromClient:v7];
      break;
    case 0x200000000000031uLL:
      [(MRDNowPlayingServer *)self _handleGetSupportedCommandsMessage:v6 fromClient:v7];
      break;
    case 0x200000000000032uLL:
      [(MRDNowPlayingServer *)self _handleSetSupportedCommandsMessage:v6 fromClient:v7];
      break;
    case 0x200000000000033uLL:
      [(MRDNowPlayingServer *)self _handleSetDefaultSupportedCommandsMessage:v6 fromClient:v7];
      break;
    case 0x200000000000034uLL:
      [(MRDNowPlayingServer *)self _handleGetPlayerPictureInPictureEnabledMessage:v6 fromClient:v7];
      break;
    case 0x200000000000035uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerPictureInPictureEnabledMessage:v6 fromClient:v7];
      break;
    case 0x200000000000036uLL:
      [(MRDNowPlayingServer *)self _handleGetLastPlayingDateMessage:v6 fromClient:v7];
      break;
    case 0x200000000000037uLL:
      [(MRDNowPlayingServer *)self _handleSetOriginClientPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000038uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerClientPropertiesMessage:v6 fromClient:v7];
      break;
    case 0x200000000000039uLL:
      [(MRDNowPlayingServer *)self _handleSetCanBeNowPlayingPlayerMessage:v6 fromClient:v7];
      break;
    case 0x20000000000003AuLL:
      [(MRDNowPlayingServer *)self _handleRegisterForWakingNowPlayingNotifications:v6 fromClient:v7];
      break;
    case 0x20000000000003BuLL:
      [(MRDNowPlayingServer *)self _handleGetAudioFormatContentInfoForOriginMessage:v6 fromClient:v7];
      break;
    case 0x20000000000003CuLL:
      [(MRDNowPlayingServer *)self _handleGetImageDimensionsForArtworkDataMessage:v6 fromClient:v7];
      break;
    case 0x20000000000003DuLL:
      [(MRDNowPlayingServer *)self _handleFetchPlaybackQueueParticipantsMessage:v6 fromClient:v7];
      break;
    case 0x20000000000003EuLL:
      [(MRDNowPlayingServer *)self _handleBeginMusicHandoffSessionMessage:v6 fromClient:v7];
      break;
    case 0x20000000000003FuLL:
      [(MRDNowPlayingServer *)self _handleSendMusicHandoffEventMessage:v6 fromClient:v7];
      break;
    case 0x200000000000040uLL:
      [(MRDNowPlayingServer *)self _handleGetMediaSuggestionDeviceUIDMessage:v6 fromClient:v7];
      break;
    default:
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134217984;
        v12 = uint64;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Now Playing message with id %llu not handled.", &v11, 0xCu);
      }

      break;
  }
}

- (int)activeClientPID
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 client];
  v5 = [v4 processIdentifier];

  return v5;
}

- (int)localActiveClientPID
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 client];
  v5 = [v4 processIdentifier];

  return v5;
}

- (NSString)activeClientBundleIdentifier
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 client];
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (NSString)localActiveClientBundleIdentifier
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 client];
  v5 = [v4 bundleIdentifier];

  return v5;
}

- (BOOL)activePlayerIsPlaying
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];
  v5 = [v4 isPlaying];

  return v5;
}

- (BOOL)localActivePlayerIsPlaying
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];
  v5 = [v4 isPlaying];

  return v5;
}

- (unsigned)activePlayerPlaybackState
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];
  v5 = [v4 playbackState];

  return v5;
}

- (unsigned)localActivePlayerPlaybackState
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];
  v4 = [v3 activePlayerClient];
  v5 = [v4 playbackState];

  return v5;
}

- (MRDNowPlayingClient)activeNowPlayingClient
{
  v2 = [(MRDNowPlayingServer *)self activeOriginClient];
  v3 = [v2 activeNowPlayingClient];

  return v3;
}

- (MRDNowPlayingClient)localActiveNowPlayingClient
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activeNowPlayingClient];

  return v3;
}

- (MRDNowPlayingOriginClient)companionOriginClient
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003513C;
  v9 = sub_100035A54;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)_onQueue_companionOriginClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_originClients;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 origin];
        v9 = [v8 identifier];

        if (v9 == 1129140302)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (MRPlayerPath)localActivePlayerPath
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 activePlayerPath];

  return v3;
}

- (NSSet)allNowPlayingInfoClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003513C;
  v9 = sub_100035A54;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)_onQueue_allNowPlayingInfoClients
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = objc_alloc_init(NSMutableSet);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_originClients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v20 + 1) + 8 * i) nowPlayingClients];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v17;
          do
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v16 + 1) + 8 * j);
              if ([v14 hasNowPlayingData])
              {
                [v3 addObject:v14];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  return v3;
}

- (NSSet)allLocalNowPlayingInfoClients
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10003513C;
  v9 = sub_100035A54;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)_onQueue_allNowPlayingInfoClientsForOrigin:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:v5];

  v8 = [v7 nowPlayingClients];
  [v6 addObjectsFromArray:v8];

  return v6;
}

- (id)queryPlayerPathForXPCMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = MRCreatePlayerPathFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self queryPlayerPath:v6 forClient:v5];

  return v7;
}

- (id)queryPlayerPath:(id)a3 forClient:(id)a4
{
  v6 = a4;
  v7 = [(MRDNowPlayingServer *)self resolvePlayerPath:a3 fromClient:v6];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];
  [(MRDNowPlayingServer *)self _validateResult:v8 forClient:v6];

  return v8;
}

- (id)queryExistingPlayerPathForXPCMessage:(id)a3 forClient:(id)a4
{
  v5 = a4;
  v6 = MRCreatePlayerPathFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v6];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];
  [(MRDNowPlayingServer *)self _validateResult:v8 forClient:v5];

  return v8;
}

- (void)_validateResult:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playerPath];
  v9 = [v7 isAllowedAccessToDataFromPlayerPath:v8];

  if ((v9 & 1) == 0)
  {
    if (![v6 error])
    {
      [v6 setError:3];
    }

    [v6 setNowPlayingClient:0];
    [v6 setPlayerClient:0];
    v10 = [v6 originClient];
    v11 = [v10 playerPath];
    [v6 setPlayerPath:v11];

    [v6 setXpcClient:0];
  }

  if (MSVDeviceOSIsInternalInstall() && ([v7 isEntitledFor:512] & 1) == 0)
  {
    v12 = [v7 bundleIdentifier];
    if (qword_100529460 != -1)
    {
      sub_1003A9894();
    }

    v13 = self;
    objc_sync_enter(v13);
    if (v12 && ([qword_100529458 containsObject:v12] & 1) == 0)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1003A98A8(v7, v14);
      }

      v15 = v12;
      MRAnalyticsSendEvent();
      [qword_100529458 addObject:v15];
    }

    objc_sync_exit(v13);
  }
}

- (id)resolvePlayerPath:(id)a3 fromClient:(id)a4 useDefaultPlayerIfNoneSpecified:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003513C;
  v18 = sub_100035A54;
  v19 = 0;
  serialQueue = self->_serialQueue;
  v12 = v7;
  v13 = v8;
  msv_dispatch_sync_on_queue();
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)resolveExistingPlayerPath:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)onQueue_resolveExistingPlayerPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [v4 origin];
  if (!v5)
  {
    v6 = [(MRDNowPlayingServer *)self _onQueue_activeOriginClient];
    v5 = [v6 origin];
  }

  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:v5];
  v24 = v4;
  if (!v7)
  {

    v5 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    goto LABEL_15;
  }

  v8 = [v4 client];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v14 = [v7 activeNowPlayingClient];
    v10 = [v14 client];
  }

  v15 = [v7 deviceInfo];
  [v10 resolvePlaceholdersForDeviceInfo:v15];

  v16 = [v7 existingNowPlayingClientForClient:v10];
  if (!v16)
  {
    [v10 setProcessIdentifier:0];
  }

  v11 = [v4 player];
  if (!v11)
  {
    v17 = [v16 activePlayerClient];
    v11 = [v17 player];
  }

  v12 = [v16 existingPlayerClientForPlayer:v11];
  v13 = [v7 origin];
  if (!v16)
  {
LABEL_15:
    v18 = v10;
    v10 = v18;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v18 = [v16 client];

  if (!v12)
  {
LABEL_14:
    v19 = v11;
    goto LABEL_17;
  }

LABEL_16:
  v19 = [v12 player];
LABEL_17:
  v20 = v19;
  v21 = [[MRPlayerPath alloc] initWithOrigin:v13 client:v18 player:v19];
  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A99D4(v24, v21, v22);
  }

  return v21;
}

- (id)queryExistingPlayerPath:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_queryExistingPlayerPath:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [[MRDNowPlayingServerResult alloc] initWithUnresolvedPlayerPath:v4];
  v6 = objc_alloc_init(MRPlayerPath);
  v7 = [v4 origin];
  v8 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:v7];
  [(MRDNowPlayingServerResult *)v5 setOriginClient:v8];

  v9 = [(MRDNowPlayingServerResult *)v5 originClient];

  v10 = v5;
  if (!v9)
  {
    v23 = 5;
LABEL_7:
    [(MRDNowPlayingServerResult *)v10 setError:v23];
    goto LABEL_10;
  }

  v11 = [(MRDNowPlayingServerResult *)v5 originClient];
  v12 = [v11 origin];
  [v6 setOrigin:v12];

  v13 = [(MRDNowPlayingServerResult *)v5 originClient];
  v14 = [v13 existingNowPlayingClientForPlayerPath:v4];
  [(MRDNowPlayingServerResult *)v5 setNowPlayingClient:v14];

  v15 = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];

  v10 = v5;
  if (!v15)
  {
    v23 = 35;
    goto LABEL_7;
  }

  v16 = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];
  v17 = [v16 client];

  [v6 setClient:v17];
  v18 = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];
  v19 = [v18 existingPlayerClientForPlayerPath:v4];
  [(MRDNowPlayingServerResult *)v5 setPlayerClient:v19];

  v20 = [(MRDNowPlayingServerResult *)v5 playerClient];

  if (v20)
  {
    v21 = [(MRDNowPlayingServerResult *)v5 playerClient];
    v22 = [v21 player];

    [v6 setPlayer:v22];
  }

  else
  {
    [(MRDNowPlayingServerResult *)v5 setError:29];
  }

LABEL_10:
  v24 = [(MRDNowPlayingServer *)self xpcClientForPlayerPath:v4];
  [(MRDNowPlayingServerResult *)v5 setXpcClient:v24];

  v25 = [(MRDNowPlayingServerResult *)v5 xpcClient];

  if (!v25 && ![(MRDNowPlayingServerResult *)v5 error])
  {
    [(MRDNowPlayingServerResult *)v5 setError:4];
  }

  [(MRDNowPlayingServerResult *)v5 setPlayerPath:v6];

  return v5;
}

- (id)xpcClientForPlayerPath:(id)a3
{
  v4 = a3;
  v5 = [v4 origin];
  v6 = [v5 isLocal];

  if (v6)
  {
    v7 = [v4 origin];
    v8 = [(MRDNowPlayingServer *)self _hasForwarderForOrigin:v7];

    if (v8)
    {
      v9 = +[MRDMediaRemoteServer server];
      v10 = [v9 daemonClient];
      goto LABEL_13;
    }

    v12 = [v4 client];
    v9 = v12;
    if (!v12)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v13 = [v12 processIdentifier];
    v14 = [v9 bundleIdentifier];
    v11 = v14;
    if (v13 < 1)
    {
      if (!v14)
      {
        v10 = 0;
        goto LABEL_12;
      }

      v15 = +[MRDMediaRemoteServer server];
      v16 = [v15 clientForBundleIdentifier:v11];
    }

    else
    {
      v15 = +[MRDMediaRemoteServer server];
      v16 = [v15 clientForPID:v13];
    }

    v10 = v16;
  }

  else
  {
    v9 = +[MRDMediaRemoteServer server];
    v11 = [v4 origin];
    v10 = [v9 clientWithRegisteredCustomOrigin:v11];
  }

LABEL_12:

LABEL_13:

  return v10;
}

- (id)localPlayersForXpcClient:(id)a3
{
  v4 = a3;
  v5 = [(MRDNowPlayingServer *)self localOriginClient];
  v6 = objc_alloc_init(MRClient);
  v7 = [v4 pid];

  [v6 setProcessIdentifier:v7];
  v8 = [v5 existingNowPlayingClientForClient:v6];
  v9 = [v8 playerClients];

  return v9;
}

- (id)originClientForOrigin:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = v4;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)originClientForDeviceUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003513C;
  v16 = sub_100035A54;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F81C;
  block[3] = &unk_1004B7798;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)originClientForGroupLeaderOfDeviceUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_10003513C;
  v16 = sub_100035A54;
  v17 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011F97C;
  block[3] = &unk_1004B7798;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clearNowPlayingClientForXPCClient:(id)a3
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011FBC0;
  v22[3] = &unk_1004BD9C8;
  v4 = a3;
  v23 = v4;
  v24 = self;
  [v4 flushPendingPlaybackSessionMigrateEvents:v22];
  v5 = [MRClient alloc];
  v6 = [v4 pid];
  v7 = [v4 bundleIdentifier];
  v8 = [v5 initWithProcessIdentifier:v6 bundleIdentifier:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(MRDNowPlayingServer *)self originClients];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 origin];
        v16 = [v15 isLocallyHosted];

        if (v16)
        {
          v17 = [v14 origin];
          [(MRDNowPlayingServer *)self _removeNowPlayingClient:v8 forOrigin:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)restoreDeviceInfoToClient:(id)a3 handler:(id)a4
{
  v6 = a4;
  if ([a3 isEntitledFor:0x2000])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(MRDNowPlayingServer *)self originClients];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          v13 = [v12 deviceInfo];
          v14 = [v12 origin];
          [(MRDNowPlayingServer *)self postDeviceInfoDidChange:v13 previousDeviceInfo:0 forOrigin:v14 handler:v6];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)restoreClientState:(id)a3 handler:(id)a4
{
  v96 = a3;
  v6 = a4;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  v7 = [(MRDNowPlayingServer *)self originClients];
  v8 = [v7 countByEnumeratingWithState:&v139 objects:v148 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v140;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v140 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v139 + 1) + 8 * i) origin];
        [(MRDNowPlayingServer *)self postOriginDidRegister:v12 handler:v6];
      }

      v9 = [v7 countByEnumeratingWithState:&v139 objects:v148 count:16];
    }

    while (v9);
  }

  v13 = [(MRDNowPlayingServer *)self activePlayerPath];
  v14 = [(MRDNowPlayingServer *)self activePlayerClient];
  -[MRDNowPlayingServer postActiveOriginDidChange:withPlaybackState:handler:](self, "postActiveOriginDidChange:withPlaybackState:handler:", v13, [v14 playbackState], v6);

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = [(MRDNowPlayingServer *)self originClients];
  v86 = [obj countByEnumeratingWithState:&v135 objects:v147 count:16];
  if (v86)
  {
    v85 = *v136;
    v94 = v6;
    do
    {
      v15 = 0;
      do
      {
        if (*v136 != v85)
        {
          objc_enumerationMutation(obj);
        }

        v87 = v15;
        v16 = *(*(&v135 + 1) + 8 * v15);
        if ([v96 isEntitledFor:0x2000])
        {
          v17 = [v16 deviceInfo];
          v18 = [v16 origin];
          [(MRDNowPlayingServer *)self postDeviceInfoDidChange:v17 previousDeviceInfo:0 forOrigin:v18 handler:v6];
        }

        [v16 volume];
        v20 = v19;
        v21 = [v16 playerPath];
        LODWORD(v22) = v20;
        [(MRDNowPlayingServer *)self postVolumeDidChange:v21 volume:v6 handler:v22];

        v23 = [v16 isMuted];
        v24 = [v16 playerPath];
        [(MRDNowPlayingServer *)self postIsMutedDidChange:v24 isMuted:v23 handler:v6];

        v25 = [v16 volumeControlCapabilities];
        v26 = [v16 playerPath];
        [(MRDNowPlayingServer *)self postVolumeCapabilitiesDidChange:v26 capabilities:v25 handler:v6];

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v27 = [v16 nowPlayingClients];
        v28 = [v27 countByEnumeratingWithState:&v131 objects:v146 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v132;
          do
          {
            for (j = 0; j != v29; j = j + 1)
            {
              if (*v132 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [*(*(&v131 + 1) + 8 * j) playerPath];
              [(MRDNowPlayingServer *)self postClientDidRegisterForPlayerPath:v32 handler:v6];
            }

            v29 = [v27 countByEnumeratingWithState:&v131 objects:v146 count:16];
          }

          while (v29);
        }

        v33 = [v16 activePlayerPath];
        v34 = [v16 activeNowPlayingClient];
        v35 = [v34 activePlayerClient];
        -[MRDNowPlayingServer postNowPlayingApplicationDidChangeForPlayerPath:withPlaybackState:handler:](self, "postNowPlayingApplicationDidChangeForPlayerPath:withPlaybackState:handler:", v33, [v35 playbackState], v6);

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v88 = [v16 nowPlayingClients];
        v90 = [v88 countByEnumeratingWithState:&v127 objects:v145 count:16];
        if (v90)
        {
          v89 = *v128;
          v95 = v16;
          do
          {
            v36 = 0;
            do
            {
              if (*v128 != v89)
              {
                objc_enumerationMutation(v88);
              }

              v91 = v36;
              v37 = *(*(&v127 + 1) + 8 * v36);
              v38 = [v37 client];
              v39 = [v37 playerPath];
              [(MRDNowPlayingServer *)self postNowPlayingClientStateDidChange:v38 forPlayerPath:v39 handler:v6];

              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v92 = v37;
              v40 = [v37 playerClients];
              v41 = [v40 countByEnumeratingWithState:&v123 objects:v144 count:16];
              if (v41)
              {
                v42 = v41;
                v43 = *v124;
                do
                {
                  for (k = 0; k != v42; k = k + 1)
                  {
                    if (*v124 != v43)
                    {
                      objc_enumerationMutation(v40);
                    }

                    v45 = [*(*(&v123 + 1) + 8 * k) playerPath];
                    [(MRDNowPlayingServer *)self postPlayerDidRegisterForPlayerPath:v45 handler:v6];
                  }

                  v42 = [v40 countByEnumeratingWithState:&v123 objects:v144 count:16];
                }

                while (v42);
              }

              v46 = [v92 activePlayerClient];
              v47 = [v46 playerPath];
              v48 = [v92 activePlayerClient];
              -[MRDNowPlayingServer postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:](self, "postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:", v47, [v48 playbackState], v6);

              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v93 = [v92 playerClients];
              v98 = [v93 countByEnumeratingWithState:&v119 objects:v143 count:16];
              if (v98)
              {
                v97 = *v120;
                do
                {
                  v49 = 0;
                  do
                  {
                    if (*v120 != v97)
                    {
                      objc_enumerationMutation(v93);
                    }

                    v99 = v49;
                    v50 = *(*(&v119 + 1) + 8 * v49);
                    v51 = [v50 player];
                    v52 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postNowPlayingPlayerStateDidChange:v51 forPlayerPath:v52 handler:v6];

                    [v16 timeSincePlaying];
                    v53 = [NSDate dateWithTimeIntervalSinceNow:?];
                    [v53 timeIntervalSinceReferenceDate];
                    v55 = v54;

                    v56 = [v50 isPlaying];
                    v57 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postIsPlayingDidChange:v56 lastPlayingTimestamp:v57 forPlayerPath:v6 handler:v55];

                    v58 = [v50 playbackState];
                    v59 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackStateDidChange:v58 forPlayerPath:v59 handler:v6];

                    v60 = [v50 supportedRemoteControlCommandsData];
                    v61 = [v50 playerPath];
                    v115[0] = _NSConcreteStackBlock;
                    v115[1] = 3221225472;
                    v115[2] = sub_100120978;
                    v115[3] = &unk_1004BD9F0;
                    v62 = v96;
                    v116 = v62;
                    v117 = v50;
                    v63 = v6;
                    v118 = v63;
                    [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:v60 forPlayerPath:v61 handler:v115];

                    v64 = [v50 playbackQueueCapabilities];
                    v65 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackQueueCapabilitiesDidChange:v64 forPlayerPath:v65 handler:v63];

                    v66 = [v50 playbackQueue];
                    v67 = [v50 playerPath];
                    v110[0] = _NSConcreteStackBlock;
                    v110[1] = 3221225472;
                    v110[2] = sub_100120A24;
                    v110[3] = &unk_1004BDA18;
                    v68 = v62;
                    v111 = v68;
                    v69 = v66;
                    v112 = v69;
                    v113 = v50;
                    v70 = v63;
                    v114 = v70;
                    [(MRDNowPlayingServer *)self postPlaybackQueueDidChange:v69 nowPlayingItemDidChange:1 forPlayerPath:v67 handler:v110];

                    v71 = [v69 contentItems];
                    v72 = [v50 playerPath];
                    v105[0] = _NSConcreteStackBlock;
                    v105[1] = 3221225472;
                    v105[2] = sub_100120C24;
                    v105[3] = &unk_1004BDA18;
                    v73 = v68;
                    v106 = v73;
                    v107 = v50;
                    v74 = v69;
                    v108 = v74;
                    v75 = v70;
                    v109 = v75;
                    [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsDidChange:v71 forPlayerPath:v72 handler:v105];

                    v76 = [v74 contentItems];
                    v77 = [v50 playerPath];
                    v100[0] = _NSConcreteStackBlock;
                    v100[1] = 3221225472;
                    v100[2] = sub_100120D1C;
                    v100[3] = &unk_1004BDA18;
                    v101 = v73;
                    v102 = v50;
                    v78 = v74;
                    v103 = v78;
                    v79 = v75;
                    v104 = v79;
                    [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsArtworkDidChange:v76 forPlayerPath:v77 handler:v100];

                    v80 = [v50 participants];
                    v81 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackQueueParticipantsDidChange:v80 forPlayerPath:v81 handler:v79];

                    if ([v50 canBeNowPlayingPlayer])
                    {
                      v82 = [v50 playerPath];
                      [(MRDNowPlayingServer *)self postPlayerDidRegisterCanBeNowPlayingForPlayerPath:v82 handler:v79];
                    }

                    v49 = v99 + 1;
                    v6 = v94;
                    v16 = v95;
                  }

                  while (v98 != (v99 + 1));
                  v98 = [v93 countByEnumeratingWithState:&v119 objects:v143 count:16];
                }

                while (v98);
              }

              if ([v92 canBeNowPlaying])
              {
                v83 = [v92 activePlayerPath];
                [(MRDNowPlayingServer *)self postClientDidRegisterCanBeNowPlayingForPlayerPath:v83 handler:v6];
              }

              v36 = v91 + 1;
            }

            while ((v91 + 1) != v90);
            v90 = [v88 countByEnumeratingWithState:&v127 objects:v145 count:16];
          }

          while (v90);
        }

        v15 = v87 + 1;
      }

      while ((v87 + 1) != v86);
      v86 = [obj countByEnumeratingWithState:&v135 objects:v147 count:16];
    }

    while (v86);
  }
}

- (void)beginMusicHandoffSessionWithSource:(id)a3 destination:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100121078;
  v15[3] = &unk_1004BC458;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  sub_10019F130(v11, 0, v15, 7.0);
}

- (void)_handleGetAvailableOriginsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDNowPlayingServer *)self originClients];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) origin];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10012169C;
  v15[3] = &unk_1004B6E08;
  v16 = v7;
  v14 = v7;
  sub_100008278(v5, v15);
}

- (void)_handleSetActiveOriginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = MRCreateOriginFromXPCMessage();
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requesting to set active origin to %{public}@", &v8, 0x16u);
  }

  [(MRDNowPlayingServer *)self setActiveOrigin:v6];
}

- (void)_handleGetActiveOriginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDNowPlayingServer *)self activeOriginClient];
  v7 = [v6 origin];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012185C;
  v9[3] = &unk_1004B6E08;
  v10 = v7;
  v8 = v7;
  sub_100008278(v5, v9);
}

- (void)reregisterOrigin:(id)a3 deviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Re-registering origin %{public}@", buf, 0xCu);
  }

  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  [v9 removeOrigin:v6];

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  v11 = [v7 routingContextID];
  v12 = [v10 createCustomOriginClientForOrigin:v6 routingContextID:v11];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  [v13 removeOriginRequests:v6];

  v14 = +[MRNowPlayingOriginClientManager sharedManager];
  v15 = [v6 playerPath];
  v16 = [v14 originClientRequestsForPlayerPath:v15];

  [v16 setDeviceInfo:v7];
  v17 = [(MRDNowPlayingServer *)self originClientForOrigin:v6];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [v17 nowPlayingClients];
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v24 + 1) + 8 * v22) client];
        [v17 removeNowPlayingClientForClient:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

  [v17 setVolumeControlCapabilities:0];
  [v17 setVolume:0.0];
  [v17 clearDefaultSupportedCommandsData];
  [v17 setDeviceInfo:v7];
}

- (void)updateDeviceInfo:(id)a3 origin:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:a4];
  [v7 setDeviceInfo:v6];
}

- (void)_handleSetNowPlayingAppOverrideMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = xpc_dictionary_get_BOOL(v6, "MRXPC_NOWPLAYING_APP_OVERRIDE_ENABLED_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"disable";
    if (v8)
    {
      v10 = @"enable";
    }

    v25 = 138543618;
    v26 = v7;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requesting to %{public}@ itself as now playing app override", &v25, 0x16u);
  }

  v11 = [(MRDNowPlayingServer *)self overrideClient];
  v12 = +[MRDMediaRemoteServer server];
  v13 = [v12 nowPlayingServer];

  v14 = +[MROrigin localOrigin];
  v15 = [v13 originClientForOrigin:v14];

  v16 = [v15 existingNowPlayingClientForPid:{objc_msgSend(v11, "pid")}];
  if (v8)
  {
    v17 = +[MRPlayer defaultPlayer];
    v18 = [v16 playerClientForPlayer:v17];
    [v18 setCanBeNowPlayingPlayer:1];

    v19 = +[NSDate now];
    v20 = +[MRPlayer defaultPlayer];
    v21 = [v16 playerClientForPlayer:v20];
    [v21 setCanBeNowPlayingPlayerTimestamp:v19];

    v22 = v7;
  }

  else
  {
    v23 = [v11 pid];
    if (v23 != [v7 pid])
    {
      v24 = 3;
      goto LABEL_11;
    }

    v19 = +[MRPlayer defaultPlayer];
    v20 = [v16 playerClientForPlayer:v19];
    [v20 setCanBeNowPlayingPlayer:0];
    v22 = 0;
  }

  [(MRDNowPlayingServer *)self setOverrideClient:v22];
  v24 = 0;
LABEL_11:
  sub_10000F9E4(v6, v24);
}

- (void)_handleSetOverriddenNowPlayingAppMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  string = xpc_dictionary_get_string(v7, "MRXPC_NOWPLAYING_DISPLAYID_KEY");
  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enable";
    *buf = 138543874;
    v28 = v6;
    v29 = 2114;
    if (!string)
    {
      v10 = @"disable";
    }

    v30 = v10;
    v31 = 2114;
    v32 = string;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requesting to %{public}@ now playing app override to %{public}@", buf, 0x20u);
  }

  if (string)
  {
    v11 = +[MRDMediaRemoteServer server];
    v12 = [v11 clientForBundleIdentifier:string];

    if (v12)
    {
      +[MRDMediaRemoteServer server];
      v13 = v26 = self;
      v14 = [v13 nowPlayingServer];

      v15 = +[MROrigin localOrigin];
      v16 = [v14 originClientForOrigin:v15];

      v17 = [v16 existingNowPlayingClientForPid:{objc_msgSend(v12, "pid")}];
      v18 = +[MRPlayer defaultPlayer];
      v19 = [v17 playerClientForPlayer:v18];
      [v19 setCanBeNowPlayingPlayer:1];

      v20 = +[NSDate now];
      v21 = +[MRPlayer defaultPlayer];
      v22 = [v17 playerClientForPlayer:v21];
      [v22 setCanBeNowPlayingPlayerTimestamp:v20];

      [(MRDNowPlayingServer *)v26 setOverrideClient:v12];
      v23 = 0;
    }

    else
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [string length];
        v25 = @"<unknown>";
        if (v24)
        {
          v25 = string;
        }

        *buf = 138543362;
        v28 = v25;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Could not set override client. Client %{public}@ not found.", buf, 0xCu);
      }

      v23 = 4;
    }
  }

  else
  {
    [(MRDNowPlayingServer *)self setOverrideClient:0];
    v23 = 0;
  }

  sub_10000F9E4(v7, v23);
}

- (void)_handleSetCanBeNowPlayingAppMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:a4];
  v8 = [v7 nowPlayingClient];

  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v6, "MRXPC_NOWPLAYING_APP_ENABLED_KEY");
    v10 = [v7 nowPlayingClient];
    [v10 setCanBeNowPlaying:v9];
    if (v9 && xpc_dictionary_get_double(v6, "MRXPC_TIMESTAMP") > 2.22044605e-16)
    {
      v11 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v10 setCanBeNowPlayingTimestamp:v11];
LABEL_7:
    }
  }

  else
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 playerPath];
      v12 = 138412290;
      v13 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to set can be now playing app. No now playing client found for %@", &v12, 0xCu);
      goto LABEL_7;
    }
  }
}

- (void)_handleSetCanBeNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:a4];
  v8 = [v7 playerClient];

  if (v8)
  {
    v9 = xpc_dictionary_get_BOOL(v6, "MRXPC_NOWPLAYING_APP_ENABLED_KEY");
    v10 = [v7 playerClient];
    [v10 setCanBeNowPlayingPlayer:v9];
    v11 = [v7 nowPlayingClient];
    [v11 setPerPlayerCanBeNowPlaying:1];
    if (v9 && xpc_dictionary_get_double(v6, "MRXPC_TIMESTAMP") > 2.22044605e-16)
    {
      v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [v10 setCanBeNowPlayingPlayerTimestamp:v12];
    }

    goto LABEL_7;
  }

  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 playerPath];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unable to set can be now playing player. No player client found for %@", &v13, 0xCu);
LABEL_7:
  }
}

- (void)_handleBeginApplicationActivityMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateAppActivityFromXPCMessage();
  MSVDeviceOSIsInternalInstall();
  v7 = [(MRDNowPlayingServer *)self localOriginClient];
  MSVDeviceOSIsInternalInstall();
  if (v7)
  {
    v8 = [v6 mutableCopy];
    MSVDeviceOSIsInternalInstall();
    [v7 setActivity:v8];

    v9 = 0;
  }

  else
  {
    v9 = 5;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100122534;
  v10[3] = &unk_1004BDA88;
  v11 = v9;
  sub_100008278(v5, v10);
}

- (void)_handleGetApplicationActivityMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDNowPlayingServer *)self localOriginClient];
  v7 = [v6 activity];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100122608;
  v9[3] = &unk_1004B6E08;
  v10 = v7;
  v8 = v7;
  sub_100008278(v5, v9);
}

- (void)_handleEndApplicationActivityMessage:(id)a3 fromClient:(id)a4
{
  v7 = a3;
  v5 = [(MRDNowPlayingServer *)self localOriginClient];
  MSVDeviceOSIsInternalInstall();
  if (v5)
  {
    [v5 setActivity:0];
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  sub_10000F9E4(v7, v6);
}

- (void)_handleSetPlaybackQueue:(id)a3 fromClient:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v22 fromClient:v6];
  v8 = MRCreatePlaybackQueueFromXPCMessage();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 range];
    v12 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:v10, v11];
    v13 = [v6 playbackQueueRequests];
    v14 = [v7 playerPath];
    v15 = [v13 subscriptionControllerForPlayerPath:v14];

    [v15 subscribeToPlaybackQueue:v9 forRequest:v12];
    v16 = +[MRDMediaRemoteServer server];
    v17 = [v16 daemonClient];

    v18 = [v17 playbackQueueRequests];
    v19 = [v7 playerPath];
    v20 = [v18 subscriptionControllerForPlayerPath:v19];

    [v20 subscribeToPlaybackQueue:v9 forRequest:v12];
  }

  v21 = [v7 playerClient];
  [v21 setPlaybackQueue:v9];

  sub_10000F9E4(v22, [v7 error]);
}

- (void)_handleRequestPlaybackQueueCapabilities:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122914;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleSetPlaybackQueueCapabilities:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:a4];
  v7 = MRCreatePlaybackQueueCapabilitiesFromXPCMessage();
  v8 = [v9 playerClient];
  [v8 setPlaybackQueueCapabilities:v7];

  sub_10000F9E4(v6, [v9 error]);
}

- (void)_handleSetHardwareRemoteBehaviorMessage:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_HARDWARE_REMOTE_BEHAVIOR_KEY");
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MRMediaRemoteCopyHardwareRemoteBehaviorDescription();
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting hardware remote behavior to %{public}@ for client %{public}@", &v10, 0x16u);
  }

  [v5 setHardwareRemoteBehavior:uint64];
  sub_10000F9E4(v6, 0);
}

- (void)_handleResetPlaybackQueueRequests:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v11 = MRCreatePlayerPathFromXPCMessage();
  v7 = [v5 playbackQueueRequests];

  v8 = [v7 subscriptionControllerForPlayerPath:v11];

  v9 = MRCreateDataFromXPCMessage();
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
  if (v10)
  {
    [v8 restoreStateFromController:v10];
  }
}

- (void)_handleGetClientPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122CFC;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleSetClientPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:v6 useDefaultPlayerIfNoneSpecified:0];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  v11 = [v8 client];
  v12 = [v10 nowPlayingClient];
  [v12 setClient:v11];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100122EC0;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(v7, v14);
}

- (void)_handleUpdateClientPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:v6 useDefaultPlayerIfNoneSpecified:0];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  v11 = [v10 nowPlayingClient];
  v12 = [v8 client];
  [v11 updateClient:v12];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100123048;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(v7, v14);
}

- (void)_handleGetPlayerPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100123174;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleSetPlayerPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:v6];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  v11 = [v10 playerClient];
  [v11 setPlayerPath:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012331C;
  v13[3] = &unk_1004B6E08;
  v14 = v10;
  v12 = v10;
  sub_100008278(v7, v13);
}

- (void)_handleUpdatePlayerPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:v6];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  v11 = [v10 playerClient];
  v12 = [v8 player];
  [v11 updatePlayer:v12];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001234A0;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(v7, v14);
}

- (void)_handleGetPlaybackStateMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001235B4;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleSetPlaybackStateMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:a4];
  v8 = [v7 nowPlayingClient];

  if (v8)
  {
    uint64 = xpc_dictionary_get_uint64(v6, "MRXPC_PLAYBACK_STATE_KEY");
    v10 = xpc_dictionary_get_double(v6, "MRXPC_TIMESTAMP");
    v11 = [v7 playerClient];
    v12 = v11;
    if (v10 <= 0.0)
    {
      [v11 updatePlaybackState:uint64 date:0];
    }

    else
    {
      v13 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v10];
      [v12 updatePlaybackState:uint64 date:v13];
    }
  }

  else
  {
    v12 = _MRLogForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v7 playerPath];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to set playback state. No now playing client found for %@", &v15, 0xCu);
    }
  }

  sub_10000F9E4(v6, [v7 error]);
}

- (void)_handleGetAnyAppIsPlayingMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v7 = [v8 originClient];
  LODWORD(self) = [v7 isPlaying];

  sub_10000BEE0(v6, "MRXPC_APP_IS_PLAYING_KEY", 2, self, 0);
}

- (void)_handleRequestVideoThumbnailsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:v7];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 xpcClient];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received video thumbnails request from %{public}@ for %{public}@", &v17, 0x16u);
  }

  v11 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 xpcClient];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying video thumbnails request to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x700000000000004uLL);
    v15 = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    v16 = [v8 xpcClient];
    [v16 relayXPCMessage:v6 andReply:1];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9A5C();
    }

    sub_10000F9E4(v6, [v8 error]);
  }
}

- (void)_handleRequestAudioAmplitudeSamplesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:v7];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 xpcClient];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio amplitude samples request from %{public}@ for %{public}@", &v17, 0x16u);
  }

  v11 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 xpcClient];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying audio amplitude samples request to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x700000000000005uLL);
    v15 = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    v16 = [v8 xpcClient];
    [v16 relayXPCMessage:v6 andReply:1];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9A90();
    }

    sub_10000F9E4(v6, [v8 error]);
  }
}

- (void)_handleSendLyricsEvent:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:v7];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 xpcClient];
    v17 = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received lyrics event from client %{public}@ and sending to %{public}@", &v17, 0x16u);
  }

  v11 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v8 xpcClient];
      v17 = 138543362;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying lyrics event to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(v6, "MRXPC_MESSAGE_ID_KEY", 0x700000000000006uLL);
    v15 = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    v16 = [v8 xpcClient];
    [v16 relayXPCMessage:v6 andReply:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9AC4();
    }

    sub_10000F9E4(v6, [v8 error]);
  }
}

- (void)_handleResolvePlayerPath:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v8];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v6 displayName];
    *buf = 138543874;
    v16 = v12;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "%{public}@ is requesting to resolve playerPath %{public}@ -> %{public}@", buf, 0x20u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012407C;
  v13[3] = &unk_1004B6E08;
  v14 = v9;
  v11 = v9;
  sub_100008278(v7, v13);
}

- (void)_handleGetNowPlayingClientsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = v6;
  v19 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:v7];
  v8 = [v19 originClient];
  v9 = [v8 nowPlayingClients];

  v21 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v25 + 1) + 8 * v14);
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10012437C;
        v22[3] = &unk_1004B7978;
        v23 = v7;
        v24 = v15;
        v16 = objc_retainBlock(v22);
        if ((v16[2])())
        {
          [v21 addObject:v15];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  [v21 sortUsingComparator:&stru_1004BDAC8];
  v17 = [v21 msv_map:&stru_1004BDB08];
  v18 = [NSPropertyListSerialization dataWithPropertyList:v17 format:200 options:0 error:0];
  sub_10001673C(v20, "MRXPC_NOWPLAYING_CLIENT_ARRAY_DATA_KEY", v18, 0);
}

- (void)_handleSetNowPlayingClientMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [v8 origin];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124674;
  block[3] = &unk_1004BC9F8;
  block[4] = self;
  v11 = v9;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  v18 = &v19;
  dispatch_sync(serialQueue, block);
  sub_10000F9E4(v6, *(v20 + 6));

  _Block_object_dispose(&v19, 8);
}

- (void)_handleGetNowPlayingClientMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012483C;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleRemoveNowPlayingClientMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v7 = [v10 originClient];
  v8 = [v10 nowPlayingClient];
  v9 = [v8 client];
  [v7 removeNowPlayingClientForClient:v9];

  sub_10000F9E4(v6, [v10 error]);
}

- (void)_handleGetNowPlayingPlayersMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8 = [v7 nowPlayingClient];
  v9 = [v8 playerClients];

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      v15 = 0;
      do
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * v15);
        v17 = [v7 nowPlayingClient];
        v18 = [v17 canBeNowPlayingForPlayerClient:v16];

        if (v18)
        {
          v19 = [v16 player];
          v20 = [v19 data];
          [v10 addObject:v20];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v21 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:0];
  sub_10001673C(v6, "MRXPC_NOWPLAYING_PLAYER_ARRAY_DATA_KEY", v21, 0);
}

- (void)_handleSetNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = MRCreatePlayerPathFromXPCMessage();
  v8 = [(MRDNowPlayingServer *)self resolvePlayerPath:v7 fromClient:v6 useDefaultPlayerIfNoneSpecified:0];

  v9 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v8];
  v10 = [v9 playerClient];
  v11 = [v9 nowPlayingClient];
  [v11 setActivePlayerClient:v10];

  v12 = [v7 player];
  if (v12)
  {
    v13 = v12;
    v14 = [v9 playerClient];

    if (!v14)
    {
      goto LABEL_5;
    }
  }

  v15 = [v9 nowPlayingClient];

  if (v15)
  {
    v16 = 0;
  }

  else
  {
LABEL_5:
    v16 = [v9 error];
  }

  sub_10000F9E4(v17, v16);
}

- (void)_handleGetNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100124D70;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(v6, v8);
}

- (void)_handleRemoveNowPlayingPlayerMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v7 = [v10 playerClient];
  v8 = [v7 player];

  v9 = [v10 nowPlayingClient];
  [v9 removePlayerClientForPlayer:v8];

  sub_10000F9E4(v6, [v10 error]);
}

- (void)_handleGetActivePlayerPathsForLocalOriginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [(MRDNowPlayingServer *)self localOriginClient];
  v7 = [v6 activePlayerClients];
  v9 = [v7 mr_map:&stru_1004BDB48];

  v8 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];
  sub_10001673C(v5, "MRXPC_NOWPLAYING_PLAYER_PATH_ARRAY_DATA_KEY", v8, 0);
}

- (void)_handleGetPlayerPictureInPictureEnabledMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8 = [v7 playerClient];
  v9 = [v8 isPictureInPictureEnabled];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100125094;
  v11[3] = &unk_1004BDB70;
  v12 = v7;
  v13 = v9;
  v10 = v7;
  sub_100008278(v6, v11);
}

- (void)_handleSetPlayerPictureInPictureEnabledMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:a4];
  v7 = xpc_dictionary_get_BOOL(v6, "MRXPC_PICTURE_IN_PICTURE_ENABLED_KEY");
  v8 = [v9 playerClient];
  [v8 setPictureInPictureEnabled:v7];

  sub_10000F9E4(v6, [v9 error]);
}

- (void)_handleContentItemChangedMessage:(id)a3 fromClient:(id)a4
{
  v10 = a3;
  v5 = [MRDNowPlayingServer queryExistingPlayerPathForXPCMessage:"queryExistingPlayerPathForXPCMessage:forClient:" forClient:?];
  v6 = [v5 playerClient];

  if (v6)
  {
    v7 = MRCreateContentItemsFromXPCMessage();
    if (v7)
    {
      v8 = [[MRPlaybackQueue alloc] initWithContentItems:v7];
      if (v8)
      {
        v9 = [v5 playerClient];
        [v9 updatePlaybackQueue:v8 fromRequest:0];
      }
    }
  }

  sub_10000F9E4(v10, [v5 error]);
}

- (void)_handleContentItemArtworkChangedMessage:(id)a3 fromClient:(id)a4
{
  v9 = a3;
  v5 = [MRDNowPlayingServer queryExistingPlayerPathForXPCMessage:"queryExistingPlayerPathForXPCMessage:forClient:" forClient:?];
  v6 = [v5 playerClient];

  if (v6)
  {
    v7 = MRCreateContentItemsFromXPCMessage();
    v8 = [v5 playerClient];
    [v8 notifyArtworkChangedForContentItems:v7];
  }

  sub_10000F9E4(v9, [v5 error]);
}

- (void)_handleGetDeviceInfo:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:v7];
  v9 = [v8 error];
  v10 = [v7 isEntitledFor:0x2000];

  if (v10)
  {
    v11 = [v8 originClient];
    v12 = [v11 deviceInfo];
  }

  else
  {
    v12 = 0;
    v9 = 3;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100125480;
  v14[3] = &unk_1004BDB98;
  v16 = v9;
  v15 = v12;
  v13 = v12;
  sub_100008278(v6, v14);
}

- (void)_handleGetElectedPlayerPathMessage:(id)a3 fromClient:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012554C;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(a3, v4);
}

- (void)_handleGetProactiveRecommendedPlayerMessage:(id)a3 fromClient:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100125624;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(a3, v4);
}

- (void)_handlePlaybackSessionRequest:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateProtobufFromXPCMessage();
  v7 = [v6 playerPath];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];

  if ([v8 error])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001257CC;
    v10[3] = &unk_1004B6E08;
    v11 = v8;
    sub_100008278(v5, v10);
  }

  else
  {
    v9 = [v8 xpcClient];
    [v9 relayXPCMessage:v5 andReply:1 resultCallback:0];
  }
}

- (void)_handleGetSupportedCommandsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 setHasRequestedSupportedCommands:1];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = sub_10003513C;
  v22[4] = sub_100035A54;
  v23 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100125A60;
  v18[3] = &unk_1004BDBC0;
  v18[4] = self;
  v8 = v6;
  v19 = v8;
  v9 = v7;
  v20 = v9;
  v21 = v22;
  v10 = objc_retainBlock(v18);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100125BF4;
  v16[3] = &unk_1004BDBE8;
  v11 = v8;
  v17 = v11;
  v12 = objc_retainBlock(v16);
  v13 = v9;
  v14 = v12;
  v15 = v10;
  (v10[2])();

  _Block_object_dispose(v22, 8);
}

- (void)_handleSetSupportedCommandsMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MRDMediaRemoteServer server];
  v8 = [v7 nowPlayingServer];
  v9 = [v8 queryPlayerPathForXPCMessage:v5 fromClient:v6];

  v10 = [v9 nowPlayingClient];

  if (v10)
  {
    v11 = MRCreateSupportedCommandsDataFromXPCMessage();
    v12 = [v9 playerClient];
    [v12 setSupportedRemoteControlCommandsData:v11];
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ERROR: now playing client could not be found for setting supported commands", v13, 2u);
    }
  }

  sub_10000F9E4(v5, [v9 error]);
}

- (void)_handleSetDefaultSupportedCommandsMessage:(id)a3 fromClient:(id)a4
{
  v30 = a3;
  v6 = a4;
  v7 = MRCreateSupportedCommandsDataFromXPCMessage();
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 nowPlayingServer];
  v10 = [v9 queryExistingPlayerPathForXPCMessage:v30 forClient:v6];

  v11 = [v10 unresolvedPlayerPath];
  v12 = [v11 client];
  v13 = [v12 bundleIdentifier];

  v14 = [v6 bundleIdentifier];
  if ([v13 isEqualToString:v14])
  {
  }

  else
  {
    v15 = [v6 isEntitledFor:256];

    if ((v15 & 1) == 0)
    {
      v29 = 3;
      goto LABEL_8;
    }
  }

  v16 = [v10 originClient];
  [v16 updateDefaultSupportedCommandsData:v7 forClient:v13];

  v17 = [v10 nowPlayingClient];

  if (!v17)
  {
    v18 = objc_alloc_init(MRPlayerPath);
    v19 = [v10 originClient];
    v20 = [v19 origin];
    [v18 setOrigin:v20];

    v21 = objc_alloc_init(MRClient);
    [v18 setClient:v21];

    v22 = [v10 unresolvedPlayerPath];
    v23 = [v22 client];
    v24 = [v23 bundleIdentifier];
    v25 = [v18 client];
    [v25 setBundleIdentifier:v24];

    [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:v7 forPlayerPath:v18 handler:0];
  }

  v26 = objc_alloc_init(NSMutableDictionary);
  v27 = [v10 unresolvedPlayerPath];
  MRAddPlayerPathToUserInfo();

  v28 = +[MRDMediaRemoteServer server];
  [v28 postClientNotificationNamed:_MRMediaRemoteDefaultSupportedCommandsDidChangeNotification userInfo:v26];

  v29 = 0;
LABEL_8:
  sub_10000F9E4(v30, v29);
}

- (void)_handleGetLastPlayingDateMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreatePlayerPathFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v6];
  [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001268D0;
  v10[3] = &unk_1004B6E30;
  v12 = v11 = v6;
  v8 = v12;
  v9 = v6;
  sub_100008278(v5, v10);
}

- (void)_handleSetPlayerClientPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateProtobufFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:v6 fromClient:v7];

  v10 = [v9 playerClient];

  if (v10)
  {
    v11 = [v9 playerClient];
    v12 = [v8 lastPlayingDate];
    [v11 updateLastPlayingDate:v12];
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Unable to set properties from message %@. No player client found.", &v13, 0xCu);
    }
  }

  sub_10000F9E4(v6, [v9 error]);
}

- (void)_handleSetOriginClientPropertiesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateProtobufFromXPCMessage();
  v7 = MRCreateOriginFromXPCMessage();
  v8 = [(MRDNowPlayingServer *)self originClientForOrigin:v7];
  if (v8)
  {
    v9 = [v6 lastPlayingDate];
    [v8 updateLastPlayingDate:v9];

    v10 = [v6 devicePlaybackSessionID];
    [v8 setDevicePlaybackSessionID:v10];

    v11 = v5;
    v12 = 0;
  }

  else
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Unable to set properties from message %@. No origin client found for %@", &v14, 0x16u);
    }

    v11 = v5;
    v12 = 5;
  }

  sub_10000F9E4(v11, v12);
}

- (void)_handleRegisterForWakingNowPlayingNotifications:(id)a3 fromClient:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = MRCreatePlayerPathArrayFromXPCMessage();
  if ([v5 isEntitledFor:128])
  {
    [v5 setWantsAssertionsForNotificationsWithPlayerPath:v7];
    v8 = 0;
  }

  else
  {
    v8 = [[NSError alloc] initWithMRError:2 format:{@"Unable to register for waking now playing notifications without entitlement: %@", @"com.apple.mediaremote.waking-now-playing-notifications"}];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100126DE8;
  v10[3] = &unk_1004B6E08;
  v11 = v8;
  v9 = v8;
  sub_100008278(v6, v10);
}

- (void)_handleGetAudioFormatContentInfoForOriginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateOriginFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:v6];
  v8 = [v7 nowPlayingAudioFormatContentInfos];
  v9 = v8;
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100126F80;
    v11[3] = &unk_1004B6E08;
    v12 = v8;
    sub_100008278(v5, v11);
  }

  else
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Unable to get audio format content info for origin: %{public}@ | client %{public}@", buf, 0x20u);
    }

    sub_10000F9E4(v5, 5u);
  }
}

- (void)_handleGetImageDimensionsForArtworkDataMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreateDataFromXPCMessage();
  [MRImageUtilities imageDimensionsForImageData:v5 error:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100127054;
  v8[3] = &unk_1004BDD10;
  v8[4] = v6;
  v8[5] = v7;
  sub_100008278(v4, v8);
}

- (void)_handleFetchPlaybackQueueParticipantsMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:v6 forClient:a4];
  v8 = [v7 playerClient];
  v9 = [v8 participants];
  v10 = [v9 msv_compactMap:&stru_1004BDD50];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001271E0;
  v13[3] = &unk_1004B6E30;
  v14 = v10;
  v15 = v7;
  v11 = v7;
  v12 = v10;
  sub_100008278(v6, v13);
}

- (void)_handleBeginMusicHandoffSessionMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = MRCreateDataFromXPCMessage();
  v7 = [[MRMusicHandoffSession alloc] initWithProtobufData:v6];
  v8 = [v7 sourcePlayerPath];
  v9 = [v7 destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012737C;
  v11[3] = &unk_1004BDDA0;
  v12 = v5;
  v10 = v5;
  [(MRDNowPlayingServer *)self beginMusicHandoffSessionWithSource:v8 destination:v9 completion:v11];
}

- (void)_handleSendMusicHandoffEventMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateDataFromXPCMessage();
  v9 = [[MRMusicHandoffEvent alloc] initWithProtobufData:v8];
  v10 = [MRPlayerPath alloc];
  v11 = [v7 createNowPlayingClient];

  v12 = [v10 initWithOrigin:0 client:v11 player:0];
  v13 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v12];
  v14 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v13];

  if ([v14 error])
  {
    v15 = [[NSError alloc] initWithMRError:{objc_msgSend(v14, "error")}];
  }

  else
  {
    v16 = [v14 playerClient];
    v15 = [v16 handleHandoffEvent:v9];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100127848;
  v19[3] = &unk_1004B6E30;
  v20 = v15;
  v21 = v6;
  v17 = v6;
  v18 = v15;
  sub_100008278(v17, v19);
}

- (void)_handleGetMediaSuggestionDeviceUIDMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012794C;
  v6[3] = &unk_1004B6E30;
  v7 = [[NSError alloc] initWithMRError:6];
  v8 = 0;
  v5 = v7;
  sub_100008278(v4, v6);
}

- (void)nowPlayingPlayerClient:(id)a3 playerStateDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postNowPlayingPlayerStateDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)nowPlayingPlayerClient:(id)a3 supportedCommandsDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)nowPlayingPlayerClient:(id)a3 playbackQueueCapabilitiesDidChange:(unint64_t)a4
{
  v6 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueCapabilitiesDidChange:a4 forPlayerPath:v6 handler:0];
}

- (void)nowPlayingPlayerClient:(id)a3 playbackQueueContentItemsDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)nowPlayingPlayerClient:(id)a3 playbackQueueArtworkContentItemsDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsArtworkDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)nowPlayingPlayerClient:(id)a3 playerCanBeNowPlayingDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 playerPath];
  if (v4)
  {
    [(MRDNowPlayingServer *)self postPlayerDidRegisterCanBeNowPlayingForPlayerPath:v6 handler:0];
  }

  else
  {
    [(MRDNowPlayingServer *)self postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:v6 handler:0];
  }
}

- (void)nowPlayingPlayerClient:(id)a3 playbackQueueParticipantsDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueParticipantsDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)startObservingNowPlayingInfoForNowPlayingPlayerClient:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_nowPlayingInfoObserverQueue);
  v5 = [v4 playerPath];
  objc_initWeak(location, self);
  objc_initWeak(&from, v4);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001282B0;
  v25[3] = &unk_1004BDDC8;
  objc_copyWeak(&v27, location);
  v8 = v5;
  v26 = v8;
  objc_copyWeak(&v28, &from);
  v9 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v25];
  nowPlayingInfoObserverHandle = self->_nowPlayingInfoObserverHandle;
  self->_nowPlayingInfoObserverHandle = v9;

  nowPlayingInfoObserverQueue = self->_nowPlayingInfoObserverQueue;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100128468;
  v22[3] = &unk_1004BDDF0;
  objc_copyWeak(&v23, location);
  objc_copyWeak(&v24, &from);
  v12 = [MSVTimer timerWithInterval:nowPlayingInfoObserverQueue queue:v22 block:8.0];
  wakeDeviceTimer = self->_wakeDeviceTimer;
  self->_wakeDeviceTimer = v12;

  v14 = [v4 playbackQueue];
  v15 = [v14 contentItems];
  v16 = [v15 firstObject];
  v17 = [v16 metadata];
  v18 = [v17 mediaType];

  if (v18)
  {
    v19 = self->_nowPlayingInfoObserverQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001284CC;
    v20[3] = &unk_1004B68F0;
    v20[4] = self;
    v21 = v4;
    dispatch_async(v19, v20);
  }

  objc_destroyWeak(&v24);
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v27);
  objc_destroyWeak(&from);
  objc_destroyWeak(location);
}

- (void)stopObservingNowPlayingInfo
{
  dispatch_assert_queue_V2(self->_nowPlayingInfoObserverQueue);
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self->_nowPlayingInfoObserverHandle];

  wakeDeviceTimer = self->_wakeDeviceTimer;

  [(MSVTimer *)wakeDeviceTimer invalidate];
}

- (void)wakeDeviceIfNecessaryForNowPlayingPlayerClient:(id)a3
{
  v14 = a3;
  dispatch_assert_queue_V2(self->_nowPlayingInfoObserverQueue);
  [(MRDNowPlayingServer *)self stopObservingNowPlayingInfo];
  v4 = [v14 playerPath];
  v5 = [v14 playbackQueue];
  v6 = [v5 contentItems];
  v7 = [v6 firstObject];
  v8 = [v7 metadata];
  v9 = [v8 mediaType];

  if (v9 == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [v14 isPlaying];
  }

  v11 = [(MRDNowPlayingServer *)self localOriginClient];
  v12 = [v11 deviceInfo];

  if (v10 && ([v12 isAirPlayActive] & 1) == 0 && (objc_msgSend(v12, "isProxyGroupPlayer") & 1) == 0)
  {
    v13 = [[NSString alloc] initWithFormat:@"Playback started of type %ld for %@", v9, v4];
    sub_1001A02A4(1);
  }
}

- (void)nowPlayingClient:(id)a3 activePlayerDidChangeFromPlayerClient:(id)a4 toPlayerClient:(id)a5
{
  v9 = a3;
  v7 = a5;
  v8 = [v7 playerPath];
  if (!v8)
  {
    v8 = [v9 playerPath];
  }

  -[MRDNowPlayingServer postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:](self, "postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:", v8, [v7 playbackState], 0);
  [(MRDNowPlayingServer *)self maybePostDistributedNotifications];
}

- (void)nowPlayingClient:(id)a3 clientStateDidChange:(id)a4
{
  v6 = a4;
  v7 = [a3 playerPath];
  [(MRDNowPlayingServer *)self postNowPlayingClientStateDidChange:v6 forPlayerPath:v7 handler:0];
}

- (void)nowPlayingClient:(id)a3 playerDidRegister:(id)a4
{
  v5 = [a4 playerPath];
  [(MRDNowPlayingServer *)self postPlayerDidRegisterForPlayerPath:v5 handler:0];
}

- (void)nowPlayingClient:(id)a3 playerDidUnregister:(id)a4
{
  v5 = a4;
  v6 = [v5 playbackState];
  v7 = [v5 canBeNowPlayingPlayer];
  v8 = [v5 playerPath];
  [(MRDNowPlayingServer *)self postPlayerDidUnregisterWithPlaybackState:v6 canBeNowPlaying:v7 forPlayerPath:v8 handler:0];

  v9 = [v5 handoffSessions];
  v10 = [v9 objectEnumerator];
  v11 = [v10 allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v17 + 1) + 8 * v16) invalidate];
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

- (void)nowPlayingPlayerClient:(id)a3 clientCanBeNowPlayingDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 playerPath];
  if (v4)
  {
    [(MRDNowPlayingServer *)self postClientDidRegisterCanBeNowPlayingForPlayerPath:v6 handler:0];
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientDidUnregisterCanBeNowPlayingForPlayerPath:v6 handler:0];
  }
}

- (void)nowPlayingOriginClient:(id)a3 applicationActivityDidBegin:(id)a4
{
  v5 = kMRApplicationActivityHasBegunNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  v9 = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)nowPlayingOriginClient:(id)a3 applicationActivityDidEnd:(id)a4
{
  v5 = kMRApplicationActivityHasEndedNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  v9 = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)nowPlayingOriginClient:(id)a3 applicationActivityStatusDidChange:(id)a4
{
  v5 = kMRApplicationActivityStatusDidChangeNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  v9 = a4;
  v6 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)handleNowPlayingOriginClient:(id)a3 deviceInfoDidChange:(id)a4 previousDeviceInfo:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[MRNowPlayingOriginClientManager sharedManager];
  v12 = [v10 playerPath];
  v14 = [v11 existingOriginClientRequestsForPlayerPath:v12];

  [v14 setDeviceInfo:v9];
  v13 = [v10 origin];

  [(MRDNowPlayingServer *)self postDeviceInfoDidChange:v9 previousDeviceInfo:v8 forOrigin:v13 handler:0];
}

- (void)nowPlayingOriginClient:(id)a3 clientDidRegister:(id)a4
{
  v5 = [a4 playerPath];
  [(MRDNowPlayingServer *)self postClientDidRegisterForPlayerPath:v5 handler:0];
}

- (void)nowPlayingOriginClient:(id)a3 clientDidUnregister:(id)a4
{
  v6 = a4;
  v17 = a3;
  v7 = [(MRDNowPlayingOriginClient *)v17 origin];
  v8 = [v7 isHosted];
  localOriginClient = v17;
  if (v8)
  {
    localOriginClient = self->_localOriginClient;
  }

  v10 = localOriginClient;

  v11 = [v6 playerPath];
  v12 = [v11 client];
  v13 = [v12 bundleIdentifier];
  v14 = [(MRDNowPlayingOriginClient *)v10 defaultSupportedCommandsDataForClient:v13];

  v15 = [v6 playerPath];
  v16 = [v6 canBeNowPlaying];

  [(MRDNowPlayingServer *)self postClientDidUnregisterForPlayerPath:v15 hasDefaultSupportedCommands:v14 != 0 canBeNowPlaying:v16 handler:0];
}

- (void)nowPlayingOriginClient:(id)a3 currentRouteVolumeDidChange:(float)a4
{
  v7 = [a3 playerPath];
  *&v6 = a4;
  [(MRDNowPlayingServer *)self postVolumeDidChange:v7 volume:0 handler:v6];
}

- (void)nowPlayingOriginClient:(id)a3 activePlayerClientsDidChange:(id)a4
{
  v5 = [a3 origin];
  [(MRDNowPlayingServer *)self postActivePlayerPathsDidChangeForOrigin:v5 handler:0];
}

- (void)nowPlayingOriginClientPlaybackDidTimeout:(id)a3
{
  v4 = a3;
  v5 = getpid();
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = [v4 playerPath];

  MRAddPlayerPathToUserInfo();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129298;
  v8[3] = &unk_1004BDE10;
  v9 = v5;
  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemotePlaybackDidTimeoutNotification userInfo:v6 predicate:v8];
}

- (void)nowPlayingOriginClientDidChangeAudioFormatContentInfo:(id)a3
{
  v4 = [a3 origin];
  [(MRDNowPlayingServer *)self postAudioFormatContentInfoDidChangeForOrigin:v4 handler:0];
}

- (void)nowPlayingServer:(id)a3 activeOriginDidChangeFromOriginClient:(id)a4 toOriginClient:(id)a5
{
  v6 = a5;
  v7 = [v6 activePlayerPath];
  v8 = [v6 activeNowPlayingClient];

  v9 = [v8 activePlayerClient];
  -[MRDNowPlayingServer postActiveOriginDidChange:withPlaybackState:handler:](self, "postActiveOriginDidChange:withPlaybackState:handler:", v7, [v9 playbackState], 0);

  [(MRDNowPlayingServer *)self maybePostDistributedNotifications];
}

- (BOOL)nowPlayingLauncher:(id)a3 shouldRelaunch:(id)a4
{
  result = 0;
  if (MSVDeviceIsAudioAccessory())
  {
    v5 = +[MRUserSettings currentSettings];
    v6 = [v5 homepodDemoMode];

    if ((v6 & 1) == 0 && [(MRDNowPlayingServer *)self localActivePlayerIsPlaying])
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)lockScreenPlatterActive
{
  v2 = [(MRDNowPlayingServer *)self lockScreenController];
  v3 = [v2 isLockScreenWidgetActive];

  return v3;
}

- (BOOL)lockScreenRecommendationActive
{
  v2 = [(MRDNowPlayingServer *)self lockScreenController];
  v3 = [v2 isLockScreenRecommendationActive];

  return v3;
}

- (BOOL)hasElectedPlayer
{
  v2 = [(MRDNowPlayingServer *)self electedPlayerController];
  v3 = [v2 electedPlayerPath];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasProactiveRecommendedPlayer
{
  v2 = [(MRDNowPlayingServer *)self proactiveRecommendedPlayerController];
  v3 = [v2 proactiveRecommendedPlayerPath];
  v4 = v3 != 0;

  return v4;
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100129610;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)postClientNowPlayingNotificationNamed:(id)a3 userInfo:(id)a4 predicate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[MRDMediaRemoteServer server];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001299F4;
  v13[3] = &unk_1004BDE78;
  v14 = v7;
  v15 = v8;
  v11 = v8;
  v12 = v7;
  [v10 postClientNotificationNamed:v9 userInfo:v12 predicate:v13];
}

- (void)postOriginDidRegister:(id)a3 handler:(id)a4
{
  v9 = a4;
  v6 = a3;
  v7 = [[MRPlayerPath alloc] initWithOrigin:v6 client:0 player:0];

  v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
  MRAddPlayerPathToUserInfo();
  if (v9)
  {
    v9[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteOriginDidRegisterNotification userInfo:v8];
  }
}

- (void)postOriginDidUnRegister:(id)a3 deviceInfo:(id)a4 handler:(id)a5
{
  v12 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(MRPlayerPath);
  [v10 setOrigin:v9];

  v11 = [[NSMutableDictionary alloc] initWithCapacity:2];
  MRAddPlayerPathToUserInfo();
  MRAddDeviceInfoToUserInfo();

  if (v12)
  {
    v12[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteOriginDidUnregisterNotification userInfo:v11];
  }
}

- (void)postDeviceInfoDidChange:(id)a3 previousDeviceInfo:(id)a4 forOrigin:(id)a5 handler:(id)a6
{
  v16 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[MRPlayerPath alloc] initWithOrigin:v9 client:0 player:0];

  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  MRAddDeviceInfoToUserInfo();

  [v13 setObject:v10 forKeyedSubscript:kMRPreviousPairedDeviceUserInfoKey];
  v14 = _MRDeviceInfoDidChangeNotification;
  if (v16)
  {
    v16[2]();
  }

  else
  {
    v15 = +[MRDMediaRemoteServer server];
    [v15 postClientNotificationNamed:v14 userInfo:v13 predicate:&stru_1004BDE98];
  }
}

- (void)postVolumeDidChange:(id)a3 volume:(float)a4 handler:(id)a5
{
  v13 = a5;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  *&v9 = a4;
  v10 = [NSNumber numberWithFloat:v9];
  [v8 setObject:v10 forKeyedSubscript:kMRMediaRemotePickedRouteVolumeUserInfoKey];

  v11 = _MRMediaRemotePickedRouteVolumeDidChangeNotification;
  if (v13)
  {
    v13[2]();
  }

  else
  {
    v12 = +[MRDMediaRemoteServer server];
    [v12 postClientNotificationNamed:v11 userInfo:v8];
  }
}

- (void)postClientDidRegisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying userInfo:v7];
    if (MRDeviceSupportsExternalTouchBarUI())
    {
      notify_post([kMRMediaRemoteNowPlayingExternalTouchBarInvocationNotification UTF8String]);
    }
  }
}

- (void)postClientDidUnregisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postPlayerDidRegisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingPlayerDidUnregisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postClientDidRegisterForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingApplicationDidRegister userInfo:v7];
  }
}

- (void)postClientDidUnregisterForPlayerPath:(id)a3 hasDefaultSupportedCommands:(BOOL)a4 canBeNowPlaying:(BOOL)a5 handler:(id)a6
{
  v8 = a4;
  v14 = a3;
  v10 = a6;
  if (a5 || ([v14 origin], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isLocallyHosted"), v11, (v12 & 1) == 0))
  {
    [(MRDNowPlayingServer *)self postClientDidUnregisterCanBeNowPlayingForPlayerPath:v14 handler:v10];
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  if (v8)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:_MRMediaRemoteApplicationHasDefaultSupportedCommandsUserInfoKey];
  }

  if (v10)
  {
    v10[2](v10, _MRMediaRemoteNowPlayingApplicationDidUnregister, v13);
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingApplicationDidUnregister userInfo:v13];
  }
}

- (void)postNowPlayingClientStateDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v9)
  {
    v9[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteApplicationClientStateDidChange userInfo:v8];
  }
}

- (void)postActivePlayerPathsDidChangeForOrigin:(id)a3 handler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 isLocal])
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [[MRPlayerPath alloc] initWithOrigin:v9 client:0 player:0];
    MRAddPlayerPathToUserInfo();
    if (v6)
    {
      v6[2](v6, kMRMediaRemoteActivePlayerPathsDidChange, v7);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteActivePlayerPathsDidChange userInfo:v7];
    }
  }
}

- (void)postAudioFormatContentInfoDidChangeForOrigin:(id)a3 handler:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v9 isLocal])
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [[MRPlayerPath alloc] initWithOrigin:v9 client:0 player:0];
    MRAddPlayerPathToUserInfo();
    if (v6)
    {
      v6[2](v6, kMRMediaRemoteAudioFormatContentInfoDidChange, v7);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteAudioFormatContentInfoDidChange userInfo:v7];
    }
  }
}

- (void)postNowPlayingPlayerStateDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v9)
  {
    v9[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemotePlayerStateDidChange userInfo:v8];
  }
}

- (void)postSupportedCommandsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:v10 forKeyedSubscript:kMRSupportedCommandsDataUserInfoKey];

  v13 = _MRMediaRemotePlayerSupportedCommandsDidChangeNotification;
  if (v8)
  {
    v8[2](v8, _MRMediaRemotePlayerSupportedCommandsDidChangeNotification, v11);
  }

  else
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012B094;
    v14[3] = &unk_1004B7038;
    v15 = v12;
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v13 userInfo:v11 predicate:v14];
  }
}

- (void)postPlaybackQueueDidChange:(id)a3 nowPlayingItemDidChange:(BOOL)a4 forPlayerPath:(id)a5 handler:(id)a6
{
  v8 = a4;
  v29 = self;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  v13 = [[NSMutableDictionary alloc] initWithCapacity:1];
  v30 = v10;
  MRAddPlayerPathToUserInfo();
  v14 = [v9 contentItemWithOffset:0];
  if (v14)
  {
    v15 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:0, 1];
    v16 = MRContentItemCreateFromRequest();
    v17 = [MRPlaybackQueue alloc];
    v34 = v16;
    v18 = [NSArray arrayWithObjects:&v34 count:1];
    v19 = v9;
    v20 = v8;
    v21 = v18;
    v22 = v19;
    v23 = [v17 initWithContentItems:v18 location:0 withPropertiesFromPlaybackQueue:?];

    MRPlaybackQueueToUserInfo();
    if (!v20)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v22 = v9;
  v28 = [[MRPlaybackQueue alloc] initWithContentItems:&__NSArray0__struct location:0 withPropertiesFromPlaybackQueue:v9];
  MRPlaybackQueueToUserInfo();

  v16 = 0;
  if (v8)
  {
LABEL_3:
    v24 = [NSNumber numberWithBool:1, v29];
    [v12 setObject:v24 forKeyedSubscript:_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey];
  }

LABEL_4:
  v25 = _MRNowPlayingPlaybackQueueChangedNotification;
  v26 = v22;
  if (v11)
  {
    v11[2](v11, _MRNowPlayingPlaybackQueueChangedNotification, v12);
    v27 = v30;
  }

  else
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10012B3B8;
    v31[3] = &unk_1004BDEC0;
    v32 = v16;
    v27 = v30;
    v33 = v30;
    [(MRDNowPlayingServer *)v29 postClientNowPlayingNotificationNamed:v25 userInfo:v13 predicate:v31];
    [(MRDNowPlayingServer *)v29 postClientNowPlayingNotificationNamed:v25 userInfo:v12 predicate:&stru_1004BDEE0];
  }
}

- (void)postPlaybackQueueContentItemsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        if (MRContentItemGetArtworkData())
        {
          MRContentItemSetArtworkData();
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = _MRPlayerPlaybackQueueContentItemsChangedNotification;
  if (v10)
  {
    v10[2](v10, _MRPlayerPlaybackQueueContentItemsChangedNotification, v11);
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012B704;
    v19[3] = &unk_1004BDEC0;
    v20 = v9;
    v21 = v12;
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v18 userInfo:v11 predicate:v19];
  }
}

- (void)postPlaybackQueueContentItemsArtworkDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && [v8 count])
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    MRAddPlayerPathToUserInfo();
    v12 = _MRPlayerPlaybackQueueContentItemArtworkChangedNotification;
    if (v10)
    {
      v10[2](v10, _MRPlayerPlaybackQueueContentItemArtworkChangedNotification, v11);
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10012B9CC;
      v13[3] = &unk_1004BDEC0;
      v14 = v9;
      v15 = v8;
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v12 userInfo:v11 predicate:v13];
    }
  }
}

- (void)postPlaybackQueueCapabilitiesDidChange:(unint64_t)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v11 = a5;
  v8 = a4;
  v9 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v10 = [NSNumber numberWithUnsignedLong:a3];
  [v9 setObject:v10 forKeyedSubscript:kMRPlaybackQueueCapabilitiesUserInfoKey];

  if (v11)
  {
    v11[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRPlaybackQueueCapabilitiesChangedNotification userInfo:v9];
  }
}

- (void)postPlaybackQueueParticipantsDidChange:(id)a3 forPlayerPath:(id)a4 handler:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [v11 client];
  v9 = [v8 isSystemMediaApplication];

  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    MRAddPlayerPathToUserInfo();
    if (v7)
    {
      v7[2](v7, MRPlaybackQueueParticipantsDidChangeForPlayerNotification, v10);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:MRPlaybackQueueParticipantsDidChangeForPlayerNotification userInfo:v10];
    }
  }
}

- (void)postPlayerDidRegisterForPlayerPath:(id)a3 handler:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v8)
  {
    v8[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingPlayerDidRegister userInfo:v7];
  }
}

- (void)postElectedPlayerDidChange:(id)a3 change:(int64_t)a4 event:(int64_t)a5 reason:(id)a6 handler:(id)a7
{
  v18 = a6;
  v11 = a7;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v18)
  {
    [v13 setObject:v18 forKeyedSubscript:kMRMediaRemoteElectedPlayerReasonUserInfoKey];
  }

  v14 = [NSNumber numberWithInteger:a4];
  [v13 setObject:v14 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  v15 = [NSNumber numberWithInteger:a5];
  [v13 setObject:v15 forKeyedSubscript:@"MRDElectedPlayerControllerEventUserInfoKey"];

  v16 = kMRMediaRemoteElectedPlayerDidChangeNotification;
  if (v11)
  {
    v11[2](v11, kMRMediaRemoteElectedPlayerDidChangeNotification, v13);
  }

  else
  {
    v17 = +[MRDMediaRemoteServer server];
    [v17 postClientNotificationNamed:v16 userInfo:v13 predicate:&stru_1004BDF00];

    notify_post("com.apple.mediaremote.electedPlayerDidChange");
  }
}

- (void)postProactiveRecommendedPlayerDidChange:(id)a3 change:(int64_t)a4 event:(int64_t)a5 reason:(id)a6 handler:(id)a7
{
  v18 = a6;
  v11 = a7;
  v12 = a3;
  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (v18)
  {
    [v13 setObject:v18 forKeyedSubscript:MRMediaRemoteProactiveRecommendedPlayerReasonUserInfoKey];
  }

  v14 = [NSNumber numberWithInteger:a4];
  [v13 setObject:v14 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  v15 = [NSNumber numberWithInteger:a5];
  [v13 setObject:v15 forKeyedSubscript:@"MRDProactiveRecommendedPlayerControllerEventUserInfoKey"];

  v16 = MRMediaRemoteProactiveRecommendedPlayerDidChangeNotification;
  if (v11)
  {
    v11[2](v11, MRMediaRemoteProactiveRecommendedPlayerDidChangeNotification, v13);
  }

  else
  {
    v17 = +[MRDMediaRemoteServer server];
    [v17 postClientNotificationNamed:v16 userInfo:v13 predicate:&stru_1004BDF20];

    notify_post("com.apple.mediaremote.proactiveRecommendedPlayerDidChange");
  }
}

- (void)postLockScreenVisibleDidChange:(BOOL)a3 handler:(id)a4
{
  v4 = &kMRMediaRemoteLockScreenControlsDidAppearNotification;
  if (!a3)
  {
    v4 = &kMRMediaRemoteLockScreenControlsDidDisappearNotification;
  }

  v5 = *v4;
  if (a4)
  {
    v7 = *(a4 + 2);
    v9 = v5;
    v7(a4);
  }

  else
  {
    v8 = v5;
    v9 = +[MRDMediaRemoteServer server];
    [v9 postClientNotificationNamed:v8 predicate:&stru_1004BDF40];
  }
}

- (void)postLockScreenActiveDidChange:(BOOL)a3 handler:(id)a4
{
  v4 = &kMRMediaRemoteLockScreenControlsDidActivateNotification;
  if (!a3)
  {
    v4 = &kMRMediaRemoteLockScreenControlsDidDeactivateNotification;
  }

  v5 = *v4;
  if (a4)
  {
    v7 = *(a4 + 2);
    v9 = v5;
    v7(a4);
  }

  else
  {
    v8 = v5;
    v9 = +[MRDMediaRemoteServer server];
    [v9 postClientNotificationNamed:v8 predicate:&stru_1004BDF60];
  }
}

- (void)postLockScreenPlayerPathDidChange:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v9 = kMRMediaRemoteLockScreenControlsPlayerPathDidChangeNotification;
  if (v6)
  {
    v6[2](v6, v9, v8);
  }

  else
  {
    v10 = +[MRDMediaRemoteServer server];
    [v10 postClientNotificationNamed:v9 userInfo:v8 predicate:&stru_1004BDF80];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10012C5EC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  if (qword_100529468 != -1)
  {
    dispatch_once(&qword_100529468, block);
  }

  [(MRDNowPlayingServer *)self postLockScreenControlsDidChangeDistributedNotification];
}

- (void)postLockScreenControlsDidChangeDistributedNotification
{
  v2 = _MRLogForCategory();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  v4 = MRMediaRemoteLockScreenControlsDidChangeDistributedNotification;
  if (v3)
  {
    v5 = 138412290;
    v6 = MRMediaRemoteLockScreenControlsDidChangeDistributedNotification;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Posting %@", &v5, 0xCu);
  }

  notify_post([v4 UTF8String]);
}

- (id)augmentedUserInfoForPlayerPath:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [(MRDNowPlayingServer *)self activePlayerPath];
  if (v6)
  {
    [v5 setObject:v6 forKey:kMRActiveNowPlayingPlayerPathUserInfoKey];
  }

  if (v4)
  {
    v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v4];
    v8 = [v7 originClient];
    v9 = [v8 activeNowPlayingClient];
    v10 = [v9 activePlayerClient];
    v11 = [v10 playerPath];

    if (v11)
    {
      goto LABEL_7;
    }

    v12 = [v7 originClient];
    v13 = [v12 activeNowPlayingClient];
    v11 = [v13 playerPath];

    if (v11 || ([v7 originClient], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "playerPath"), v11 = objc_claimAutoreleasedReturnValue(), v14, v11))
    {
LABEL_7:
      [v5 setValue:v11 forKey:kMROriginActiveNowPlayingPlayerPathUserInfoKey];
    }
  }

  return v5;
}

- (void)registerOriginForwarder:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012CCDC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)unregisterOriginForwarder:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012CDDC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (BOOL)_hasForwarderForOrigin:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_originForwarders;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

        v9 = [*(*(&v12 + 1) + 8 * i) destinationOrigin];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)_addOrigin:(id)a3 withDeviceInfo:(id)a4 emitNotification:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  v10 = [v8 routingContextID];
  v11 = [v9 createCustomOriginClientForOrigin:v7 routingContextID:v10];

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  v13 = [v7 playerPath];
  v14 = [v12 originClientRequestsForPlayerPath:v13];

  [v14 setDeviceInfo:v8];
  serialQueue = self->_serialQueue;
  v18 = v7;
  v16 = v8;
  v17 = v7;
  msv_dispatch_sync_on_queue();
}

- (void)_removeOrigin:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v8 = self;
  v9 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
  v7 = [MRNowPlayingOriginClientManager sharedManager:_NSConcreteStackBlock];
  [v7 removeOrigin:v6];
}

- (void)_removeNowPlayingClient:(id)a3 forOrigin:(id)a4
{
  v6 = a3;
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:a4];
  [v7 removeNowPlayingClientForClient:v6];
}

- (void)setOverrideClient:(id)a3
{
  v4 = a3;
  v5 = [(MRDNowPlayingServer *)self localOriginClient];
  [v5 setOverrideClient:v4];
}

- (id)overrideClient
{
  v2 = [(MRDNowPlayingServer *)self localOriginClient];
  v3 = [v2 overrideClient];

  return v3;
}

- (void)setActiveOrigin:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_setActiveOrigin:(id)a3 saveState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:v6];
  v8 = self->_activeOriginClient;
  if (v7 != v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(MRDNowPlayingOriginClient *)v8 origin];
      v11 = [(MRDNowPlayingOriginClient *)v7 origin];
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting active origin from %@ to %@", &v12, 0x16u);
    }

    [(MRDNowPlayingServer *)self setActiveOriginClient:v7];
    [(MRDNowPlayingServer *)self nowPlayingServer:self activeOriginDidChangeFromOriginClient:self->_activeOriginClient toOriginClient:v7];
  }

  if (v4)
  {
    [(MRDNowPlayingServer *)self _onQueue_savePersistentActiveOrigin:v6];
  }
}

- (void)_onQueue_savePersistentActiveOrigin:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Persisting active origin %@", &v9, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = v6;
  if (v4)
  {
    v8 = [v4 data];
    [v7 setObject:v8 forKey:@"_MRDActiveOriginDataDefaultsKey"];
  }

  else
  {
    [v6 removeObjectForKey:@"_MRDActiveOriginDataDefaultsKey"];
  }
}

- (id)_onQueue_restoredActiveOrigin
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"_MRDActiveOriginDataDefaultsKey"];
  if (v3)
  {
    v4 = [[MROrigin alloc] initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_onQueue_originClientForOrigin:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_originClients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 origin];
        v13 = [v12 isEqual:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_onQueue_originClientForDeviceUID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v4)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = self->_originClients;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [v11 deviceInfo];
          v13 = [v12 deviceUID];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            if (!v8 || (-[MRDNowPlayingOriginClient registrationDate](v8, "registrationDate"), v15 = objc_claimAutoreleasedReturnValue(), [v11 registrationDate], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "compare:", v16), v16, v15, v17 == 1))
            {
              v18 = v11;

              v8 = v18;
            }
          }
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = self->_localOriginClient;
  }

  return v8;
}

- (id)_onQueue_originClientForGroupLeaderOfDeviceUID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!v4)
  {
    v18 = self->_localOriginClient;
LABEL_23:
    v6 = v18;
    goto LABEL_24;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_originClients;
  v23 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (!v23)
  {

LABEL_22:
    v18 = [(MRDNowPlayingServer *)self _onQueue_originClientForDeviceUID:v4];
    goto LABEL_23;
  }

  v20 = self;
  obj = v5;
  v6 = 0;
  v22 = *v29;
  do
  {
    for (i = 0; i != v23; i = i + 1)
    {
      if (*v29 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v28 + 1) + 8 * i);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = [v8 deviceInfo];
      v10 = [v9 groupedDevices];

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v24 + 1) + 8 * j) deviceUID];
            v16 = [v15 isEqualToString:v4];

            if (v16)
            {
              v17 = v8;

              v6 = v17;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v12);
      }
    }

    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v23);

  self = v20;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_24:

  return v6;
}

@end