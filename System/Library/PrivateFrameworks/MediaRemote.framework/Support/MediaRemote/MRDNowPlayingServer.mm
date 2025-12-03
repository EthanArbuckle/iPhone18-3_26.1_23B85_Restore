@interface MRDNowPlayingServer
- (BOOL)_hasForwarderForOrigin:(id)origin;
- (BOOL)activePlayerIsPlaying;
- (BOOL)hasElectedPlayer;
- (BOOL)hasProactiveRecommendedPlayer;
- (BOOL)localActivePlayerIsPlaying;
- (BOOL)lockScreenPlatterActive;
- (BOOL)lockScreenRecommendationActive;
- (BOOL)nowPlayingLauncher:(id)launcher shouldRelaunch:(id)relaunch;
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
- (id)_onQueue_allNowPlayingInfoClientsForOrigin:(id)origin;
- (id)_onQueue_companionOriginClient;
- (id)_onQueue_originClientForDeviceUID:(id)d;
- (id)_onQueue_originClientForGroupLeaderOfDeviceUID:(id)d;
- (id)_onQueue_originClientForOrigin:(id)origin;
- (id)_onQueue_queryExistingPlayerPath:(id)path;
- (id)_onQueue_restoredActiveOrigin;
- (id)augmentedUserInfoForPlayerPath:(id)path;
- (id)localPlayersForXpcClient:(id)client;
- (id)onQueue_resolveExistingPlayerPath:(id)path;
- (id)originClientForDeviceUID:(id)d;
- (id)originClientForGroupLeaderOfDeviceUID:(id)d;
- (id)originClientForOrigin:(id)origin;
- (id)overrideClient;
- (id)queryExistingPlayerPath:(id)path;
- (id)queryExistingPlayerPathForXPCMessage:(id)message forClient:(id)client;
- (id)queryPlayerPath:(id)path forClient:(id)client;
- (id)queryPlayerPathForXPCMessage:(id)message fromClient:(id)client;
- (id)resolveExistingPlayerPath:(id)path;
- (id)resolvePlayerPath:(id)path fromClient:(id)client useDefaultPlayerIfNoneSpecified:(BOOL)specified;
- (id)xpcClientForPlayerPath:(id)path;
- (int)activeClientPID;
- (int)localActiveClientPID;
- (unsigned)activePlayerPlaybackState;
- (unsigned)localActivePlayerPlaybackState;
- (void)_addOrigin:(id)origin withDeviceInfo:(id)info emitNotification:(BOOL)notification;
- (void)_handleBeginApplicationActivityMessage:(id)message fromClient:(id)client;
- (void)_handleBeginMusicHandoffSessionMessage:(id)message fromClient:(id)client;
- (void)_handleContentItemArtworkChangedMessage:(id)message fromClient:(id)client;
- (void)_handleContentItemChangedMessage:(id)message fromClient:(id)client;
- (void)_handleEndApplicationActivityMessage:(id)message fromClient:(id)client;
- (void)_handleFetchPlaybackQueueParticipantsMessage:(id)message fromClient:(id)client;
- (void)_handleGetActiveOriginMessage:(id)message fromClient:(id)client;
- (void)_handleGetActivePlayerPathsForLocalOriginMessage:(id)message fromClient:(id)client;
- (void)_handleGetAnyAppIsPlayingMessage:(id)message fromClient:(id)client;
- (void)_handleGetApplicationActivityMessage:(id)message fromClient:(id)client;
- (void)_handleGetAudioFormatContentInfoForOriginMessage:(id)message fromClient:(id)client;
- (void)_handleGetAvailableOriginsMessage:(id)message fromClient:(id)client;
- (void)_handleGetClientPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleGetDeviceInfo:(id)info fromClient:(id)client;
- (void)_handleGetElectedPlayerPathMessage:(id)message fromClient:(id)client;
- (void)_handleGetImageDimensionsForArtworkDataMessage:(id)message fromClient:(id)client;
- (void)_handleGetLastPlayingDateMessage:(id)message fromClient:(id)client;
- (void)_handleGetMediaSuggestionDeviceUIDMessage:(id)message fromClient:(id)client;
- (void)_handleGetNowPlayingClientMessage:(id)message fromClient:(id)client;
- (void)_handleGetNowPlayingClientsMessage:(id)message fromClient:(id)client;
- (void)_handleGetNowPlayingPlayerMessage:(id)message fromClient:(id)client;
- (void)_handleGetNowPlayingPlayersMessage:(id)message fromClient:(id)client;
- (void)_handleGetPlaybackStateMessage:(id)message fromClient:(id)client;
- (void)_handleGetPlayerPictureInPictureEnabledMessage:(id)message fromClient:(id)client;
- (void)_handleGetPlayerPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleGetProactiveRecommendedPlayerMessage:(id)message fromClient:(id)client;
- (void)_handleGetSupportedCommandsMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionRequest:(id)request fromClient:(id)client;
- (void)_handleRegisterForWakingNowPlayingNotifications:(id)notifications fromClient:(id)client;
- (void)_handleRemoveNowPlayingClientMessage:(id)message fromClient:(id)client;
- (void)_handleRemoveNowPlayingPlayerMessage:(id)message fromClient:(id)client;
- (void)_handleRequestAudioAmplitudeSamplesMessage:(id)message fromClient:(id)client;
- (void)_handleRequestPlaybackQueueCapabilities:(id)capabilities fromClient:(id)client;
- (void)_handleRequestVideoThumbnailsMessage:(id)message fromClient:(id)client;
- (void)_handleResetPlaybackQueueRequests:(id)requests fromClient:(id)client;
- (void)_handleResolvePlayerPath:(id)path fromClient:(id)client;
- (void)_handleSendLyricsEvent:(id)event fromClient:(id)client;
- (void)_handleSendMusicHandoffEventMessage:(id)message fromClient:(id)client;
- (void)_handleSetActiveOriginMessage:(id)message fromClient:(id)client;
- (void)_handleSetCanBeNowPlayingAppMessage:(id)message fromClient:(id)client;
- (void)_handleSetCanBeNowPlayingPlayerMessage:(id)message fromClient:(id)client;
- (void)_handleSetClientPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleSetDefaultSupportedCommandsMessage:(id)message fromClient:(id)client;
- (void)_handleSetHardwareRemoteBehaviorMessage:(id)message fromClient:(id)client;
- (void)_handleSetNowPlayingAppOverrideMessage:(id)message fromClient:(id)client;
- (void)_handleSetNowPlayingClientMessage:(id)message fromClient:(id)client;
- (void)_handleSetNowPlayingPlayerMessage:(id)message fromClient:(id)client;
- (void)_handleSetOriginClientPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleSetOverriddenNowPlayingAppMessage:(id)message fromClient:(id)client;
- (void)_handleSetPlaybackQueue:(id)queue fromClient:(id)client;
- (void)_handleSetPlaybackQueueCapabilities:(id)capabilities fromClient:(id)client;
- (void)_handleSetPlaybackStateMessage:(id)message fromClient:(id)client;
- (void)_handleSetPlayerClientPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleSetPlayerPictureInPictureEnabledMessage:(id)message fromClient:(id)client;
- (void)_handleSetPlayerPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleSetSupportedCommandsMessage:(id)message fromClient:(id)client;
- (void)_handleUpdateClientPropertiesMessage:(id)message fromClient:(id)client;
- (void)_handleUpdatePlayerPropertiesMessage:(id)message fromClient:(id)client;
- (void)_onQueue_savePersistentActiveOrigin:(id)origin;
- (void)_onQueue_setActiveOrigin:(id)origin saveState:(BOOL)state;
- (void)_removeNowPlayingClient:(id)client forOrigin:(id)origin;
- (void)_removeOrigin:(id)origin;
- (void)_validateResult:(id)result forClient:(id)client;
- (void)beginMusicHandoffSessionWithSource:(id)source destination:(id)destination completion:(id)completion;
- (void)clearNowPlayingClientForXPCClient:(id)client;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dealloc;
- (void)handleNowPlayingOriginClient:(id)client deviceInfoDidChange:(id)change previousDeviceInfo:(id)info;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)maybePostDistributedNotifications;
- (void)nowPlayingClient:(id)client activePlayerDidChangeFromPlayerClient:(id)playerClient toPlayerClient:(id)toPlayerClient;
- (void)nowPlayingClient:(id)client clientStateDidChange:(id)change;
- (void)nowPlayingClient:(id)client playerDidRegister:(id)register;
- (void)nowPlayingClient:(id)client playerDidUnregister:(id)unregister;
- (void)nowPlayingOriginClient:(id)client activePlayerClientsDidChange:(id)change;
- (void)nowPlayingOriginClient:(id)client applicationActivityDidBegin:(id)begin;
- (void)nowPlayingOriginClient:(id)client applicationActivityDidEnd:(id)end;
- (void)nowPlayingOriginClient:(id)client applicationActivityStatusDidChange:(id)change;
- (void)nowPlayingOriginClient:(id)client clientDidRegister:(id)register;
- (void)nowPlayingOriginClient:(id)client clientDidUnregister:(id)unregister;
- (void)nowPlayingOriginClient:(id)client currentRouteVolumeDidChange:(float)change;
- (void)nowPlayingOriginClientDidChangeAudioFormatContentInfo:(id)info;
- (void)nowPlayingOriginClientPlaybackDidTimeout:(id)timeout;
- (void)nowPlayingPlayerClient:(id)client clientCanBeNowPlayingDidChange:(BOOL)change;
- (void)nowPlayingPlayerClient:(id)client playbackQueueArtworkContentItemsDidChange:(id)change;
- (void)nowPlayingPlayerClient:(id)client playbackQueueCapabilitiesDidChange:(unint64_t)change;
- (void)nowPlayingPlayerClient:(id)client playbackQueueContentItemsDidChange:(id)change;
- (void)nowPlayingPlayerClient:(id)client playbackQueueParticipantsDidChange:(id)change;
- (void)nowPlayingPlayerClient:(id)client playerCanBeNowPlayingDidChange:(BOOL)change;
- (void)nowPlayingPlayerClient:(id)client playerStateDidChange:(id)change;
- (void)nowPlayingPlayerClient:(id)client supportedCommandsDidChange:(id)change;
- (void)nowPlayingServer:(id)server activeOriginDidChangeFromOriginClient:(id)client toOriginClient:(id)originClient;
- (void)postActivePlayerPathsDidChangeForOrigin:(id)origin handler:(id)handler;
- (void)postAudioFormatContentInfoDidChangeForOrigin:(id)origin handler:(id)handler;
- (void)postClientDidRegisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler;
- (void)postClientDidRegisterForPlayerPath:(id)path handler:(id)handler;
- (void)postClientDidUnregisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler;
- (void)postClientDidUnregisterForPlayerPath:(id)path hasDefaultSupportedCommands:(BOOL)commands canBeNowPlaying:(BOOL)playing handler:(id)handler;
- (void)postClientNowPlayingNotificationNamed:(id)named userInfo:(id)info predicate:(id)predicate;
- (void)postDeviceInfoDidChange:(id)change previousDeviceInfo:(id)info forOrigin:(id)origin handler:(id)handler;
- (void)postElectedPlayerDidChange:(id)change change:(int64_t)a4 event:(int64_t)event reason:(id)reason handler:(id)handler;
- (void)postLockScreenActiveDidChange:(BOOL)change handler:(id)handler;
- (void)postLockScreenControlsDidChangeDistributedNotification;
- (void)postLockScreenPlayerPathDidChange:(id)change handler:(id)handler;
- (void)postLockScreenVisibleDidChange:(BOOL)change handler:(id)handler;
- (void)postNowPlayingClientStateDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postNowPlayingPlayerStateDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postOriginDidRegister:(id)register handler:(id)handler;
- (void)postOriginDidUnRegister:(id)register deviceInfo:(id)info handler:(id)handler;
- (void)postPlaybackQueueCapabilitiesDidChange:(unint64_t)change forPlayerPath:(id)path handler:(id)handler;
- (void)postPlaybackQueueContentItemsArtworkDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postPlaybackQueueContentItemsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postPlaybackQueueDidChange:(id)change nowPlayingItemDidChange:(BOOL)didChange forPlayerPath:(id)path handler:(id)handler;
- (void)postPlaybackQueueParticipantsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postPlayerDidRegisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler;
- (void)postPlayerDidRegisterForPlayerPath:(id)path handler:(id)handler;
- (void)postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler;
- (void)postProactiveRecommendedPlayerDidChange:(id)change change:(int64_t)a4 event:(int64_t)event reason:(id)reason handler:(id)handler;
- (void)postSupportedCommandsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler;
- (void)postVolumeDidChange:(id)change volume:(float)volume handler:(id)handler;
- (void)registerOriginForwarder:(id)forwarder;
- (void)reregisterOrigin:(id)origin deviceInfo:(id)info;
- (void)restoreClientState:(id)state handler:(id)handler;
- (void)restoreDeviceInfoToClient:(id)client handler:(id)handler;
- (void)setActiveOrigin:(id)origin;
- (void)setOverrideClient:(id)client;
- (void)startObservingNowPlayingInfoForNowPlayingPlayerClient:(id)client;
- (void)stopObservingNowPlayingInfo;
- (void)unregisterOriginForwarder:(id)forwarder;
- (void)updateDeviceInfo:(id)info origin:(id)origin;
- (void)wakeDeviceIfNecessaryForNowPlayingPlayerClient:(id)client;
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
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activePlayerPath = [activeOriginClient activePlayerPath];

  return activePlayerPath;
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
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  return activePlayerClient;
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
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];

  return activePlayerClient;
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
    uTF8String = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(uTF8String, v6);
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
    deviceInfo = [(MRDDeviceInfoDataSource *)v2->_deviceInfoDataSource deviceInfo];
    [(MRDNowPlayingServer *)v2 _addOrigin:v14 withDeviceInfo:deviceInfo emitNotification:0];

    v16 = objc_alloc_init(MRDNowPlayingPlaybackQueueServer);
    playbackQueueServer = v2->_playbackQueueServer;
    v2->_playbackQueueServer = v16;

    v18 = +[MRUserSettings currentSettings];
    LODWORD(deviceInfo) = [v18 takelockScreenAssertion];

    if (deviceInfo)
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
    supportElectedPlayer = [v23 supportElectedPlayer];

    if (supportElectedPlayer)
    {
      v25 = [[MRDElectedPlayerController alloc] initWithOriginClient:v2->_localOriginClient];
      electedPlayerController = v2->_electedPlayerController;
      v2->_electedPlayerController = v25;

      [(MRDElectedPlayerController *)v2->_electedPlayerController setDelegate:v2];
    }

    v27 = +[MRUserSettings currentSettings];
    supportProactiveRecommendedPlayer = [v27 supportProactiveRecommendedPlayer];

    if (supportProactiveRecommendedPlayer)
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

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "MRXPC_MESSAGE_ID_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 134218498;
    v12 = uint64;
    v13 = 2112;
    v14 = clientCopy;
    v15 = 2112;
    v16 = messageCopy;
    _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Received Now Playing message %llu from client %@ : %@", &v11, 0x20u);
  }

  switch(uint64)
  {
    case 0x200000000000001uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingAppOverrideMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000002uLL:
      [(MRDNowPlayingServer *)self _handleSetOverriddenNowPlayingAppMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000003uLL:
      [(MRDNowPlayingServer *)self _handleBeginApplicationActivityMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000004uLL:
      [(MRDNowPlayingServer *)self _handleGetApplicationActivityMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000005uLL:
      [(MRDNowPlayingServer *)self _handleEndApplicationActivityMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000006uLL:
      [(MRDNowPlayingServer *)self _handleSetCanBeNowPlayingAppMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000007uLL:
      [(MRDNowPlayingPlaybackQueueServer *)self->_playbackQueueServer handlePlaybackQueueRequest:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000008uLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackQueue:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000009uLL:
      [(MRDNowPlayingServer *)self _handleRequestPlaybackQueueCapabilities:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000AuLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackQueueCapabilities:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000BuLL:
      [(MRDNowPlayingServer *)self _handleResetPlaybackQueueRequests:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000CuLL:
      [(MRDNowPlayingServer *)self _handleGetClientPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000DuLL:
      [(MRDNowPlayingServer *)self _handleSetClientPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000EuLL:
      [(MRDNowPlayingServer *)self _handleUpdateClientPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000000FuLL:
      [(MRDNowPlayingServer *)self _handleGetPlayerPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000010uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000011uLL:
      [(MRDNowPlayingServer *)self _handleUpdatePlayerPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000012uLL:
      [(MRDNowPlayingServer *)self _handleGetPlaybackStateMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000013uLL:
      [(MRDNowPlayingServer *)self _handleSetPlaybackStateMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000014uLL:
      [(MRDNowPlayingServer *)self _handleGetAnyAppIsPlayingMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000015uLL:
      [(MRDNowPlayingServer *)self _handleRequestVideoThumbnailsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000016uLL:
      [(MRDNowPlayingServer *)self _handleRequestAudioAmplitudeSamplesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000017uLL:
      [(MRDNowPlayingServer *)self _handleSendLyricsEvent:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000018uLL:
      [(MRDNowPlayingServer *)self _handleResolvePlayerPath:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000019uLL:
      [(MRDNowPlayingServer *)self _handleGetAvailableOriginsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000001AuLL:
      [(MRDNowPlayingServer *)self _handleSetActiveOriginMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000001BuLL:
      [(MRDNowPlayingServer *)self _handleGetActiveOriginMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000001FuLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingClientsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000020uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingClientMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000021uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingClientMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000022uLL:
      [(MRDNowPlayingServer *)self _handleRemoveNowPlayingClientMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000023uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingPlayersMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000024uLL:
      [(MRDNowPlayingServer *)self _handleSetNowPlayingPlayerMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000025uLL:
      [(MRDNowPlayingServer *)self _handleGetNowPlayingPlayerMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000026uLL:
      [(MRDNowPlayingServer *)self _handleRemoveNowPlayingPlayerMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000027uLL:
      [(MRDNowPlayingServer *)self _handleGetActivePlayerPathsForLocalOriginMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000029uLL:
      [(MRDNowPlayingServer *)self _handleSetHardwareRemoteBehaviorMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000002AuLL:
      [(MRDNowPlayingServer *)self _handleContentItemArtworkChangedMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000002BuLL:
      [(MRDNowPlayingServer *)self _handleContentItemChangedMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000002CuLL:
      [(MRDNowPlayingServer *)self _handleGetDeviceInfo:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000002EuLL:
      [(MRDNowPlayingServer *)self _handleGetElectedPlayerPathMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000002FuLL:
      [(MRDNowPlayingServer *)self _handleGetProactiveRecommendedPlayerMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000030uLL:
      [(MRDNowPlayingServer *)self _handlePlaybackSessionRequest:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000031uLL:
      [(MRDNowPlayingServer *)self _handleGetSupportedCommandsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000032uLL:
      [(MRDNowPlayingServer *)self _handleSetSupportedCommandsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000033uLL:
      [(MRDNowPlayingServer *)self _handleSetDefaultSupportedCommandsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000034uLL:
      [(MRDNowPlayingServer *)self _handleGetPlayerPictureInPictureEnabledMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000035uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerPictureInPictureEnabledMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000036uLL:
      [(MRDNowPlayingServer *)self _handleGetLastPlayingDateMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000037uLL:
      [(MRDNowPlayingServer *)self _handleSetOriginClientPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000038uLL:
      [(MRDNowPlayingServer *)self _handleSetPlayerClientPropertiesMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000039uLL:
      [(MRDNowPlayingServer *)self _handleSetCanBeNowPlayingPlayerMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003AuLL:
      [(MRDNowPlayingServer *)self _handleRegisterForWakingNowPlayingNotifications:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003BuLL:
      [(MRDNowPlayingServer *)self _handleGetAudioFormatContentInfoForOriginMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003CuLL:
      [(MRDNowPlayingServer *)self _handleGetImageDimensionsForArtworkDataMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003DuLL:
      [(MRDNowPlayingServer *)self _handleFetchPlaybackQueueParticipantsMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003EuLL:
      [(MRDNowPlayingServer *)self _handleBeginMusicHandoffSessionMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x20000000000003FuLL:
      [(MRDNowPlayingServer *)self _handleSendMusicHandoffEventMessage:messageCopy fromClient:clientCopy];
      break;
    case 0x200000000000040uLL:
      [(MRDNowPlayingServer *)self _handleGetMediaSuggestionDeviceUIDMessage:messageCopy fromClient:clientCopy];
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
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];
  client = [activeNowPlayingClient client];
  processIdentifier = [client processIdentifier];

  return processIdentifier;
}

- (int)localActiveClientPID
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  client = [activeNowPlayingClient client];
  processIdentifier = [client processIdentifier];

  return processIdentifier;
}

- (NSString)activeClientBundleIdentifier
{
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];
  client = [activeNowPlayingClient client];
  bundleIdentifier = [client bundleIdentifier];

  return bundleIdentifier;
}

- (NSString)localActiveClientBundleIdentifier
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  client = [activeNowPlayingClient client];
  bundleIdentifier = [client bundleIdentifier];

  return bundleIdentifier;
}

- (BOOL)activePlayerIsPlaying
{
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  isPlaying = [activePlayerClient isPlaying];

  return isPlaying;
}

- (BOOL)localActivePlayerIsPlaying
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  isPlaying = [activePlayerClient isPlaying];

  return isPlaying;
}

- (unsigned)activePlayerPlaybackState
{
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  playbackState = [activePlayerClient playbackState];

  return playbackState;
}

- (unsigned)localActivePlayerPlaybackState
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  playbackState = [activePlayerClient playbackState];

  return playbackState;
}

- (MRDNowPlayingClient)activeNowPlayingClient
{
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  activeNowPlayingClient = [activeOriginClient activeNowPlayingClient];

  return activeNowPlayingClient;
}

- (MRDNowPlayingClient)localActiveNowPlayingClient
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activeNowPlayingClient = [localOriginClient activeNowPlayingClient];

  return activeNowPlayingClient;
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
        origin = [v7 origin];
        identifier = [origin identifier];

        if (identifier == 1129140302)
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
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activePlayerPath = [localOriginClient activePlayerPath];

  return activePlayerPath;
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

        nowPlayingClients = [*(*(&v20 + 1) + 8 * i) nowPlayingClients];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [nowPlayingClients countByEnumeratingWithState:&v16 objects:v24 count:16];
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
                objc_enumerationMutation(nowPlayingClients);
              }

              v14 = *(*(&v16 + 1) + 8 * j);
              if ([v14 hasNowPlayingData])
              {
                [v3 addObject:v14];
              }
            }

            v11 = [nowPlayingClients countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (id)_onQueue_allNowPlayingInfoClientsForOrigin:(id)origin
{
  serialQueue = self->_serialQueue;
  originCopy = origin;
  dispatch_assert_queue_V2(serialQueue);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:originCopy];

  nowPlayingClients = [v7 nowPlayingClients];
  [v6 addObjectsFromArray:nowPlayingClients];

  return v6;
}

- (id)queryPlayerPathForXPCMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  v6 = MRCreatePlayerPathFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self queryPlayerPath:v6 forClient:clientCopy];

  return v7;
}

- (id)queryPlayerPath:(id)path forClient:(id)client
{
  clientCopy = client;
  v7 = [(MRDNowPlayingServer *)self resolvePlayerPath:path fromClient:clientCopy];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];
  [(MRDNowPlayingServer *)self _validateResult:v8 forClient:clientCopy];

  return v8;
}

- (id)queryExistingPlayerPathForXPCMessage:(id)message forClient:(id)client
{
  clientCopy = client;
  v6 = MRCreatePlayerPathFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v6];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v7];
  [(MRDNowPlayingServer *)self _validateResult:v8 forClient:clientCopy];

  return v8;
}

- (void)_validateResult:(id)result forClient:(id)client
{
  resultCopy = result;
  clientCopy = client;
  playerPath = [resultCopy playerPath];
  v9 = [clientCopy isAllowedAccessToDataFromPlayerPath:playerPath];

  if ((v9 & 1) == 0)
  {
    if (![resultCopy error])
    {
      [resultCopy setError:3];
    }

    [resultCopy setNowPlayingClient:0];
    [resultCopy setPlayerClient:0];
    originClient = [resultCopy originClient];
    playerPath2 = [originClient playerPath];
    [resultCopy setPlayerPath:playerPath2];

    [resultCopy setXpcClient:0];
  }

  if (MSVDeviceOSIsInternalInstall() && ([clientCopy isEntitledFor:512] & 1) == 0)
  {
    bundleIdentifier = [clientCopy bundleIdentifier];
    if (qword_100529460 != -1)
    {
      sub_1003A9894();
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (bundleIdentifier && ([qword_100529458 containsObject:bundleIdentifier] & 1) == 0)
    {
      v14 = _MRLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1003A98A8(clientCopy, v14);
      }

      v15 = bundleIdentifier;
      MRAnalyticsSendEvent();
      [qword_100529458 addObject:v15];
    }

    objc_sync_exit(selfCopy);
  }
}

- (id)resolvePlayerPath:(id)path fromClient:(id)client useDefaultPlayerIfNoneSpecified:(BOOL)specified
{
  pathCopy = path;
  clientCopy = client;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10003513C;
  v18 = sub_100035A54;
  v19 = 0;
  serialQueue = self->_serialQueue;
  v12 = pathCopy;
  v13 = clientCopy;
  msv_dispatch_sync_on_queue();
  v10 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v10;
}

- (id)resolveExistingPlayerPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = pathCopy;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)onQueue_resolveExistingPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  origin = [pathCopy origin];
  if (!origin)
  {
    _onQueue_activeOriginClient = [(MRDNowPlayingServer *)self _onQueue_activeOriginClient];
    origin = [_onQueue_activeOriginClient origin];
  }

  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:origin];
  v24 = pathCopy;
  if (!v7)
  {

    origin = 0;
    client2 = 0;
    player = 0;
    v12 = 0;
    origin2 = 0;
    goto LABEL_15;
  }

  client = [pathCopy client];
  v9 = client;
  if (client)
  {
    client2 = client;
  }

  else
  {
    activeNowPlayingClient = [v7 activeNowPlayingClient];
    client2 = [activeNowPlayingClient client];
  }

  deviceInfo = [v7 deviceInfo];
  [client2 resolvePlaceholdersForDeviceInfo:deviceInfo];

  v16 = [v7 existingNowPlayingClientForClient:client2];
  if (!v16)
  {
    [client2 setProcessIdentifier:0];
  }

  player = [pathCopy player];
  if (!player)
  {
    activePlayerClient = [v16 activePlayerClient];
    player = [activePlayerClient player];
  }

  v12 = [v16 existingPlayerClientForPlayer:player];
  origin2 = [v7 origin];
  if (!v16)
  {
LABEL_15:
    client3 = client2;
    client2 = client3;
    if (!v12)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  client3 = [v16 client];

  if (!v12)
  {
LABEL_14:
    player2 = player;
    goto LABEL_17;
  }

LABEL_16:
  player2 = [v12 player];
LABEL_17:
  v20 = player2;
  v21 = [[MRPlayerPath alloc] initWithOrigin:origin2 client:client3 player:player2];
  v22 = _MRLogForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A99D4(v24, v21, v22);
  }

  return v21;
}

- (id)queryExistingPlayerPath:(id)path
{
  pathCopy = path;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = pathCopy;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)_onQueue_queryExistingPlayerPath:(id)path
{
  pathCopy = path;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = [[MRDNowPlayingServerResult alloc] initWithUnresolvedPlayerPath:pathCopy];
  v6 = objc_alloc_init(MRPlayerPath);
  origin = [pathCopy origin];
  v8 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:origin];
  [(MRDNowPlayingServerResult *)v5 setOriginClient:v8];

  originClient = [(MRDNowPlayingServerResult *)v5 originClient];

  v10 = v5;
  if (!originClient)
  {
    v23 = 5;
LABEL_7:
    [(MRDNowPlayingServerResult *)v10 setError:v23];
    goto LABEL_10;
  }

  originClient2 = [(MRDNowPlayingServerResult *)v5 originClient];
  origin2 = [originClient2 origin];
  [v6 setOrigin:origin2];

  originClient3 = [(MRDNowPlayingServerResult *)v5 originClient];
  v14 = [originClient3 existingNowPlayingClientForPlayerPath:pathCopy];
  [(MRDNowPlayingServerResult *)v5 setNowPlayingClient:v14];

  nowPlayingClient = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];

  v10 = v5;
  if (!nowPlayingClient)
  {
    v23 = 35;
    goto LABEL_7;
  }

  nowPlayingClient2 = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];
  client = [nowPlayingClient2 client];

  [v6 setClient:client];
  nowPlayingClient3 = [(MRDNowPlayingServerResult *)v5 nowPlayingClient];
  v19 = [nowPlayingClient3 existingPlayerClientForPlayerPath:pathCopy];
  [(MRDNowPlayingServerResult *)v5 setPlayerClient:v19];

  playerClient = [(MRDNowPlayingServerResult *)v5 playerClient];

  if (playerClient)
  {
    playerClient2 = [(MRDNowPlayingServerResult *)v5 playerClient];
    player = [playerClient2 player];

    [v6 setPlayer:player];
  }

  else
  {
    [(MRDNowPlayingServerResult *)v5 setError:29];
  }

LABEL_10:
  v24 = [(MRDNowPlayingServer *)self xpcClientForPlayerPath:pathCopy];
  [(MRDNowPlayingServerResult *)v5 setXpcClient:v24];

  xpcClient = [(MRDNowPlayingServerResult *)v5 xpcClient];

  if (!xpcClient && ![(MRDNowPlayingServerResult *)v5 error])
  {
    [(MRDNowPlayingServerResult *)v5 setError:4];
  }

  [(MRDNowPlayingServerResult *)v5 setPlayerPath:v6];

  return v5;
}

- (id)xpcClientForPlayerPath:(id)path
{
  pathCopy = path;
  origin = [pathCopy origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    origin2 = [pathCopy origin];
    v8 = [(MRDNowPlayingServer *)self _hasForwarderForOrigin:origin2];

    if (v8)
    {
      v9 = +[MRDMediaRemoteServer server];
      daemonClient = [v9 daemonClient];
      goto LABEL_13;
    }

    client = [pathCopy client];
    v9 = client;
    if (!client)
    {
      daemonClient = 0;
      goto LABEL_13;
    }

    processIdentifier = [client processIdentifier];
    bundleIdentifier = [v9 bundleIdentifier];
    origin3 = bundleIdentifier;
    if (processIdentifier < 1)
    {
      if (!bundleIdentifier)
      {
        daemonClient = 0;
        goto LABEL_12;
      }

      v15 = +[MRDMediaRemoteServer server];
      v16 = [v15 clientForBundleIdentifier:origin3];
    }

    else
    {
      v15 = +[MRDMediaRemoteServer server];
      v16 = [v15 clientForPID:processIdentifier];
    }

    daemonClient = v16;
  }

  else
  {
    v9 = +[MRDMediaRemoteServer server];
    origin3 = [pathCopy origin];
    daemonClient = [v9 clientWithRegisteredCustomOrigin:origin3];
  }

LABEL_12:

LABEL_13:

  return daemonClient;
}

- (id)localPlayersForXpcClient:(id)client
{
  clientCopy = client;
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  v6 = objc_alloc_init(MRClient);
  v7 = [clientCopy pid];

  [v6 setProcessIdentifier:v7];
  v8 = [localOriginClient existingNowPlayingClientForClient:v6];
  playerClients = [v8 playerClients];

  return playerClients;
}

- (id)originClientForOrigin:(id)origin
{
  originCopy = origin;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_10003513C;
  v13 = sub_100035A54;
  v14 = 0;
  serialQueue = self->_serialQueue;
  v8 = originCopy;
  msv_dispatch_sync_on_queue();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)originClientForDeviceUID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)originClientForGroupLeaderOfDeviceUID:(id)d
{
  dCopy = d;
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
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(serialQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clearNowPlayingClientForXPCClient:(id)client
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10011FBC0;
  v22[3] = &unk_1004BD9C8;
  clientCopy = client;
  v23 = clientCopy;
  selfCopy = self;
  [clientCopy flushPendingPlaybackSessionMigrateEvents:v22];
  v5 = [MRClient alloc];
  v6 = [clientCopy pid];
  bundleIdentifier = [clientCopy bundleIdentifier];
  v8 = [v5 initWithProcessIdentifier:v6 bundleIdentifier:bundleIdentifier];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  originClients = [(MRDNowPlayingServer *)self originClients];
  v10 = [originClients countByEnumeratingWithState:&v18 objects:v25 count:16];
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
          objc_enumerationMutation(originClients);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        origin = [v14 origin];
        isLocallyHosted = [origin isLocallyHosted];

        if (isLocallyHosted)
        {
          origin2 = [v14 origin];
          [(MRDNowPlayingServer *)self _removeNowPlayingClient:v8 forOrigin:origin2];
        }
      }

      v11 = [originClients countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)restoreDeviceInfoToClient:(id)client handler:(id)handler
{
  handlerCopy = handler;
  if ([client isEntitledFor:0x2000])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    originClients = [(MRDNowPlayingServer *)self originClients];
    v8 = [originClients countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(originClients);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          deviceInfo = [v12 deviceInfo];
          origin = [v12 origin];
          [(MRDNowPlayingServer *)self postDeviceInfoDidChange:deviceInfo previousDeviceInfo:0 forOrigin:origin handler:handlerCopy];
        }

        v9 = [originClients countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }
}

- (void)restoreClientState:(id)state handler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v142 = 0u;
  originClients = [(MRDNowPlayingServer *)self originClients];
  v8 = [originClients countByEnumeratingWithState:&v139 objects:v148 count:16];
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
          objc_enumerationMutation(originClients);
        }

        origin = [*(*(&v139 + 1) + 8 * i) origin];
        [(MRDNowPlayingServer *)self postOriginDidRegister:origin handler:handlerCopy];
      }

      v9 = [originClients countByEnumeratingWithState:&v139 objects:v148 count:16];
    }

    while (v9);
  }

  activePlayerPath = [(MRDNowPlayingServer *)self activePlayerPath];
  activePlayerClient = [(MRDNowPlayingServer *)self activePlayerClient];
  -[MRDNowPlayingServer postActiveOriginDidChange:withPlaybackState:handler:](self, "postActiveOriginDidChange:withPlaybackState:handler:", activePlayerPath, [activePlayerClient playbackState], handlerCopy);

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = [(MRDNowPlayingServer *)self originClients];
  v86 = [obj countByEnumeratingWithState:&v135 objects:v147 count:16];
  if (v86)
  {
    v85 = *v136;
    v94 = handlerCopy;
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
        if ([stateCopy isEntitledFor:0x2000])
        {
          deviceInfo = [v16 deviceInfo];
          origin2 = [v16 origin];
          [(MRDNowPlayingServer *)self postDeviceInfoDidChange:deviceInfo previousDeviceInfo:0 forOrigin:origin2 handler:handlerCopy];
        }

        [v16 volume];
        v20 = v19;
        playerPath = [v16 playerPath];
        LODWORD(v22) = v20;
        [(MRDNowPlayingServer *)self postVolumeDidChange:playerPath volume:handlerCopy handler:v22];

        isMuted = [v16 isMuted];
        playerPath2 = [v16 playerPath];
        [(MRDNowPlayingServer *)self postIsMutedDidChange:playerPath2 isMuted:isMuted handler:handlerCopy];

        volumeControlCapabilities = [v16 volumeControlCapabilities];
        playerPath3 = [v16 playerPath];
        [(MRDNowPlayingServer *)self postVolumeCapabilitiesDidChange:playerPath3 capabilities:volumeControlCapabilities handler:handlerCopy];

        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        nowPlayingClients = [v16 nowPlayingClients];
        v28 = [nowPlayingClients countByEnumeratingWithState:&v131 objects:v146 count:16];
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
                objc_enumerationMutation(nowPlayingClients);
              }

              playerPath4 = [*(*(&v131 + 1) + 8 * j) playerPath];
              [(MRDNowPlayingServer *)self postClientDidRegisterForPlayerPath:playerPath4 handler:handlerCopy];
            }

            v29 = [nowPlayingClients countByEnumeratingWithState:&v131 objects:v146 count:16];
          }

          while (v29);
        }

        activePlayerPath2 = [v16 activePlayerPath];
        activeNowPlayingClient = [v16 activeNowPlayingClient];
        activePlayerClient2 = [activeNowPlayingClient activePlayerClient];
        -[MRDNowPlayingServer postNowPlayingApplicationDidChangeForPlayerPath:withPlaybackState:handler:](self, "postNowPlayingApplicationDidChangeForPlayerPath:withPlaybackState:handler:", activePlayerPath2, [activePlayerClient2 playbackState], handlerCopy);

        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        nowPlayingClients2 = [v16 nowPlayingClients];
        v90 = [nowPlayingClients2 countByEnumeratingWithState:&v127 objects:v145 count:16];
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
                objc_enumerationMutation(nowPlayingClients2);
              }

              v91 = v36;
              v37 = *(*(&v127 + 1) + 8 * v36);
              client = [v37 client];
              playerPath5 = [v37 playerPath];
              [(MRDNowPlayingServer *)self postNowPlayingClientStateDidChange:client forPlayerPath:playerPath5 handler:handlerCopy];

              v125 = 0u;
              v126 = 0u;
              v123 = 0u;
              v124 = 0u;
              v92 = v37;
              playerClients = [v37 playerClients];
              v41 = [playerClients countByEnumeratingWithState:&v123 objects:v144 count:16];
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
                      objc_enumerationMutation(playerClients);
                    }

                    playerPath6 = [*(*(&v123 + 1) + 8 * k) playerPath];
                    [(MRDNowPlayingServer *)self postPlayerDidRegisterForPlayerPath:playerPath6 handler:handlerCopy];
                  }

                  v42 = [playerClients countByEnumeratingWithState:&v123 objects:v144 count:16];
                }

                while (v42);
              }

              activePlayerClient3 = [v92 activePlayerClient];
              playerPath7 = [activePlayerClient3 playerPath];
              activePlayerClient4 = [v92 activePlayerClient];
              -[MRDNowPlayingServer postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:](self, "postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:", playerPath7, [activePlayerClient4 playbackState], handlerCopy);

              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              playerClients2 = [v92 playerClients];
              v98 = [playerClients2 countByEnumeratingWithState:&v119 objects:v143 count:16];
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
                      objc_enumerationMutation(playerClients2);
                    }

                    v99 = v49;
                    v50 = *(*(&v119 + 1) + 8 * v49);
                    player = [v50 player];
                    playerPath8 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postNowPlayingPlayerStateDidChange:player forPlayerPath:playerPath8 handler:handlerCopy];

                    [v16 timeSincePlaying];
                    v53 = [NSDate dateWithTimeIntervalSinceNow:?];
                    [v53 timeIntervalSinceReferenceDate];
                    v55 = v54;

                    isPlaying = [v50 isPlaying];
                    playerPath9 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postIsPlayingDidChange:isPlaying lastPlayingTimestamp:playerPath9 forPlayerPath:handlerCopy handler:v55];

                    playbackState = [v50 playbackState];
                    playerPath10 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackStateDidChange:playbackState forPlayerPath:playerPath10 handler:handlerCopy];

                    supportedRemoteControlCommandsData = [v50 supportedRemoteControlCommandsData];
                    playerPath11 = [v50 playerPath];
                    v115[0] = _NSConcreteStackBlock;
                    v115[1] = 3221225472;
                    v115[2] = sub_100120978;
                    v115[3] = &unk_1004BD9F0;
                    v62 = stateCopy;
                    v116 = v62;
                    v117 = v50;
                    v63 = handlerCopy;
                    v118 = v63;
                    [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:supportedRemoteControlCommandsData forPlayerPath:playerPath11 handler:v115];

                    playbackQueueCapabilities = [v50 playbackQueueCapabilities];
                    playerPath12 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackQueueCapabilitiesDidChange:playbackQueueCapabilities forPlayerPath:playerPath12 handler:v63];

                    playbackQueue = [v50 playbackQueue];
                    playerPath13 = [v50 playerPath];
                    v110[0] = _NSConcreteStackBlock;
                    v110[1] = 3221225472;
                    v110[2] = sub_100120A24;
                    v110[3] = &unk_1004BDA18;
                    v68 = v62;
                    v111 = v68;
                    v69 = playbackQueue;
                    v112 = v69;
                    v113 = v50;
                    v70 = v63;
                    v114 = v70;
                    [(MRDNowPlayingServer *)self postPlaybackQueueDidChange:v69 nowPlayingItemDidChange:1 forPlayerPath:playerPath13 handler:v110];

                    contentItems = [v69 contentItems];
                    playerPath14 = [v50 playerPath];
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
                    [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsDidChange:contentItems forPlayerPath:playerPath14 handler:v105];

                    contentItems2 = [v74 contentItems];
                    playerPath15 = [v50 playerPath];
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
                    [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsArtworkDidChange:contentItems2 forPlayerPath:playerPath15 handler:v100];

                    participants = [v50 participants];
                    playerPath16 = [v50 playerPath];
                    [(MRDNowPlayingServer *)self postPlaybackQueueParticipantsDidChange:participants forPlayerPath:playerPath16 handler:v79];

                    if ([v50 canBeNowPlayingPlayer])
                    {
                      playerPath17 = [v50 playerPath];
                      [(MRDNowPlayingServer *)self postPlayerDidRegisterCanBeNowPlayingForPlayerPath:playerPath17 handler:v79];
                    }

                    v49 = v99 + 1;
                    handlerCopy = v94;
                    v16 = v95;
                  }

                  while (v98 != (v99 + 1));
                  v98 = [playerClients2 countByEnumeratingWithState:&v119 objects:v143 count:16];
                }

                while (v98);
              }

              if ([v92 canBeNowPlaying])
              {
                activePlayerPath3 = [v92 activePlayerPath];
                [(MRDNowPlayingServer *)self postClientDidRegisterCanBeNowPlayingForPlayerPath:activePlayerPath3 handler:handlerCopy];
              }

              v36 = v91 + 1;
            }

            while ((v91 + 1) != v90);
            v90 = [nowPlayingClients2 countByEnumeratingWithState:&v127 objects:v145 count:16];
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

- (void)beginMusicHandoffSessionWithSource:(id)source destination:(id)destination completion:(id)completion
{
  sourceCopy = source;
  destinationCopy = destination;
  completionCopy = completion;
  v11 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100121078;
  v15[3] = &unk_1004BC458;
  v16 = sourceCopy;
  v17 = destinationCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = destinationCopy;
  v13 = sourceCopy;
  v14 = completionCopy;
  sub_10019F130(v11, 0, v15, 7.0);
}

- (void)_handleGetAvailableOriginsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  originClients = [(MRDNowPlayingServer *)self originClients];
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(originClients, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = originClients;
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

        origin = [*(*(&v17 + 1) + 8 * v12) origin];
        [v7 addObject:origin];

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
  sub_100008278(messageCopy, v15);
}

- (void)_handleSetActiveOriginMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  v6 = MRCreateOriginFromXPCMessage();
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = clientCopy;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requesting to set active origin to %{public}@", &v8, 0x16u);
  }

  [(MRDNowPlayingServer *)self setActiveOrigin:v6];
}

- (void)_handleGetActiveOriginMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  activeOriginClient = [(MRDNowPlayingServer *)self activeOriginClient];
  origin = [activeOriginClient origin];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10012185C;
  v9[3] = &unk_1004B6E08;
  v10 = origin;
  v8 = origin;
  sub_100008278(messageCopy, v9);
}

- (void)reregisterOrigin:(id)origin deviceInfo:(id)info
{
  originCopy = origin;
  infoCopy = info;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = originCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Re-registering origin %{public}@", buf, 0xCu);
  }

  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  [v9 removeOrigin:originCopy];

  v10 = +[MRNowPlayingOriginClientManager sharedManager];
  routingContextID = [infoCopy routingContextID];
  v12 = [v10 createCustomOriginClientForOrigin:originCopy routingContextID:routingContextID];

  v13 = +[MRNowPlayingOriginClientManager sharedManager];
  [v13 removeOriginRequests:originCopy];

  v14 = +[MRNowPlayingOriginClientManager sharedManager];
  playerPath = [originCopy playerPath];
  v16 = [v14 originClientRequestsForPlayerPath:playerPath];

  [v16 setDeviceInfo:infoCopy];
  v17 = [(MRDNowPlayingServer *)self originClientForOrigin:originCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  nowPlayingClients = [v17 nowPlayingClients];
  v19 = [nowPlayingClients countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(nowPlayingClients);
        }

        client = [*(*(&v24 + 1) + 8 * v22) client];
        [v17 removeNowPlayingClientForClient:client];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [nowPlayingClients countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }

  [v17 setVolumeControlCapabilities:0];
  [v17 setVolume:0.0];
  [v17 clearDefaultSupportedCommandsData];
  [v17 setDeviceInfo:infoCopy];
}

- (void)updateDeviceInfo:(id)info origin:(id)origin
{
  infoCopy = info;
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:origin];
  [v7 setDeviceInfo:infoCopy];
}

- (void)_handleSetNowPlayingAppOverrideMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = xpc_dictionary_get_BOOL(messageCopy, "MRXPC_NOWPLAYING_APP_OVERRIDE_ENABLED_KEY");
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"disable";
    if (v8)
    {
      v10 = @"enable";
    }

    v25 = 138543618;
    v26 = clientCopy;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Client %{public}@ requesting to %{public}@ itself as now playing app override", &v25, 0x16u);
  }

  overrideClient = [(MRDNowPlayingServer *)self overrideClient];
  v12 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v12 nowPlayingServer];

  v14 = +[MROrigin localOrigin];
  v15 = [nowPlayingServer originClientForOrigin:v14];

  v16 = [v15 existingNowPlayingClientForPid:{objc_msgSend(overrideClient, "pid")}];
  if (v8)
  {
    v17 = +[MRPlayer defaultPlayer];
    v18 = [v16 playerClientForPlayer:v17];
    [v18 setCanBeNowPlayingPlayer:1];

    v19 = +[NSDate now];
    v20 = +[MRPlayer defaultPlayer];
    v21 = [v16 playerClientForPlayer:v20];
    [v21 setCanBeNowPlayingPlayerTimestamp:v19];

    v22 = clientCopy;
  }

  else
  {
    v23 = [overrideClient pid];
    if (v23 != [clientCopy pid])
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
  sub_10000F9E4(messageCopy, v24);
}

- (void)_handleSetOverriddenNowPlayingAppMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "MRXPC_NOWPLAYING_DISPLAYID_KEY");
  if (string)
  {
    string = [[NSString alloc] initWithUTF8String:string];
  }

  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"enable";
    *buf = 138543874;
    v28 = clientCopy;
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
      nowPlayingServer = [v13 nowPlayingServer];

      v15 = +[MROrigin localOrigin];
      v16 = [nowPlayingServer originClientForOrigin:v15];

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
      nowPlayingServer = _MRLogForCategory();
      if (os_log_type_enabled(nowPlayingServer, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [string length];
        v25 = @"<unknown>";
        if (v24)
        {
          v25 = string;
        }

        *buf = 138543362;
        v28 = v25;
        _os_log_impl(&_mh_execute_header, nowPlayingServer, OS_LOG_TYPE_DEFAULT, "Could not set override client. Client %{public}@ not found.", buf, 0xCu);
      }

      v23 = 4;
    }
  }

  else
  {
    [(MRDNowPlayingServer *)self setOverrideClient:0];
    v23 = 0;
  }

  sub_10000F9E4(messageCopy, v23);
}

- (void)_handleSetCanBeNowPlayingAppMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:messageCopy fromClient:client];
  nowPlayingClient = [v7 nowPlayingClient];

  if (nowPlayingClient)
  {
    v9 = xpc_dictionary_get_BOOL(messageCopy, "MRXPC_NOWPLAYING_APP_ENABLED_KEY");
    nowPlayingClient2 = [v7 nowPlayingClient];
    [nowPlayingClient2 setCanBeNowPlaying:v9];
    if (v9 && xpc_dictionary_get_double(messageCopy, "MRXPC_TIMESTAMP") > 2.22044605e-16)
    {
      playerPath = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [nowPlayingClient2 setCanBeNowPlayingTimestamp:playerPath];
LABEL_7:
    }
  }

  else
  {
    nowPlayingClient2 = _MRLogForCategory();
    if (os_log_type_enabled(nowPlayingClient2, OS_LOG_TYPE_DEFAULT))
    {
      playerPath = [v7 playerPath];
      v12 = 138412290;
      v13 = playerPath;
      _os_log_impl(&_mh_execute_header, nowPlayingClient2, OS_LOG_TYPE_DEFAULT, "Unable to set can be now playing app. No now playing client found for %@", &v12, 0xCu);
      goto LABEL_7;
    }
  }
}

- (void)_handleSetCanBeNowPlayingPlayerMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:messageCopy fromClient:client];
  playerClient = [v7 playerClient];

  if (playerClient)
  {
    v9 = xpc_dictionary_get_BOOL(messageCopy, "MRXPC_NOWPLAYING_APP_ENABLED_KEY");
    playerClient2 = [v7 playerClient];
    [playerClient2 setCanBeNowPlayingPlayer:v9];
    nowPlayingClient = [v7 nowPlayingClient];
    [nowPlayingClient setPerPlayerCanBeNowPlaying:1];
    if (v9 && xpc_dictionary_get_double(messageCopy, "MRXPC_TIMESTAMP") > 2.22044605e-16)
    {
      v12 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
      [playerClient2 setCanBeNowPlayingPlayerTimestamp:v12];
    }

    goto LABEL_7;
  }

  playerClient2 = _MRLogForCategory();
  if (os_log_type_enabled(playerClient2, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingClient = [v7 playerPath];
    v13 = 138412290;
    v14 = nowPlayingClient;
    _os_log_impl(&_mh_execute_header, playerClient2, OS_LOG_TYPE_DEFAULT, "Unable to set can be now playing player. No player client found for %@", &v13, 0xCu);
LABEL_7:
  }
}

- (void)_handleBeginApplicationActivityMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateAppActivityFromXPCMessage();
  MSVDeviceOSIsInternalInstall();
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  MSVDeviceOSIsInternalInstall();
  if (localOriginClient)
  {
    v8 = [v6 mutableCopy];
    MSVDeviceOSIsInternalInstall();
    [localOriginClient setActivity:v8];

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
  sub_100008278(messageCopy, v10);
}

- (void)_handleGetApplicationActivityMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activity = [localOriginClient activity];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100122608;
  v9[3] = &unk_1004B6E08;
  v10 = activity;
  v8 = activity;
  sub_100008278(messageCopy, v9);
}

- (void)_handleEndApplicationActivityMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  MSVDeviceOSIsInternalInstall();
  if (localOriginClient)
  {
    [localOriginClient setActivity:0];
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  sub_10000F9E4(messageCopy, v6);
}

- (void)_handleSetPlaybackQueue:(id)queue fromClient:(id)client
{
  queueCopy = queue;
  clientCopy = client;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:queueCopy fromClient:clientCopy];
  v8 = MRCreatePlaybackQueueFromXPCMessage();
  v9 = v8;
  if (v8)
  {
    range = [v8 range];
    v12 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:range, v11];
    playbackQueueRequests = [clientCopy playbackQueueRequests];
    playerPath = [v7 playerPath];
    v15 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath];

    [v15 subscribeToPlaybackQueue:v9 forRequest:v12];
    v16 = +[MRDMediaRemoteServer server];
    daemonClient = [v16 daemonClient];

    playbackQueueRequests2 = [daemonClient playbackQueueRequests];
    playerPath2 = [v7 playerPath];
    v20 = [playbackQueueRequests2 subscriptionControllerForPlayerPath:playerPath2];

    [v20 subscribeToPlaybackQueue:v9 forRequest:v12];
  }

  playerClient = [v7 playerClient];
  [playerClient setPlaybackQueue:v9];

  sub_10000F9E4(queueCopy, [v7 error]);
}

- (void)_handleRequestPlaybackQueueCapabilities:(id)capabilities fromClient:(id)client
{
  capabilitiesCopy = capabilities;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:capabilitiesCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122914;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(capabilitiesCopy, v8);
}

- (void)_handleSetPlaybackQueueCapabilities:(id)capabilities fromClient:(id)client
{
  capabilitiesCopy = capabilities;
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:capabilitiesCopy fromClient:client];
  v7 = MRCreatePlaybackQueueCapabilitiesFromXPCMessage();
  playerClient = [v9 playerClient];
  [playerClient setPlaybackQueueCapabilities:v7];

  sub_10000F9E4(capabilitiesCopy, [v9 error]);
}

- (void)_handleSetHardwareRemoteBehaviorMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "MRXPC_HARDWARE_REMOTE_BEHAVIOR_KEY");
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MRMediaRemoteCopyHardwareRemoteBehaviorDescription();
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = clientCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting hardware remote behavior to %{public}@ for client %{public}@", &v10, 0x16u);
  }

  [clientCopy setHardwareRemoteBehavior:uint64];
  sub_10000F9E4(messageCopy, 0);
}

- (void)_handleResetPlaybackQueueRequests:(id)requests fromClient:(id)client
{
  clientCopy = client;
  requestsCopy = requests;
  v11 = MRCreatePlayerPathFromXPCMessage();
  playbackQueueRequests = [clientCopy playbackQueueRequests];

  v8 = [playbackQueueRequests subscriptionControllerForPlayerPath:v11];

  v9 = MRCreateDataFromXPCMessage();
  v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:0];
  if (v10)
  {
    [v8 restoreStateFromController:v10];
  }
}

- (void)_handleGetClientPropertiesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100122CFC;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(messageCopy, v8);
}

- (void)_handleSetClientPropertiesMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:clientCopy useDefaultPlayerIfNoneSpecified:0];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  client = [v8 client];
  nowPlayingClient = [v10 nowPlayingClient];
  [nowPlayingClient setClient:client];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100122EC0;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(messageCopy, v14);
}

- (void)_handleUpdateClientPropertiesMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:clientCopy useDefaultPlayerIfNoneSpecified:0];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  nowPlayingClient = [v10 nowPlayingClient];
  client = [v8 client];
  [nowPlayingClient updateClient:client];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100123048;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(messageCopy, v14);
}

- (void)_handleGetPlayerPropertiesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100123174;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(messageCopy, v8);
}

- (void)_handleSetPlayerPropertiesMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:clientCopy];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  playerClient = [v10 playerClient];
  [playerClient setPlayerPath:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10012331C;
  v13[3] = &unk_1004B6E08;
  v14 = v10;
  v12 = v10;
  sub_100008278(messageCopy, v13);
}

- (void)_handleUpdatePlayerPropertiesMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolvePlayerPath:v8 fromClient:clientCopy];

  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v9];
  playerClient = [v10 playerClient];
  player = [v8 player];
  [playerClient updatePlayer:player];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001234A0;
  v14[3] = &unk_1004B6E08;
  v15 = v10;
  v13 = v10;
  sub_100008278(messageCopy, v14);
}

- (void)_handleGetPlaybackStateMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001235B4;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(messageCopy, v8);
}

- (void)_handleSetPlaybackStateMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:messageCopy fromClient:client];
  nowPlayingClient = [v7 nowPlayingClient];

  if (nowPlayingClient)
  {
    uint64 = xpc_dictionary_get_uint64(messageCopy, "MRXPC_PLAYBACK_STATE_KEY");
    v10 = xpc_dictionary_get_double(messageCopy, "MRXPC_TIMESTAMP");
    playerClient = [v7 playerClient];
    v12 = playerClient;
    if (v10 <= 0.0)
    {
      [playerClient updatePlaybackState:uint64 date:0];
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
      playerPath = [v7 playerPath];
      v15 = 138412290;
      v16 = playerPath;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unable to set playback state. No now playing client found for %@", &v15, 0xCu);
    }
  }

  sub_10000F9E4(messageCopy, [v7 error]);
}

- (void)_handleGetAnyAppIsPlayingMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  originClient = [v8 originClient];
  LODWORD(self) = [originClient isPlaying];

  sub_10000BEE0(messageCopy, "MRXPC_APP_IS_PLAYING_KEY", 2, self, 0);
}

- (void)_handleRequestVideoThumbnailsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = [v8 xpcClient];
    v17 = 138543618;
    v18 = clientCopy;
    v19 = 2114;
    v20 = xpcClient;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received video thumbnails request from %{public}@ for %{public}@", &v17, 0x16u);
  }

  xpcClient2 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (xpcClient2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpcClient3 = [v8 xpcClient];
      v17 = 138543362;
      v18 = xpcClient3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying video thumbnails request to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(messageCopy, "MRXPC_MESSAGE_ID_KEY", 0x700000000000004uLL);
    playerPath = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    xpcClient4 = [v8 xpcClient];
    [xpcClient4 relayXPCMessage:messageCopy andReply:1];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9A5C();
    }

    sub_10000F9E4(messageCopy, [v8 error]);
  }
}

- (void)_handleRequestAudioAmplitudeSamplesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = [v8 xpcClient];
    v17 = 138543618;
    v18 = clientCopy;
    v19 = 2114;
    v20 = xpcClient;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received audio amplitude samples request from %{public}@ for %{public}@", &v17, 0x16u);
  }

  xpcClient2 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (xpcClient2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpcClient3 = [v8 xpcClient];
      v17 = 138543362;
      v18 = xpcClient3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying audio amplitude samples request to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(messageCopy, "MRXPC_MESSAGE_ID_KEY", 0x700000000000005uLL);
    playerPath = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    xpcClient4 = [v8 xpcClient];
    [xpcClient4 relayXPCMessage:messageCopy andReply:1];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9A90();
    }

    sub_10000F9E4(messageCopy, [v8 error]);
  }
}

- (void)_handleSendLyricsEvent:(id)event fromClient:(id)client
{
  eventCopy = event;
  clientCopy = client;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:eventCopy forClient:clientCopy];
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    xpcClient = [v8 xpcClient];
    v17 = 138543618;
    v18 = clientCopy;
    v19 = 2114;
    v20 = xpcClient;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received lyrics event from client %{public}@ and sending to %{public}@", &v17, 0x16u);
  }

  xpcClient2 = [v8 xpcClient];

  v12 = _MRLogForCategory();
  v13 = v12;
  if (xpcClient2)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpcClient3 = [v8 xpcClient];
      v17 = 138543362;
      v18 = xpcClient3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Relaying lyrics event to %{public}@", &v17, 0xCu);
    }

    xpc_dictionary_set_uint64(eventCopy, "MRXPC_MESSAGE_ID_KEY", 0x700000000000006uLL);
    playerPath = [v8 playerPath];
    MRAddPlayerPathToXPCMessage();
    xpcClient4 = [v8 xpcClient];
    [xpcClient4 relayXPCMessage:eventCopy andReply:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9AC4();
    }

    sub_10000F9E4(eventCopy, [v8 error]);
  }
}

- (void)_handleResolvePlayerPath:(id)path fromClient:(id)client
{
  clientCopy = client;
  pathCopy = path;
  v8 = MRCreatePlayerPathFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v8];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    displayName = [clientCopy displayName];
    *buf = 138543874;
    v16 = displayName;
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
  sub_100008278(pathCopy, v13);
}

- (void)_handleGetNowPlayingClientsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v20 = messageCopy;
  v19 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];
  originClient = [v19 originClient];
  nowPlayingClients = [originClient nowPlayingClients];

  v21 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(nowPlayingClients, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = nowPlayingClients;
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
        v23 = clientCopy;
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

- (void)_handleSetNowPlayingClientMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = MRCreatePlayerPathFromXPCMessage();
  origin = [v8 origin];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100124674;
  block[3] = &unk_1004BC9F8;
  block[4] = self;
  v11 = origin;
  v15 = v11;
  v12 = clientCopy;
  v16 = v12;
  v13 = v8;
  v17 = v13;
  v18 = &v19;
  dispatch_sync(serialQueue, block);
  sub_10000F9E4(messageCopy, *(v20 + 6));

  _Block_object_dispose(&v19, 8);
}

- (void)_handleGetNowPlayingClientMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10012483C;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(messageCopy, v8);
}

- (void)_handleRemoveNowPlayingClientMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  originClient = [v10 originClient];
  nowPlayingClient = [v10 nowPlayingClient];
  client = [nowPlayingClient client];
  [originClient removeNowPlayingClientForClient:client];

  sub_10000F9E4(messageCopy, [v10 error]);
}

- (void)_handleGetNowPlayingPlayersMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  nowPlayingClient = [v7 nowPlayingClient];
  playerClients = [nowPlayingClient playerClients];

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(playerClients, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = playerClients;
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
        nowPlayingClient2 = [v7 nowPlayingClient];
        v18 = [nowPlayingClient2 canBeNowPlayingForPlayerClient:v16];

        if (v18)
        {
          player = [v16 player];
          data = [player data];
          [v10 addObject:data];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v21 = [NSPropertyListSerialization dataWithPropertyList:v10 format:200 options:0 error:0];
  sub_10001673C(messageCopy, "MRXPC_NOWPLAYING_PLAYER_ARRAY_DATA_KEY", v21, 0);
}

- (void)_handleSetNowPlayingPlayerMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = MRCreatePlayerPathFromXPCMessage();
  v8 = [(MRDNowPlayingServer *)self resolvePlayerPath:v7 fromClient:clientCopy useDefaultPlayerIfNoneSpecified:0];

  v9 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v8];
  playerClient = [v9 playerClient];
  nowPlayingClient = [v9 nowPlayingClient];
  [nowPlayingClient setActivePlayerClient:playerClient];

  player = [v7 player];
  if (player)
  {
    v13 = player;
    playerClient2 = [v9 playerClient];

    if (!playerClient2)
    {
      goto LABEL_5;
    }
  }

  nowPlayingClient2 = [v9 nowPlayingClient];

  if (nowPlayingClient2)
  {
    error = 0;
  }

  else
  {
LABEL_5:
    error = [v9 error];
  }

  sub_10000F9E4(messageCopy, error);
}

- (void)_handleGetNowPlayingPlayerMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100124D70;
  v9 = v8[3] = &unk_1004B6E08;
  v7 = v9;
  sub_100008278(messageCopy, v8);
}

- (void)_handleRemoveNowPlayingPlayerMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v10 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  playerClient = [v10 playerClient];
  player = [playerClient player];

  nowPlayingClient = [v10 nowPlayingClient];
  [nowPlayingClient removePlayerClientForPlayer:player];

  sub_10000F9E4(messageCopy, [v10 error]);
}

- (void)_handleGetActivePlayerPathsForLocalOriginMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  activePlayerClients = [localOriginClient activePlayerClients];
  v9 = [activePlayerClients mr_map:&stru_1004BDB48];

  v8 = [NSPropertyListSerialization dataWithPropertyList:v9 format:200 options:0 error:0];
  sub_10001673C(messageCopy, "MRXPC_NOWPLAYING_PLAYER_PATH_ARRAY_DATA_KEY", v8, 0);
}

- (void)_handleGetPlayerPictureInPictureEnabledMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  playerClient = [v7 playerClient];
  isPictureInPictureEnabled = [playerClient isPictureInPictureEnabled];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100125094;
  v11[3] = &unk_1004BDB70;
  v12 = v7;
  v13 = isPictureInPictureEnabled;
  v10 = v7;
  sub_100008278(messageCopy, v11);
}

- (void)_handleSetPlayerPictureInPictureEnabledMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:messageCopy fromClient:client];
  v7 = xpc_dictionary_get_BOOL(messageCopy, "MRXPC_PICTURE_IN_PICTURE_ENABLED_KEY");
  playerClient = [v9 playerClient];
  [playerClient setPictureInPictureEnabled:v7];

  sub_10000F9E4(messageCopy, [v9 error]);
}

- (void)_handleContentItemChangedMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = [MRDNowPlayingServer queryExistingPlayerPathForXPCMessage:"queryExistingPlayerPathForXPCMessage:forClient:" forClient:?];
  playerClient = [v5 playerClient];

  if (playerClient)
  {
    v7 = MRCreateContentItemsFromXPCMessage();
    if (v7)
    {
      v8 = [[MRPlaybackQueue alloc] initWithContentItems:v7];
      if (v8)
      {
        playerClient2 = [v5 playerClient];
        [playerClient2 updatePlaybackQueue:v8 fromRequest:0];
      }
    }
  }

  sub_10000F9E4(messageCopy, [v5 error]);
}

- (void)_handleContentItemArtworkChangedMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = [MRDNowPlayingServer queryExistingPlayerPathForXPCMessage:"queryExistingPlayerPathForXPCMessage:forClient:" forClient:?];
  playerClient = [v5 playerClient];

  if (playerClient)
  {
    v7 = MRCreateContentItemsFromXPCMessage();
    playerClient2 = [v5 playerClient];
    [playerClient2 notifyArtworkChangedForContentItems:v7];
  }

  sub_10000F9E4(messageCopy, [v5 error]);
}

- (void)_handleGetDeviceInfo:(id)info fromClient:(id)client
{
  infoCopy = info;
  clientCopy = client;
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:infoCopy forClient:clientCopy];
  error = [v8 error];
  v10 = [clientCopy isEntitledFor:0x2000];

  if (v10)
  {
    originClient = [v8 originClient];
    deviceInfo = [originClient deviceInfo];
  }

  else
  {
    deviceInfo = 0;
    error = 3;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100125480;
  v14[3] = &unk_1004BDB98;
  v16 = error;
  v15 = deviceInfo;
  v13 = deviceInfo;
  sub_100008278(infoCopy, v14);
}

- (void)_handleGetElectedPlayerPathMessage:(id)message fromClient:(id)client
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10012554C;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(message, v4);
}

- (void)_handleGetProactiveRecommendedPlayerMessage:(id)message fromClient:(id)client
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100125624;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(message, v4);
}

- (void)_handlePlaybackSessionRequest:(id)request fromClient:(id)client
{
  requestCopy = request;
  v6 = MRCreateProtobufFromXPCMessage();
  playerPath = [v6 playerPath];
  v8 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:playerPath];

  if ([v8 error])
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001257CC;
    v10[3] = &unk_1004B6E08;
    v11 = v8;
    sub_100008278(requestCopy, v10);
  }

  else
  {
    xpcClient = [v8 xpcClient];
    [xpcClient relayXPCMessage:requestCopy andReply:1 resultCallback:0];
  }
}

- (void)_handleGetSupportedCommandsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  [clientCopy setHasRequestedSupportedCommands:1];
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
  v8 = messageCopy;
  v19 = v8;
  v9 = clientCopy;
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

- (void)_handleSetSupportedCommandsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  v9 = [nowPlayingServer queryPlayerPathForXPCMessage:messageCopy fromClient:clientCopy];

  nowPlayingClient = [v9 nowPlayingClient];

  if (nowPlayingClient)
  {
    v11 = MRCreateSupportedCommandsDataFromXPCMessage();
    playerClient = [v9 playerClient];
    [playerClient setSupportedRemoteControlCommandsData:v11];
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

  sub_10000F9E4(messageCopy, [v9 error]);
}

- (void)_handleSetDefaultSupportedCommandsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = MRCreateSupportedCommandsDataFromXPCMessage();
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  v10 = [nowPlayingServer queryExistingPlayerPathForXPCMessage:messageCopy forClient:clientCopy];

  unresolvedPlayerPath = [v10 unresolvedPlayerPath];
  client = [unresolvedPlayerPath client];
  bundleIdentifier = [client bundleIdentifier];

  bundleIdentifier2 = [clientCopy bundleIdentifier];
  if ([bundleIdentifier isEqualToString:bundleIdentifier2])
  {
  }

  else
  {
    v15 = [clientCopy isEntitledFor:256];

    if ((v15 & 1) == 0)
    {
      v29 = 3;
      goto LABEL_8;
    }
  }

  originClient = [v10 originClient];
  [originClient updateDefaultSupportedCommandsData:v7 forClient:bundleIdentifier];

  nowPlayingClient = [v10 nowPlayingClient];

  if (!nowPlayingClient)
  {
    v18 = objc_alloc_init(MRPlayerPath);
    originClient2 = [v10 originClient];
    origin = [originClient2 origin];
    [v18 setOrigin:origin];

    v21 = objc_alloc_init(MRClient);
    [v18 setClient:v21];

    unresolvedPlayerPath2 = [v10 unresolvedPlayerPath];
    client2 = [unresolvedPlayerPath2 client];
    bundleIdentifier3 = [client2 bundleIdentifier];
    client3 = [v18 client];
    [client3 setBundleIdentifier:bundleIdentifier3];

    [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:v7 forPlayerPath:v18 handler:0];
  }

  v26 = objc_alloc_init(NSMutableDictionary);
  unresolvedPlayerPath3 = [v10 unresolvedPlayerPath];
  MRAddPlayerPathToUserInfo();

  v28 = +[MRDMediaRemoteServer server];
  [v28 postClientNotificationNamed:_MRMediaRemoteDefaultSupportedCommandsDidChangeNotification userInfo:v26];

  v29 = 0;
LABEL_8:
  sub_10000F9E4(messageCopy, v29);
}

- (void)_handleGetLastPlayingDateMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
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
  sub_100008278(messageCopy, v10);
}

- (void)_handleSetPlayerClientPropertiesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateProtobufFromXPCMessage();
  v9 = [(MRDNowPlayingServer *)self queryPlayerPathForXPCMessage:messageCopy fromClient:clientCopy];

  playerClient = [v9 playerClient];

  if (playerClient)
  {
    playerClient2 = [v9 playerClient];
    lastPlayingDate = [v8 lastPlayingDate];
    [playerClient2 updateLastPlayingDate:lastPlayingDate];
  }

  else
  {
    playerClient2 = _MRLogForCategory();
    if (os_log_type_enabled(playerClient2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, playerClient2, OS_LOG_TYPE_DEFAULT, "Unable to set properties from message %@. No player client found.", &v13, 0xCu);
    }
  }

  sub_10000F9E4(messageCopy, [v9 error]);
}

- (void)_handleSetOriginClientPropertiesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateProtobufFromXPCMessage();
  v7 = MRCreateOriginFromXPCMessage();
  v8 = [(MRDNowPlayingServer *)self originClientForOrigin:v7];
  if (v8)
  {
    lastPlayingDate = [v6 lastPlayingDate];
    [v8 updateLastPlayingDate:lastPlayingDate];

    devicePlaybackSessionID = [v6 devicePlaybackSessionID];
    [v8 setDevicePlaybackSessionID:devicePlaybackSessionID];

    v11 = messageCopy;
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

    v11 = messageCopy;
    v12 = 5;
  }

  sub_10000F9E4(v11, v12);
}

- (void)_handleRegisterForWakingNowPlayingNotifications:(id)notifications fromClient:(id)client
{
  clientCopy = client;
  notificationsCopy = notifications;
  v7 = MRCreatePlayerPathArrayFromXPCMessage();
  if ([clientCopy isEntitledFor:128])
  {
    [clientCopy setWantsAssertionsForNotificationsWithPlayerPath:v7];
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
  sub_100008278(notificationsCopy, v10);
}

- (void)_handleGetAudioFormatContentInfoForOriginMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateOriginFromXPCMessage();
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:v6];
  nowPlayingAudioFormatContentInfos = [v7 nowPlayingAudioFormatContentInfos];
  v9 = nowPlayingAudioFormatContentInfos;
  if (nowPlayingAudioFormatContentInfos)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100126F80;
    v11[3] = &unk_1004B6E08;
    v12 = nowPlayingAudioFormatContentInfos;
    sub_100008278(messageCopy, v11);
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

    sub_10000F9E4(messageCopy, 5u);
  }
}

- (void)_handleGetImageDimensionsForArtworkDataMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = MRCreateDataFromXPCMessage();
  [MRImageUtilities imageDimensionsForImageData:v5 error:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100127054;
  v8[3] = &unk_1004BDD10;
  v8[4] = v6;
  v8[5] = v7;
  sub_100008278(messageCopy, v8);
}

- (void)_handleFetchPlaybackQueueParticipantsMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPathForXPCMessage:messageCopy forClient:client];
  playerClient = [v7 playerClient];
  participants = [playerClient participants];
  v10 = [participants msv_compactMap:&stru_1004BDD50];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001271E0;
  v13[3] = &unk_1004B6E30;
  v14 = v10;
  v15 = v7;
  v11 = v7;
  v12 = v10;
  sub_100008278(messageCopy, v13);
}

- (void)_handleBeginMusicHandoffSessionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateDataFromXPCMessage();
  v7 = [[MRMusicHandoffSession alloc] initWithProtobufData:v6];
  sourcePlayerPath = [v7 sourcePlayerPath];
  destinationPlayerPath = [v7 destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10012737C;
  v11[3] = &unk_1004BDDA0;
  v12 = messageCopy;
  v10 = messageCopy;
  [(MRDNowPlayingServer *)self beginMusicHandoffSessionWithSource:sourcePlayerPath destination:destinationPlayerPath completion:v11];
}

- (void)_handleSendMusicHandoffEventMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateDataFromXPCMessage();
  v9 = [[MRMusicHandoffEvent alloc] initWithProtobufData:v8];
  v10 = [MRPlayerPath alloc];
  createNowPlayingClient = [clientCopy createNowPlayingClient];

  v12 = [v10 initWithOrigin:0 client:createNowPlayingClient player:0];
  v13 = [(MRDNowPlayingServer *)self resolveExistingPlayerPath:v12];
  v14 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:v13];

  if ([v14 error])
  {
    v15 = [[NSError alloc] initWithMRError:{objc_msgSend(v14, "error")}];
  }

  else
  {
    playerClient = [v14 playerClient];
    v15 = [playerClient handleHandoffEvent:v9];
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100127848;
  v19[3] = &unk_1004B6E30;
  v20 = v15;
  v21 = messageCopy;
  v17 = messageCopy;
  v18 = v15;
  sub_100008278(v17, v19);
}

- (void)_handleGetMediaSuggestionDeviceUIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10012794C;
  v6[3] = &unk_1004B6E30;
  v7 = [[NSError alloc] initWithMRError:6];
  v8 = 0;
  v5 = v7;
  sub_100008278(messageCopy, v6);
}

- (void)nowPlayingPlayerClient:(id)client playerStateDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postNowPlayingPlayerStateDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingPlayerClient:(id)client supportedCommandsDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postSupportedCommandsDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingPlayerClient:(id)client playbackQueueCapabilitiesDidChange:(unint64_t)change
{
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueCapabilitiesDidChange:change forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingPlayerClient:(id)client playbackQueueContentItemsDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingPlayerClient:(id)client playbackQueueArtworkContentItemsDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueContentItemsArtworkDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingPlayerClient:(id)client playerCanBeNowPlayingDidChange:(BOOL)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  if (changeCopy)
  {
    [(MRDNowPlayingServer *)self postPlayerDidRegisterCanBeNowPlayingForPlayerPath:playerPath handler:0];
  }

  else
  {
    [(MRDNowPlayingServer *)self postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:playerPath handler:0];
  }
}

- (void)nowPlayingPlayerClient:(id)client playbackQueueParticipantsDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postPlaybackQueueParticipantsDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)startObservingNowPlayingInfoForNowPlayingPlayerClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_nowPlayingInfoObserverQueue);
  playerPath = [clientCopy playerPath];
  objc_initWeak(location, self);
  objc_initWeak(&from, clientCopy);
  v6 = +[NSNotificationCenter defaultCenter];
  v7 = kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1001282B0;
  v25[3] = &unk_1004BDDC8;
  objc_copyWeak(&v27, location);
  v8 = playerPath;
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

  playbackQueue = [clientCopy playbackQueue];
  contentItems = [playbackQueue contentItems];
  firstObject = [contentItems firstObject];
  metadata = [firstObject metadata];
  mediaType = [metadata mediaType];

  if (mediaType)
  {
    v19 = self->_nowPlayingInfoObserverQueue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1001284CC;
    v20[3] = &unk_1004B68F0;
    v20[4] = self;
    v21 = clientCopy;
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

- (void)wakeDeviceIfNecessaryForNowPlayingPlayerClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_nowPlayingInfoObserverQueue);
  [(MRDNowPlayingServer *)self stopObservingNowPlayingInfo];
  playerPath = [clientCopy playerPath];
  playbackQueue = [clientCopy playbackQueue];
  contentItems = [playbackQueue contentItems];
  firstObject = [contentItems firstObject];
  metadata = [firstObject metadata];
  mediaType = [metadata mediaType];

  if (mediaType == 1)
  {
    isPlaying = 0;
  }

  else
  {
    isPlaying = [clientCopy isPlaying];
  }

  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  deviceInfo = [localOriginClient deviceInfo];

  if (isPlaying && ([deviceInfo isAirPlayActive] & 1) == 0 && (objc_msgSend(deviceInfo, "isProxyGroupPlayer") & 1) == 0)
  {
    v13 = [[NSString alloc] initWithFormat:@"Playback started of type %ld for %@", mediaType, playerPath];
    sub_1001A02A4(1);
  }
}

- (void)nowPlayingClient:(id)client activePlayerDidChangeFromPlayerClient:(id)playerClient toPlayerClient:(id)toPlayerClient
{
  clientCopy = client;
  toPlayerClientCopy = toPlayerClient;
  playerPath = [toPlayerClientCopy playerPath];
  if (!playerPath)
  {
    playerPath = [clientCopy playerPath];
  }

  -[MRDNowPlayingServer postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:](self, "postActivePlayerDidChangeForPlayerPath:withPlaybackState:handler:", playerPath, [toPlayerClientCopy playbackState], 0);
  [(MRDNowPlayingServer *)self maybePostDistributedNotifications];
}

- (void)nowPlayingClient:(id)client clientStateDidChange:(id)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  [(MRDNowPlayingServer *)self postNowPlayingClientStateDidChange:changeCopy forPlayerPath:playerPath handler:0];
}

- (void)nowPlayingClient:(id)client playerDidRegister:(id)register
{
  playerPath = [register playerPath];
  [(MRDNowPlayingServer *)self postPlayerDidRegisterForPlayerPath:playerPath handler:0];
}

- (void)nowPlayingClient:(id)client playerDidUnregister:(id)unregister
{
  unregisterCopy = unregister;
  playbackState = [unregisterCopy playbackState];
  canBeNowPlayingPlayer = [unregisterCopy canBeNowPlayingPlayer];
  playerPath = [unregisterCopy playerPath];
  [(MRDNowPlayingServer *)self postPlayerDidUnregisterWithPlaybackState:playbackState canBeNowPlaying:canBeNowPlayingPlayer forPlayerPath:playerPath handler:0];

  handoffSessions = [unregisterCopy handoffSessions];
  objectEnumerator = [handoffSessions objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = allObjects;
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

- (void)nowPlayingPlayerClient:(id)client clientCanBeNowPlayingDidChange:(BOOL)change
{
  changeCopy = change;
  playerPath = [client playerPath];
  if (changeCopy)
  {
    [(MRDNowPlayingServer *)self postClientDidRegisterCanBeNowPlayingForPlayerPath:playerPath handler:0];
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientDidUnregisterCanBeNowPlayingForPlayerPath:playerPath handler:0];
  }
}

- (void)nowPlayingOriginClient:(id)client applicationActivityDidBegin:(id)begin
{
  v5 = kMRApplicationActivityHasBegunNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  beginCopy = begin;
  beginCopy2 = begin;
  v7 = [NSDictionary dictionaryWithObjects:&beginCopy forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)nowPlayingOriginClient:(id)client applicationActivityDidEnd:(id)end
{
  v5 = kMRApplicationActivityHasEndedNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  endCopy = end;
  endCopy2 = end;
  v7 = [NSDictionary dictionaryWithObjects:&endCopy forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)nowPlayingOriginClient:(id)client applicationActivityStatusDidChange:(id)change
{
  v5 = kMRApplicationActivityStatusDidChangeNotification;
  v8 = kMRApplicationActivityUserInfoKey;
  changeCopy = change;
  changeCopy2 = change;
  v7 = [NSDictionary dictionaryWithObjects:&changeCopy forKeys:&v8 count:1];

  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v5 userInfo:v7];
}

- (void)handleNowPlayingOriginClient:(id)client deviceInfoDidChange:(id)change previousDeviceInfo:(id)info
{
  infoCopy = info;
  changeCopy = change;
  clientCopy = client;
  v11 = +[MRNowPlayingOriginClientManager sharedManager];
  playerPath = [clientCopy playerPath];
  v14 = [v11 existingOriginClientRequestsForPlayerPath:playerPath];

  [v14 setDeviceInfo:changeCopy];
  origin = [clientCopy origin];

  [(MRDNowPlayingServer *)self postDeviceInfoDidChange:changeCopy previousDeviceInfo:infoCopy forOrigin:origin handler:0];
}

- (void)nowPlayingOriginClient:(id)client clientDidRegister:(id)register
{
  playerPath = [register playerPath];
  [(MRDNowPlayingServer *)self postClientDidRegisterForPlayerPath:playerPath handler:0];
}

- (void)nowPlayingOriginClient:(id)client clientDidUnregister:(id)unregister
{
  unregisterCopy = unregister;
  clientCopy = client;
  origin = [(MRDNowPlayingOriginClient *)clientCopy origin];
  isHosted = [origin isHosted];
  localOriginClient = clientCopy;
  if (isHosted)
  {
    localOriginClient = self->_localOriginClient;
  }

  v10 = localOriginClient;

  playerPath = [unregisterCopy playerPath];
  client = [playerPath client];
  bundleIdentifier = [client bundleIdentifier];
  v14 = [(MRDNowPlayingOriginClient *)v10 defaultSupportedCommandsDataForClient:bundleIdentifier];

  playerPath2 = [unregisterCopy playerPath];
  canBeNowPlaying = [unregisterCopy canBeNowPlaying];

  [(MRDNowPlayingServer *)self postClientDidUnregisterForPlayerPath:playerPath2 hasDefaultSupportedCommands:v14 != 0 canBeNowPlaying:canBeNowPlaying handler:0];
}

- (void)nowPlayingOriginClient:(id)client currentRouteVolumeDidChange:(float)change
{
  playerPath = [client playerPath];
  *&v6 = change;
  [(MRDNowPlayingServer *)self postVolumeDidChange:playerPath volume:0 handler:v6];
}

- (void)nowPlayingOriginClient:(id)client activePlayerClientsDidChange:(id)change
{
  origin = [client origin];
  [(MRDNowPlayingServer *)self postActivePlayerPathsDidChangeForOrigin:origin handler:0];
}

- (void)nowPlayingOriginClientPlaybackDidTimeout:(id)timeout
{
  timeoutCopy = timeout;
  v5 = getpid();
  v6 = objc_alloc_init(NSMutableDictionary);
  playerPath = [timeoutCopy playerPath];

  MRAddPlayerPathToUserInfo();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100129298;
  v8[3] = &unk_1004BDE10;
  v9 = v5;
  [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemotePlaybackDidTimeoutNotification userInfo:v6 predicate:v8];
}

- (void)nowPlayingOriginClientDidChangeAudioFormatContentInfo:(id)info
{
  origin = [info origin];
  [(MRDNowPlayingServer *)self postAudioFormatContentInfoDidChangeForOrigin:origin handler:0];
}

- (void)nowPlayingServer:(id)server activeOriginDidChangeFromOriginClient:(id)client toOriginClient:(id)originClient
{
  originClientCopy = originClient;
  activePlayerPath = [originClientCopy activePlayerPath];
  activeNowPlayingClient = [originClientCopy activeNowPlayingClient];

  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  -[MRDNowPlayingServer postActiveOriginDidChange:withPlaybackState:handler:](self, "postActiveOriginDidChange:withPlaybackState:handler:", activePlayerPath, [activePlayerClient playbackState], 0);

  [(MRDNowPlayingServer *)self maybePostDistributedNotifications];
}

- (BOOL)nowPlayingLauncher:(id)launcher shouldRelaunch:(id)relaunch
{
  result = 0;
  if (MSVDeviceIsAudioAccessory())
  {
    v5 = +[MRUserSettings currentSettings];
    homepodDemoMode = [v5 homepodDemoMode];

    if ((homepodDemoMode & 1) == 0 && [(MRDNowPlayingServer *)self localActivePlayerIsPlaying])
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)lockScreenPlatterActive
{
  lockScreenController = [(MRDNowPlayingServer *)self lockScreenController];
  isLockScreenWidgetActive = [lockScreenController isLockScreenWidgetActive];

  return isLockScreenWidgetActive;
}

- (BOOL)lockScreenRecommendationActive
{
  lockScreenController = [(MRDNowPlayingServer *)self lockScreenController];
  isLockScreenRecommendationActive = [lockScreenController isLockScreenRecommendationActive];

  return isLockScreenRecommendationActive;
}

- (BOOL)hasElectedPlayer
{
  electedPlayerController = [(MRDNowPlayingServer *)self electedPlayerController];
  electedPlayerPath = [electedPlayerController electedPlayerPath];
  v4 = electedPlayerPath != 0;

  return v4;
}

- (BOOL)hasProactiveRecommendedPlayer
{
  proactiveRecommendedPlayerController = [(MRDNowPlayingServer *)self proactiveRecommendedPlayerController];
  proactiveRecommendedPlayerPath = [proactiveRecommendedPlayerController proactiveRecommendedPlayerPath];
  v4 = proactiveRecommendedPlayerPath != 0;

  return v4;
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100129610;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)postClientNowPlayingNotificationNamed:(id)named userInfo:(id)info predicate:(id)predicate
{
  infoCopy = info;
  predicateCopy = predicate;
  namedCopy = named;
  v10 = +[MRDMediaRemoteServer server];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001299F4;
  v13[3] = &unk_1004BDE78;
  v14 = infoCopy;
  v15 = predicateCopy;
  v11 = predicateCopy;
  v12 = infoCopy;
  [v10 postClientNotificationNamed:namedCopy userInfo:v12 predicate:v13];
}

- (void)postOriginDidRegister:(id)register handler:(id)handler
{
  handlerCopy = handler;
  registerCopy = register;
  v7 = [[MRPlayerPath alloc] initWithOrigin:registerCopy client:0 player:0];

  v8 = [[NSMutableDictionary alloc] initWithCapacity:1];
  MRAddPlayerPathToUserInfo();
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteOriginDidRegisterNotification userInfo:v8];
  }
}

- (void)postOriginDidUnRegister:(id)register deviceInfo:(id)info handler:(id)handler
{
  handlerCopy = handler;
  infoCopy = info;
  registerCopy = register;
  v10 = objc_alloc_init(MRPlayerPath);
  [v10 setOrigin:registerCopy];

  v11 = [[NSMutableDictionary alloc] initWithCapacity:2];
  MRAddPlayerPathToUserInfo();
  MRAddDeviceInfoToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteOriginDidUnregisterNotification userInfo:v11];
  }
}

- (void)postDeviceInfoDidChange:(id)change previousDeviceInfo:(id)info forOrigin:(id)origin handler:(id)handler
{
  handlerCopy = handler;
  originCopy = origin;
  infoCopy = info;
  changeCopy = change;
  v12 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];

  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  MRAddDeviceInfoToUserInfo();

  [v13 setObject:infoCopy forKeyedSubscript:kMRPreviousPairedDeviceUserInfoKey];
  v14 = _MRDeviceInfoDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    v15 = +[MRDMediaRemoteServer server];
    [v15 postClientNotificationNamed:v14 userInfo:v13 predicate:&stru_1004BDE98];
  }
}

- (void)postVolumeDidChange:(id)change volume:(float)volume handler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  *&v9 = volume;
  v10 = [NSNumber numberWithFloat:v9];
  [v8 setObject:v10 forKeyedSubscript:kMRMediaRemotePickedRouteVolumeUserInfoKey];

  v11 = _MRMediaRemotePickedRouteVolumeDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    v12 = +[MRDMediaRemoteServer server];
    [v12 postClientNotificationNamed:v11 userInfo:v8];
  }
}

- (void)postClientDidRegisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
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

- (void)postClientDidUnregisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postPlayerDidRegisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postPlayerDidUnregisterCanBeNowPlayingForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteNowPlayingPlayerDidUnregisterCanBeNowPlaying userInfo:v7];
  }
}

- (void)postClientDidRegisterForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingApplicationDidRegister userInfo:v7];
  }
}

- (void)postClientDidUnregisterForPlayerPath:(id)path hasDefaultSupportedCommands:(BOOL)commands canBeNowPlaying:(BOOL)playing handler:(id)handler
{
  commandsCopy = commands;
  pathCopy = path;
  handlerCopy = handler;
  if (playing || ([pathCopy origin], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isLocallyHosted"), v11, (v12 & 1) == 0))
  {
    [(MRDNowPlayingServer *)self postClientDidUnregisterCanBeNowPlayingForPlayerPath:pathCopy handler:handlerCopy];
  }

  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  if (commandsCopy)
  {
    [v13 setObject:&__kCFBooleanTrue forKeyedSubscript:_MRMediaRemoteApplicationHasDefaultSupportedCommandsUserInfoKey];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, _MRMediaRemoteNowPlayingApplicationDidUnregister, v13);
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingApplicationDidUnregister userInfo:v13];
  }
}

- (void)postNowPlayingClientStateDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteApplicationClientStateDidChange userInfo:v8];
  }
}

- (void)postActivePlayerPathsDidChangeForOrigin:(id)origin handler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  if ([originCopy isLocal])
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];
    MRAddPlayerPathToUserInfo();
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, kMRMediaRemoteActivePlayerPathsDidChange, v7);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteActivePlayerPathsDidChange userInfo:v7];
    }
  }
}

- (void)postAudioFormatContentInfoDidChangeForOrigin:(id)origin handler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  if ([originCopy isLocal])
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [[MRPlayerPath alloc] initWithOrigin:originCopy client:0 player:0];
    MRAddPlayerPathToUserInfo();
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, kMRMediaRemoteAudioFormatContentInfoDidChange, v7);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRMediaRemoteAudioFormatContentInfoDidChange userInfo:v7];
    }
  }
}

- (void)postNowPlayingPlayerStateDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemotePlayerStateDidChange userInfo:v8];
  }
}

- (void)postSupportedCommandsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  changeCopy = change;
  v11 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v12 = objc_alloc_init(NSMutableDictionary);
  [v12 setObject:changeCopy forKeyedSubscript:kMRSupportedCommandsDataUserInfoKey];

  v13 = _MRMediaRemotePlayerSupportedCommandsDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, _MRMediaRemotePlayerSupportedCommandsDidChangeNotification, v11);
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

- (void)postPlaybackQueueDidChange:(id)change nowPlayingItemDidChange:(BOOL)didChange forPlayerPath:(id)path handler:(id)handler
{
  didChangeCopy = didChange;
  selfCopy = self;
  changeCopy = change;
  pathCopy = path;
  handlerCopy = handler;
  v12 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  v13 = [[NSMutableDictionary alloc] initWithCapacity:1];
  v30 = pathCopy;
  MRAddPlayerPathToUserInfo();
  v14 = [changeCopy contentItemWithOffset:0];
  if (v14)
  {
    v15 = [MRPlaybackQueueRequest defaultPlaybackQueueRequestWithRange:0, 1];
    v16 = MRContentItemCreateFromRequest();
    v17 = [MRPlaybackQueue alloc];
    v34 = v16;
    v18 = [NSArray arrayWithObjects:&v34 count:1];
    v19 = changeCopy;
    v20 = didChangeCopy;
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

  v22 = changeCopy;
  v28 = [[MRPlaybackQueue alloc] initWithContentItems:&__NSArray0__struct location:0 withPropertiesFromPlaybackQueue:changeCopy];
  MRPlaybackQueueToUserInfo();

  v16 = 0;
  if (didChangeCopy)
  {
LABEL_3:
    selfCopy = [NSNumber numberWithBool:1, selfCopy];
    [v12 setObject:selfCopy forKeyedSubscript:_MRPlayerPlaybackQueueNowPlayingItemDidChangeUserInfoKey];
  }

LABEL_4:
  v25 = _MRNowPlayingPlaybackQueueChangedNotification;
  v26 = v22;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, _MRNowPlayingPlaybackQueueChangedNotification, v12);
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
    [(MRDNowPlayingServer *)selfCopy postClientNowPlayingNotificationNamed:v25 userInfo:v13 predicate:v31];
    [(MRDNowPlayingServer *)selfCopy postClientNowPlayingNotificationNamed:v25 userInfo:v12 predicate:&stru_1004BDEE0];
  }
}

- (void)postPlaybackQueueContentItemsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  changeCopy = change;
  pathCopy = path;
  handlerCopy = handler;
  v11 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = changeCopy;
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
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, _MRPlayerPlaybackQueueContentItemsChangedNotification, v11);
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10012B704;
    v19[3] = &unk_1004BDEC0;
    v20 = pathCopy;
    v21 = v12;
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v18 userInfo:v11 predicate:v19];
  }
}

- (void)postPlaybackQueueContentItemsArtworkDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  changeCopy = change;
  pathCopy = path;
  handlerCopy = handler;
  if (changeCopy && [changeCopy count])
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    MRAddPlayerPathToUserInfo();
    v12 = _MRPlayerPlaybackQueueContentItemArtworkChangedNotification;
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, _MRPlayerPlaybackQueueContentItemArtworkChangedNotification, v11);
    }

    else
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10012B9CC;
      v13[3] = &unk_1004BDEC0;
      v14 = pathCopy;
      v15 = changeCopy;
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:v12 userInfo:v11 predicate:v13];
    }
  }
}

- (void)postPlaybackQueueCapabilitiesDidChange:(unint64_t)change forPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v9 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v10 = [NSNumber numberWithUnsignedLong:change];
  [v9 setObject:v10 forKeyedSubscript:kMRPlaybackQueueCapabilitiesUserInfoKey];

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:kMRPlaybackQueueCapabilitiesChangedNotification userInfo:v9];
  }
}

- (void)postPlaybackQueueParticipantsDidChange:(id)change forPlayerPath:(id)path handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  client = [pathCopy client];
  isSystemMediaApplication = [client isSystemMediaApplication];

  if (isSystemMediaApplication)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    MRAddPlayerPathToUserInfo();
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, MRPlaybackQueueParticipantsDidChangeForPlayerNotification, v10);
    }

    else
    {
      [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:MRPlaybackQueueParticipantsDidChangeForPlayerNotification userInfo:v10];
    }
  }
}

- (void)postPlayerDidRegisterForPlayerPath:(id)path handler:(id)handler
{
  handlerCopy = handler;
  pathCopy = path;
  v7 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (handlerCopy)
  {
    handlerCopy[2]();
  }

  else
  {
    [(MRDNowPlayingServer *)self postClientNowPlayingNotificationNamed:_MRMediaRemoteNowPlayingPlayerDidRegister userInfo:v7];
  }
}

- (void)postElectedPlayerDidChange:(id)change change:(int64_t)a4 event:(int64_t)event reason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  changeCopy = change;
  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (reasonCopy)
  {
    [v13 setObject:reasonCopy forKeyedSubscript:kMRMediaRemoteElectedPlayerReasonUserInfoKey];
  }

  v14 = [NSNumber numberWithInteger:a4];
  [v13 setObject:v14 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  v15 = [NSNumber numberWithInteger:event];
  [v13 setObject:v15 forKeyedSubscript:@"MRDElectedPlayerControllerEventUserInfoKey"];

  v16 = kMRMediaRemoteElectedPlayerDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, kMRMediaRemoteElectedPlayerDidChangeNotification, v13);
  }

  else
  {
    v17 = +[MRDMediaRemoteServer server];
    [v17 postClientNotificationNamed:v16 userInfo:v13 predicate:&stru_1004BDF00];

    notify_post("com.apple.mediaremote.electedPlayerDidChange");
  }
}

- (void)postProactiveRecommendedPlayerDidChange:(id)change change:(int64_t)a4 event:(int64_t)event reason:(id)reason handler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  changeCopy = change;
  v13 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  if (reasonCopy)
  {
    [v13 setObject:reasonCopy forKeyedSubscript:MRMediaRemoteProactiveRecommendedPlayerReasonUserInfoKey];
  }

  v14 = [NSNumber numberWithInteger:a4];
  [v13 setObject:v14 forKeyedSubscript:kMRMediaRemoteActiveEndpointChangeTypeUserInfoKey];

  v15 = [NSNumber numberWithInteger:event];
  [v13 setObject:v15 forKeyedSubscript:@"MRDProactiveRecommendedPlayerControllerEventUserInfoKey"];

  v16 = MRMediaRemoteProactiveRecommendedPlayerDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, MRMediaRemoteProactiveRecommendedPlayerDidChangeNotification, v13);
  }

  else
  {
    v17 = +[MRDMediaRemoteServer server];
    [v17 postClientNotificationNamed:v16 userInfo:v13 predicate:&stru_1004BDF20];

    notify_post("com.apple.mediaremote.proactiveRecommendedPlayerDidChange");
  }
}

- (void)postLockScreenVisibleDidChange:(BOOL)change handler:(id)handler
{
  v4 = &kMRMediaRemoteLockScreenControlsDidAppearNotification;
  if (!change)
  {
    v4 = &kMRMediaRemoteLockScreenControlsDidDisappearNotification;
  }

  v5 = *v4;
  if (handler)
  {
    v7 = *(handler + 2);
    v9 = v5;
    v7(handler);
  }

  else
  {
    v8 = v5;
    v9 = +[MRDMediaRemoteServer server];
    [v9 postClientNotificationNamed:v8 predicate:&stru_1004BDF40];
  }
}

- (void)postLockScreenActiveDidChange:(BOOL)change handler:(id)handler
{
  v4 = &kMRMediaRemoteLockScreenControlsDidActivateNotification;
  if (!change)
  {
    v4 = &kMRMediaRemoteLockScreenControlsDidDeactivateNotification;
  }

  v5 = *v4;
  if (handler)
  {
    v7 = *(handler + 2);
    v9 = v5;
    v7(handler);
  }

  else
  {
    v8 = v5;
    v9 = +[MRDMediaRemoteServer server];
    [v9 postClientNotificationNamed:v8 predicate:&stru_1004BDF60];
  }
}

- (void)postLockScreenPlayerPathDidChange:(id)change handler:(id)handler
{
  handlerCopy = handler;
  changeCopy = change;
  v8 = objc_alloc_init(NSMutableDictionary);
  MRAddPlayerPathToUserInfo();

  v9 = kMRMediaRemoteLockScreenControlsPlayerPathDidChangeNotification;
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v9, v8);
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

- (id)augmentedUserInfoForPlayerPath:(id)path
{
  pathCopy = path;
  v5 = objc_alloc_init(NSMutableDictionary);
  activePlayerPath = [(MRDNowPlayingServer *)self activePlayerPath];
  if (activePlayerPath)
  {
    [v5 setObject:activePlayerPath forKey:kMRActiveNowPlayingPlayerPathUserInfoKey];
  }

  if (pathCopy)
  {
    v7 = [(MRDNowPlayingServer *)self queryExistingPlayerPath:pathCopy];
    originClient = [v7 originClient];
    activeNowPlayingClient = [originClient activeNowPlayingClient];
    activePlayerClient = [activeNowPlayingClient activePlayerClient];
    playerPath = [activePlayerClient playerPath];

    if (playerPath)
    {
      goto LABEL_7;
    }

    originClient2 = [v7 originClient];
    activeNowPlayingClient2 = [originClient2 activeNowPlayingClient];
    playerPath = [activeNowPlayingClient2 playerPath];

    if (playerPath || ([v7 originClient], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "playerPath"), playerPath = objc_claimAutoreleasedReturnValue(), v14, playerPath))
    {
LABEL_7:
      [v5 setValue:playerPath forKey:kMROriginActiveNowPlayingPlayerPathUserInfoKey];
    }
  }

  return v5;
}

- (void)registerOriginForwarder:(id)forwarder
{
  forwarderCopy = forwarder;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012CCDC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = forwarderCopy;
  v6 = forwarderCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)unregisterOriginForwarder:(id)forwarder
{
  forwarderCopy = forwarder;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10012CDDC;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = forwarderCopy;
  v6 = forwarderCopy;
  dispatch_sync(serialQueue, v7);
}

- (BOOL)_hasForwarderForOrigin:(id)origin
{
  originCopy = origin;
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

        destinationOrigin = [*(*(&v12 + 1) + 8 * i) destinationOrigin];
        v10 = [destinationOrigin isEqual:originCopy];

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

- (void)_addOrigin:(id)origin withDeviceInfo:(id)info emitNotification:(BOOL)notification
{
  originCopy = origin;
  infoCopy = info;
  v9 = +[MRNowPlayingOriginClientManager sharedManager];
  routingContextID = [infoCopy routingContextID];
  v11 = [v9 createCustomOriginClientForOrigin:originCopy routingContextID:routingContextID];

  v12 = +[MRNowPlayingOriginClientManager sharedManager];
  playerPath = [originCopy playerPath];
  v14 = [v12 originClientRequestsForPlayerPath:playerPath];

  [v14 setDeviceInfo:infoCopy];
  serialQueue = self->_serialQueue;
  v18 = originCopy;
  v16 = infoCopy;
  v17 = originCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_removeOrigin:(id)origin
{
  originCopy = origin;
  serialQueue = self->_serialQueue;
  selfCopy = self;
  v9 = originCopy;
  v6 = originCopy;
  msv_dispatch_sync_on_queue();
  v7 = [MRNowPlayingOriginClientManager sharedManager:_NSConcreteStackBlock];
  [v7 removeOrigin:v6];
}

- (void)_removeNowPlayingClient:(id)client forOrigin:(id)origin
{
  clientCopy = client;
  v7 = [(MRDNowPlayingServer *)self originClientForOrigin:origin];
  [v7 removeNowPlayingClientForClient:clientCopy];
}

- (void)setOverrideClient:(id)client
{
  clientCopy = client;
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  [localOriginClient setOverrideClient:clientCopy];
}

- (id)overrideClient
{
  localOriginClient = [(MRDNowPlayingServer *)self localOriginClient];
  overrideClient = [localOriginClient overrideClient];

  return overrideClient;
}

- (void)setActiveOrigin:(id)origin
{
  originCopy = origin;
  serialQueue = self->_serialQueue;
  v7 = originCopy;
  v6 = originCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_setActiveOrigin:(id)origin saveState:(BOOL)state
{
  stateCopy = state;
  originCopy = origin;
  dispatch_assert_queue_V2(self->_serialQueue);
  v7 = [(MRDNowPlayingServer *)self _onQueue_originClientForOrigin:originCopy];
  v8 = self->_activeOriginClient;
  if (v7 != v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      origin = [(MRDNowPlayingOriginClient *)v8 origin];
      origin2 = [(MRDNowPlayingOriginClient *)v7 origin];
      v12 = 138412546;
      v13 = origin;
      v14 = 2112;
      v15 = origin2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting active origin from %@ to %@", &v12, 0x16u);
    }

    [(MRDNowPlayingServer *)self setActiveOriginClient:v7];
    [(MRDNowPlayingServer *)self nowPlayingServer:self activeOriginDidChangeFromOriginClient:self->_activeOriginClient toOriginClient:v7];
  }

  if (stateCopy)
  {
    [(MRDNowPlayingServer *)self _onQueue_savePersistentActiveOrigin:originCopy];
  }
}

- (void)_onQueue_savePersistentActiveOrigin:(id)origin
{
  originCopy = origin;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = originCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Persisting active origin %@", &v9, 0xCu);
  }

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = v6;
  if (originCopy)
  {
    data = [originCopy data];
    [v7 setObject:data forKey:@"_MRDActiveOriginDataDefaultsKey"];
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

- (id)_onQueue_originClientForOrigin:(id)origin
{
  originCopy = origin;
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
        origin = [v11 origin];
        v13 = [origin isEqual:originCopy];

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

- (id)_onQueue_originClientForDeviceUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (dCopy)
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
          deviceInfo = [v11 deviceInfo];
          deviceUID = [deviceInfo deviceUID];
          v14 = [deviceUID isEqualToString:dCopy];

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

- (id)_onQueue_originClientForGroupLeaderOfDeviceUID:(id)d
{
  dCopy = d;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (!dCopy)
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
    v18 = [(MRDNowPlayingServer *)self _onQueue_originClientForDeviceUID:dCopy];
    goto LABEL_23;
  }

  selfCopy = self;
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
      deviceInfo = [v8 deviceInfo];
      groupedDevices = [deviceInfo groupedDevices];

      v11 = [groupedDevices countByEnumeratingWithState:&v24 objects:v32 count:16];
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
              objc_enumerationMutation(groupedDevices);
            }

            deviceUID = [*(*(&v24 + 1) + 8 * j) deviceUID];
            v16 = [deviceUID isEqualToString:dCopy];

            if (v16)
            {
              v17 = v8;

              v6 = v17;
            }
          }

          v12 = [groupedDevices countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v12);
      }
    }

    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  }

  while (v23);

  self = selfCopy;
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_24:

  return v6;
}

@end