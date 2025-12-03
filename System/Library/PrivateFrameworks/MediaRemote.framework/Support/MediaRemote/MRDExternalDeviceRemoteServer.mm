@interface MRDExternalDeviceRemoteServer
- (BOOL)_connection:(id)_connection canReceiveUpdatesForOrigin:(id)origin;
- (BOOL)_connection:(id)_connection canReceiveUpdatesForPlayerPath:(id)path;
- (BOOL)_connection:(id)_connection wasPreviouslySubscribedToPlayerPath:(id)path;
- (BOOL)_isConnectionForManagedConfigIDAllowed:(id)allowed;
- (BOOL)_origin:(id)_origin client:(id)client matchesSubscribedPlayerPath:(id)path;
- (BOOL)_origin:(id)_origin client:(id)client player:(id)player matchesSubscribedPlayerPath:(id)path;
- (BOOL)_origin:(id)_origin matchesSubscribedPlayerPath:(id)path;
- (BOOL)_playerPath:(id)path matchesSubscribedPlayerPath:(id)playerPath;
- (BOOL)_shouldSendStateUpdateMessageFromSource:(int64_t)source toClient:(id)client;
- (BOOL)_verifyClientVersionCompatibility:(id)compatibility withError:(id *)error;
- (MRDExternalDeviceRemoteServer)initWithRoutingDataSource:(id)source;
- (NSArray)clients;
- (NSArray)endpoints;
- (id)_clientForIdentifier:(id)identifier;
- (id)_clientForPairingSession:(id)session;
- (id)_createLocalizedOutputDevices:(id)devices redactVolume:(BOOL)volume forClient:(id)client endpoint:(id)endpoint;
- (id)_findClientIf:(id)if;
- (id)_unpair:(id)_unpair;
- (unsigned)serverDiscoveryModeForConfiguration:(id)configuration;
- (void)_activeSystemEndpointDidChangeNotification:(id)notification;
- (void)_addNowPlayingStateToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint;
- (void)_addOutputDevicesToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint;
- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client nowPlayingClient:(id)playingClient;
- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client originClient:(id)originClient;
- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client playerClient:(id)playerClient;
- (void)_addToMessage:(id)message withAllClusterDeviceMembers:(id)members block:(id)block;
- (void)_addVolumeToMessage:(id)message forClient:(id)client outputDevice:(id)device withEndpoint:(id)endpoint;
- (void)_addVolumeToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint;
- (void)_addVolumeToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint completion:(id)completion;
- (void)_broadcastKeyboardMessageWithState:(unint64_t)state text:(id)text attributes:(id)attributes;
- (void)_broadcastRemoteTextInputMessageWithPayload:(id)payload;
- (void)_clearPlaybackQueueForPlayerPath:(id)path;
- (void)_disconnectClient:(id)client withError:(id)error;
- (void)_handleAdjustVolumeMessage:(id)message fromClient:(id)client;
- (void)_handleApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleClientConnection:(id)connection;
- (void)_handleClientUpdatesConfigMessage:(id)message fromClient:(id)client;
- (void)_handleCreateApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleCreateHostedEndpointRequestMessage:(id)message fromClient:(id)client;
- (void)_handleDeletePairedDeviceMessage:(id)message fromClient:(id)client;
- (void)_handleDeletePairingIdentityMessage:(id)message fromClient:(id)client;
- (void)_handleDeviceInfoRequest:(id)request fromClient:(id)client;
- (void)_handleDeviceInfoUpdateMessage:(id)message fromClient:(id)client;
- (void)_handleGenericMessage:(id)message fromClient:(id)client;
- (void)_handleGetInputModeMessage:(id)message fromClient:(id)client;
- (void)_handleGetPairedDevicesMessage:(id)message fromClient:(id)client;
- (void)_handleGetVolumeControlCapabilitiesMessage:(id)message fromClient:(id)client;
- (void)_handleGetVolumeMessage:(id)message fromClient:(id)client;
- (void)_handleGetVolumeMutedMessage:(id)message fromClient:(id)client;
- (void)_handleInvalidateApplicationConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleLyricsEventMessage:(id)message fromClient:(id)client;
- (void)_handleModifyOutputContextRequestMessage:(id)message fromClient:(id)client;
- (void)_handleMuteVolumeMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackQueueRequestMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionMigrateBeginMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionMigrateEndMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionMigratePostMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionMigrateRequestMessage:(id)message fromClient:(id)client;
- (void)_handlePlaybackSessionRequestMessage:(id)message fromClient:(id)client;
- (void)_handleReceivedCommand:(id)command fromClient:(id)client;
- (void)_handleReceivedVoiceInputMessage:(id)message fromClient:(id)client;
- (void)_handleRegisterGameControllerMessage:(id)message client:(id)client;
- (void)_handleRegisterHIDDeviceMessage:(id)message fromClient:(id)client;
- (void)_handleRegisterVoiceInputDeviceMessage:(id)message fromClient:(id)client;
- (void)_handleRequestGroupSessionMessage:(id)message fromClient:(id)client;
- (void)_handleRequestMicrophoneConnectionMessage:(id)message fromClient:(id)client;
- (void)_handleSendTelevisionCustomDataMessage:(id)message fromClient:(id)client;
- (void)_handleSetConnectionStateMessage:(id)message fromClient:(id)client;
- (void)_handleSetConversationDetectionEnabledMessage:(id)message fromClient:(id)client;
- (void)_handleSetDiscoveryModeMessage:(id)message fromClient:(id)client;
- (void)_handleSetInputModeMessage:(id)message fromClient:(id)client;
- (void)_handleSetListeningModeMessage:(id)message fromClient:(id)client;
- (void)_handleSetMessageLogging:(id)logging fromClient:(id)client;
- (void)_handleSetVolumeMessage:(id)message fromClient:(id)client;
- (void)_handleTelevisionEndpointAvailableMessage:(id)message fromClient:(id)client;
- (void)_handleTouchEvent:(_MRHIDTouchEvent *)event withDeviceID:(unint64_t)d fromClient:(id)client;
- (void)_handleTriggerAudioFadeMessage:(id)message fromClient:(id)client;
- (void)_notifyAndDisconnectClient:(id)client withError:(id)error;
- (void)_notifyAndDisconnectClients:(id)clients withError:(id)error completion:(id)completion;
- (void)_onQueue_registerDisconnectionHandler:(id)handler forClient:(id)client;
- (void)_prewarmMediaApps;
- (void)_promoteClient:(id)client;
- (void)_registerCallbacks;
- (void)_sendMessageFromEndpoint:(id)endpoint outputDevice:(id)device withSource:(int64_t)source handler:(id)handler;
- (void)_sendMessageFromEndpoint:(id)endpoint withSource:(int64_t)source handler:(id)handler;
- (void)_sendStateUpdateMessageFromOrigin:(id)origin source:(int64_t)source handler:(id)handler;
- (void)_sendStateUpdateMessageFromPlayerPath:(id)path source:(int64_t)source handler:(id)handler;
- (void)_syncStateToClient:(id)client;
- (void)addAuthorizationCallbackForOutputDeviceUID:(id)d client:(id)client;
- (void)clearEndpointForClient:(id)client;
- (void)clientConnection:(id)connection didReceiveMessage:(id)message;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dealloc;
- (void)deviceInfoDidChangeNotification:(id)notification;
- (void)endpointDidAddOutputDeviceNotification:(id)notification;
- (void)endpointDidChangeOutputDeviceNotification:(id)notification;
- (void)endpointDidRemoveOutputDeviceNotification:(id)notification;
- (void)endpointVolumeControlCapabilitiesDidChangeNotification:(id)notification;
- (void)endpointVolumeDidChangeNotification:(id)notification;
- (void)endpointVolumeMutedDidChangeNotification:(id)notification;
- (void)externalDeviceClient:(id)client gameController:(unint64_t)controller propertiesChanged:(id)changed;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)outputDevicesChanged:(id)changed forConfiguration:(id)configuration;
- (void)pairingSession:(id)session didCompleteExchangeWithError:(id)error;
- (void)pairingSession:(id)session didPrepareExchangeData:(id)data;
- (void)pairingSession:(id)session showSetupCode:(id)code;
- (void)pinPairingDialogDidClose:(id)close forClient:(id)client userCancelled:(BOOL)cancelled;
- (void)playbackDidTimeoutNotification:(id)notification;
- (void)playerParticipantsDidChangeNotification:(id)notification;
- (void)purgeUnusedDiscoverySessions;
- (void)registerNotifications;
- (void)requestRouteAuthorizationStatusForDeviceUID:(id)d client:(id)client;
- (void)sleepObserverSystemWillSleep:(id)sleep completion:(id)completion;
- (void)stateObserver:(id)observer didReceiveClientDidUnregister:(id)unregister;
- (void)stateObserver:(id)observer didReceiveCoalescedNowPlayingStateChange:(id)change playerPath:(id)path;
- (void)stateObserver:(id)observer didReceiveDefaultSupportedCommandsChange:(id)change playerPath:(id)path;
- (void)stateObserver:(id)observer didReceiveNowPlayingClientChange:(id)change;
- (void)stateObserver:(id)observer didReceiveNowPlayingPlayerChange:(id)change;
- (void)stateObserver:(id)observer didReceivePlayerDidUnregister:(id)unregister;
- (void)updateASEAssertionForRemoteDeviceID:(id)d isAsserting:(BOOL)asserting;
@end

@implementation MRDExternalDeviceRemoteServer

- (NSArray)clients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003511C;
  v10 = sub_100035A44;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001EF6C;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (MRDExternalDeviceRemoteServer)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v34.receiver = self;
  v34.super_class = MRDExternalDeviceRemoteServer;
  v6 = [(MRDExternalDeviceRemoteServer *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingDataSource, source);
    v8 = [[MRDRemoteControlService alloc] initWithRoutingDataSource:sourceCopy];
    remoteControlService = v7->_remoteControlService;
    v7->_remoteControlService = v8;

    [(MRDRemoteControlService *)v7->_remoteControlService setDelegate:v7];
    v10 = objc_alloc_init(NSMutableArray);
    connectedClients = v7->_connectedClients;
    v7->_connectedClients = v10;

    v12 = objc_alloc_init(NSMutableSet);
    tvEndpoints = v7->_tvEndpoints;
    v7->_tvEndpoints = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDeviceRemoteServer.SerialQueue", v14);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v15;

    v7->_serverIsRunning = 0;
    v17 = objc_alloc_init(MRDNowPlayingStateObserver);
    stateObserver = v7->_stateObserver;
    v7->_stateObserver = v17;

    [(MRDNowPlayingStateObserver *)v7->_stateObserver setDelegate:v7];
    v7->_gameControllerInputMode = 0;
    v19 = objc_alloc_init(MRDPinPairingDialog);
    pinPairingDialog = v7->_pinPairingDialog;
    v7->_pinPairingDialog = v19;

    [(MRDPinPairingDialog *)v7->_pinPairingDialog setDelegate:v7];
    v21 = objc_alloc_init(MRDSleepObserver);
    sleepObserver = v7->_sleepObserver;
    v7->_sleepObserver = v21;

    [(MRDSleepObserver *)v7->_sleepObserver setDelegate:v7];
    v23 = objc_alloc_init(NSMutableDictionary);
    outputDeviceCallbackTokens = v7->_outputDeviceCallbackTokens;
    v7->_outputDeviceCallbackTokens = v23;

    v25 = objc_alloc_init(NSMutableDictionary);
    discoverySessions = v7->_discoverySessions;
    v7->_discoverySessions = v25;

    v27 = [[NSMapTable alloc] initWithKeyOptions:512 valueOptions:0 capacity:0];
    clientDisconnectionHandlers = v7->_clientDisconnectionHandlers;
    v7->_clientDisconnectionHandlers = v27;

    [(MRDExternalDeviceRemoteServer *)v7 registerNotifications];
    v29 = +[MRUserSettings currentSettings];
    [v29 transactionWaitDurationOnNetworkSend];
    v7->_transactionWaitDuration = v30;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100106AA8;
    block[3] = &unk_1004B6D08;
    v33 = v7;
    dispatch_async(&_dispatch_main_q, block);
  }

  return v7;
}

- (void)registerNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_activeSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
  [v3 addObserver:self selector:"endpointDidAddOutputDeviceNotification:" name:MRAVEndpointDidAddOutputDeviceNotification object:0];
  [v3 addObserver:self selector:"endpointDidChangeOutputDeviceNotification:" name:MRAVEndpointDidChangeOutputDeviceNotification object:0];
  [v3 addObserver:self selector:"endpointDidRemoveOutputDeviceNotification:" name:MRAVEndpointDidRemoveOutputDeviceNotification object:0];
  [v3 addObserver:self selector:"endpointVolumeControlCapabilitiesDidChangeNotification:" name:kMRAVEndpointVolumeControlCapabilitiesDidChangeNotification object:0];
  [v3 addObserver:self selector:"endpointVolumeDidChangeNotification:" name:kMRAVEndpointVolumeDidChangeNotification object:0];
  [v3 addObserver:self selector:"endpointVolumeMutedDidChangeNotification:" name:MRAVEndpointVolumeMutedDidChangeNotification object:0];
  [v3 addObserver:self selector:"deviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
  [v3 addObserver:self selector:"playerParticipantsDidChangeNotification:" name:MRPlaybackQueueParticipantsDidChangeForPlayerNotification object:0];
  [v3 addObserver:self selector:"playbackDidTimeoutNotification:" name:_MRMediaRemotePlaybackDidTimeoutNotification object:0];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MRDExternalDeviceRemoteServer *)self stop];
  [(MRDNowPlayingStateObserver *)self->_stateObserver setDelegate:0];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_connectedClients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        cryptoSession = [*(*(&v11 + 1) + 8 * v8) cryptoSession];
        [cryptoSession setDelegate:0];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10.receiver = self;
  v10.super_class = MRDExternalDeviceRemoteServer;
  [(MRDExternalDeviceRemoteServer *)&v10 dealloc];
}

- (void)clearEndpointForClient:(id)client
{
  clientCopy = client;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = clientCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Removing television endpoint for client %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100106F48;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = clientCopy;
  v7 = clientCopy;
  dispatch_sync(serialQueue, v8);
}

- (NSArray)endpoints
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003511C;
  v10 = sub_100035A44;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100107044;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)clientConnection:(id)connection didReceiveMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  type = [messageCopy type];
  v9 = connectionCopy;
  if ([messageCopy type] == 15 || objc_msgSend(messageCopy, "type") == 37)
  {
    v10 = messageCopy;
    deviceInfo = [v10 deviceInfo];

    if (deviceInfo)
    {
      deviceInfo2 = [v10 deviceInfo];
      [v9 setDeviceInfo:deviceInfo2];

      supportedProtocolMessages = [v10 supportedProtocolMessages];
      [v9 setSupportedMessages:supportedProtocolMessages];
    }
  }

  v31 = 0;
  v14 = [(MRDExternalDeviceRemoteServer *)self _verifyClientVersionCompatibility:v9 withError:&v31];
  Error = v31;
  if ((v14 & 1) == 0)
  {
    v19 = _MRLogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9098();
    }

    goto LABEL_16;
  }

  if ([messageCopy encryptionType] == 1)
  {
    if ([v9 cryptoEnabled])
    {
      if ([messageCopy encryptionType] != 1 || (objc_msgSend(v9, "cryptoSession"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isValid"), v16, (v17 & 1) == 0))
      {
        v18 = _MRLogForCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1003A90D4();
        }

        v19 = Error;
        Error = MRMediaRemoteCreateError();
LABEL_16:
      }
    }
  }

  if (([v9 isAllowedToSendMessageType:type] & 1) == 0)
  {
    v20 = _MRLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9110();
    }

    v21 = MRMediaRemoteCreateError();
    Error = v21;
  }

  if (Error)
  {
    v22 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:Error];
    [messageCopy replyWithMessage:v22];
LABEL_23:
  }

  else if (type > 100)
  {
    if (type <= 127)
    {
      if (type > 120)
      {
        switch(type)
        {
          case 'y':
            [(MRDExternalDeviceRemoteServer *)self _handleCreateHostedEndpointRequestMessage:messageCopy fromClient:v9];
            break;
          case '}':
            [(MRDExternalDeviceRemoteServer *)self _handleAdjustVolumeMessage:messageCopy fromClient:v9];
            break;
          case '~':
            [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeMutedMessage:messageCopy fromClient:v9];
            break;
        }
      }

      else
      {
        switch(type)
        {
          case 'e':
            [(MRDExternalDeviceRemoteServer *)self _handleSetDiscoveryModeMessage:messageCopy fromClient:v9];
            break;
          case 'j':
            [(MRDExternalDeviceRemoteServer *)self _handleTriggerAudioFadeMessage:messageCopy fromClient:v9];
            break;
          case 'n':
            [(MRDExternalDeviceRemoteServer *)self _handleSetListeningModeMessage:messageCopy fromClient:v9];
            break;
        }
      }
    }

    else if (type <= 133)
    {
      switch(type)
      {
        case 128:
          [(MRDExternalDeviceRemoteServer *)self _handleMuteVolumeMessage:messageCopy fromClient:v9];
          break;
        case 130:
          [(MRDExternalDeviceRemoteServer *)self _handleSetConversationDetectionEnabledMessage:messageCopy fromClient:v9];
          break;
        case 132:
          [(MRDExternalDeviceRemoteServer *)self _handleRequestGroupSessionMessage:messageCopy fromClient:v9];
          break;
      }
    }

    else if (type > 135)
    {
      if (type == 136)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleInvalidateApplicationConnectionMessage:messageCopy fromClient:v9];
      }

      else if (type == 137)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleRequestMicrophoneConnectionMessage:messageCopy fromClient:v9];
      }
    }

    else if (type == 134)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleCreateApplicationConnectionMessage:messageCopy fromClient:v9];
    }

    else
    {
      [(MRDExternalDeviceRemoteServer *)self _handleApplicationConnectionMessage:messageCopy fromClient:v9];
    }
  }

  else
  {
    switch(type)
    {
      case 0:
      case 40:
        v22 = _MRLogForCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_1003A9180();
        }

        goto LABEL_23;
      case 1:
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedCommand:messageCopy fromClient:v9];
        break;
      case 6:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterHIDDeviceMessage:messageCopy fromClient:v9];
        break;
      case 8:
      case 39:
        buttonEvent = [messageCopy buttonEvent];
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedButtonEvent:buttonEvent fromClient:v26, v9];
        break;
      case 10:
      case 43:
        v23 = messageCopy;
        v24 = v23;
        if (v23)
        {
          [v23 event];
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        -[MRDExternalDeviceRemoteServer _handleTouchEvent:withDeviceID:fromClient:](self, "_handleTouchEvent:withDeviceID:fromClient:", &v29, [v24 virtualDeviceID], v9);
        goto LABEL_94;
      case 15:
        [(MRDExternalDeviceRemoteServer *)self _handleDeviceInfoRequest:messageCopy fromClient:v9];
        break;
      case 16:
        [(MRDExternalDeviceRemoteServer *)self _handleClientUpdatesConfigMessage:messageCopy fromClient:v9];
        break;
      case 18:
        v27 = messageCopy;
        v24 = [v9 gameControllerWithID:{objc_msgSend(v27, "controllerID")}];
        event = [v27 event];

        [v24 sendGameControllerEvent:event];
        goto LABEL_94;
      case 19:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterGameControllerMessage:messageCopy client:v9];
        break;
      case 21:
        [v9 removeGameController:{objc_msgSend(messageCopy, "controllerID")}];
        break;
      case 24:
        [(MRDExternalDeviceRemoteServer *)self _handleGetKeyboardSessionMessage:messageCopy fromClient:v9];
        break;
      case 25:
        [(MRDExternalDeviceRemoteServer *)self _handleTextInputMessage:messageCopy fromClient:v9];
        break;
      case 28:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterVoiceInputDeviceMessage:messageCopy fromClient:v9];
        break;
      case 31:
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedVoiceInputMessage:messageCopy fromClient:v9];
        break;
      case 32:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackQueueRequestMessage:messageCopy fromClient:v9];
        break;
      case 36:
        v24 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:2];
        [(MRDExternalDeviceRemoteServer *)self clientConnection:v9 didReceiveMessage:v24];
LABEL_94:

        break;
      case 37:
        [(MRDExternalDeviceRemoteServer *)self _handleDeviceInfoUpdateMessage:messageCopy fromClient:v9];
        break;
      case 38:
        [(MRDExternalDeviceRemoteServer *)self _handleSetConnectionStateMessage:messageCopy fromClient:v9];
        break;
      case 41:
        sub_1001A02A4(1);
        break;
      case 42:
        [(MRDExternalDeviceRemoteServer *)self _handleGenericMessage:messageCopy fromClient:v9];
        break;
      case 44:
        [(MRDExternalDeviceRemoteServer *)self _handleLyricsEventMessage:messageCopy fromClient:v9];
        break;
      case 48:
        [(MRDExternalDeviceRemoteServer *)self _handleModifyOutputContextRequestMessage:messageCopy fromClient:v9];
        break;
      case 49:
        [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeMessage:messageCopy fromClient:v9];
        break;
      case 51:
        [(MRDExternalDeviceRemoteServer *)self _handleSetVolumeMessage:messageCopy fromClient:v9];
        break;
      case 62:
        [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeControlCapabilitiesMessage:messageCopy fromClient:v9];
        break;
      case 67:
        [(MRDExternalDeviceRemoteServer *)self _handleRemoteTextInputMessage:messageCopy fromClient:v9];
        break;
      case 68:
        [(MRDExternalDeviceRemoteServer *)self _handleGetRemoteTextInputSessionMessage:messageCopy fromClient:v9];
        break;
      case 69:
        notify_post([@"kAirPlayWHANotification_BreakAwayFromCurrentGroup" UTF8String]);
        break;
      case 70:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionRequestMessage:messageCopy fromClient:v9];
        break;
      case 73:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateRequestMessage:messageCopy fromClient:v9];
        break;
      case 75:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateBeginMessage:messageCopy fromClient:v9];
        break;
      case 76:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateEndMessage:messageCopy fromClient:v9];
        break;
      case 77:
        [(MRDExternalDeviceRemoteServer *)self _handleUpdateActiveSystemEndpointMessage:messageCopy fromClient:v9];
        break;
      case 78:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigratePostMessage:messageCopy fromClient:v9];
        break;
      default:
        break;
    }
  }
}

- (void)stateObserver:(id)observer didReceiveClientDidUnregister:(id)unregister
{
  unregisterCopy = unregister;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A91F0();
  }

  v7 = [MRRemoveClientMessage alloc];
  client = [unregisterCopy client];
  v9 = [v7 initWithClient:client];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100107918;
  v11[3] = &unk_1004BCAE8;
  v12 = v9;
  v10 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:unregisterCopy source:1 handler:v11];
}

- (void)stateObserver:(id)observer didReceivePlayerDidUnregister:(id)unregister
{
  unregisterCopy = unregister;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9258();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107A10;
  v8[3] = &unk_1004BCAE8;
  v9 = [[MRRemovePlayerMessage alloc] initWithPlayerPath:unregisterCopy];
  v7 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:unregisterCopy source:1 handler:v8];
}

- (void)stateObserver:(id)observer didReceiveNowPlayingClientChange:(id)change
{
  changeCopy = change;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A92C0();
  }

  v7 = objc_alloc_init(MRProtocolMessageOptions);
  [v7 setPriority:4];
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];

  v10 = [MRSetNowPlayingClientMessage alloc];
  client = [changeCopy client];
  v12 = [v10 initWithClient:client];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100107BAC;
  v17[3] = &unk_1004BCB10;
  v18 = v7;
  v19 = v12;
  selfCopy = self;
  v21 = changeCopy;
  v22 = nowPlayingServer;
  v13 = nowPlayingServer;
  v14 = changeCopy;
  v15 = v12;
  v16 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v14 source:1 handler:v17];
}

- (void)stateObserver:(id)observer didReceiveNowPlayingPlayerChange:(id)change
{
  changeCopy = change;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9328();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107DCC;
  v8[3] = &unk_1004BCAE8;
  v9 = [[MRSetNowPlayingPlayerMessage alloc] initWithPlayerPath:changeCopy];
  v7 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:changeCopy source:1 handler:v8];
}

- (void)stateObserver:(id)observer didReceiveDefaultSupportedCommandsChange:(id)change playerPath:(id)path
{
  changeCopy = change;
  pathCopy = path;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9420();
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100108064;
  v16[3] = &unk_1004BCB38;
  v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
  v18 = changeCopy;
  v19 = pathCopy;
  v10 = pathCopy;
  v11 = changeCopy;
  v12 = v17;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010812C;
  v14[3] = &unk_1004BCB60;
  v15 = objc_retainBlock(v16);
  v13 = v15;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v10 source:1 handler:v14];
}

- (void)stateObserver:(id)observer didReceiveCoalescedNowPlayingStateChange:(id)change playerPath:(id)path
{
  changeCopy = change;
  pathCopy = path;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9488();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001082CC;
  v12[3] = &unk_1004BCB88;
  v13 = changeCopy;
  v14 = pathCopy;
  v10 = pathCopy;
  v11 = changeCopy;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v10 source:1 handler:v12];
}

- (void)pairingSession:(id)session didPrepareExchangeData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v8 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:sessionCopy];
  v9 = _MRLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [dataCopy length];
      deviceInfo = [v8 deviceInfo];
      name = [deviceInfo name];
      v14 = 134218242;
      v15 = v11;
      v16 = 2114;
      v17 = name;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Exchanging %llu bytes of crypto pairing data with client %{public}@", &v14, 0x16u);
    }

    v9 = [[MRCryptoPairingMessage alloc] initWithPairingData:dataCopy status:0];
    [v8 sendMessage:v9];
  }

  else if (v10)
  {
    v14 = 138543362;
    v15 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] ERROR: Unable to exchange pairing data. Unknown client for crypto pairing session: %{public}@", &v14, 0xCu);
  }
}

- (void)pairingSession:(id)session showSetupCode:(id)code
{
  codeCopy = code;
  v7 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:session];
  v8 = +[MROrigin localOrigin];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010884C;
  v11[3] = &unk_1004BCBB0;
  v12 = codeCopy;
  selfCopy = self;
  v14 = v7;
  v9 = v7;
  v10 = codeCopy;
  [MRDeviceInfoRequest deviceInfoForOrigin:v8 queue:&_dispatch_main_q completion:v11];
}

- (void)pairingSession:(id)session didCompleteExchangeWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v8 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:sessionCopy];
  deviceInfo = [v8 deviceInfo];
  name = [deviceInfo name];

  if (!errorCopy)
  {
    v13 = _MRLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v19[0] = name;
    v14 = "[ExternalDeviceServer] Successfully opened security session with peer %{public}@";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0xCu);
    goto LABEL_11;
  }

  if (!v8)
  {
    v13 = _MRLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v19[0] = sessionCopy;
    v14 = "[ExternalDeviceServer] ERROR: Unable to send pairing failure message. Unknown client for crypto pairing session: %{public}@";
    goto LABEL_10;
  }

  code = [errorCopy code];
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v19[0]) = code;
    WORD2(v19[0]) = 2114;
    *(v19 + 6) = name;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Returning OSStatus code %d back to %{public}@", buf, 0x12u);
  }

  v13 = [[MRCryptoPairingMessage alloc] initWithPairingData:0 status:code];
  [v8 sendMessage:v13];
LABEL_11:

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100108CE8;
  v16[3] = &unk_1004B68F0;
  v16[4] = self;
  v17 = v8;
  v15 = v8;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)pinPairingDialogDidClose:(id)close forClient:(id)client userCancelled:(BOOL)cancelled
{
  clientCopy = client;
  cryptoSession = [clientCopy cryptoSession];
  isValid = [cryptoSession isValid];

  if ((isValid & 1) == 0)
  {
    Error = MRMediaRemoteCreateError();
    [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClient:clientCopy withError:Error];
  }
}

- (void)externalDeviceClient:(id)client gameController:(unint64_t)controller propertiesChanged:(id)changed
{
  changedCopy = changed;
  clientCopy = client;
  v9 = [[MRGameControllerPropertiesMessage alloc] initWithGameControllerProperties:changedCopy controllerID:controller];

  [clientCopy sendMessage:v9];
}

- (id)_createLocalizedOutputDevices:(id)devices redactVolume:(BOOL)volume forClient:(id)client endpoint:(id)endpoint
{
  clientCopy = client;
  endpointCopy = endpoint;
  mr_allOutputDevices = [devices mr_allOutputDevices];
  mr_redactClusterMembers = [mr_allOutputDevices mr_redactClusterMembers];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100109140;
  v25[3] = &unk_1004B8A40;
  v13 = clientCopy;
  v26 = v13;
  v14 = [mr_redactClusterMembers msv_filter:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001091D4;
  v22[3] = &unk_1004B9AD0;
  v23 = v13;
  v24 = endpointCopy;
  v15 = endpointCopy;
  v16 = v13;
  v17 = [v14 msv_map:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100109248;
  v20[3] = &unk_1004BCBD0;
  volumeCopy = volume;
  v18 = [v17 msv_map:v20];

  return v18;
}

- (void)endpointDidAddOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100109434;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = object;
  v8 = object;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointDidChangeOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010969C;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = object;
  v8 = object;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointDidRemoveOutputDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001098D0;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = object;
  v8 = object;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointVolumeControlCapabilitiesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointVolumeControlCapabilitiesUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  if (v9)
  {
    intValue = [v7 intValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100109AB0;
    v11[3] = &unk_1004BCC20;
    v11[4] = self;
    v12 = v9;
    v13 = object;
    v14 = intValue;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v13 outputDevice:v12 withSource:2 handler:v11];
  }
}

- (void)endpointVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointVolumeUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  if (v9)
  {
    [v7 floatValue];
    v11 = v10;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100109CC0;
    v12[3] = &unk_1004BCC20;
    v12[4] = self;
    v13 = v9;
    v14 = object;
    v15 = v11;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v14 outputDevice:v13 withSource:2 handler:v12];
  }
}

- (void)endpointVolumeMutedDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:MRAVEndpointVolumeMutedUserInfoKey];

  userInfo2 = [notificationCopy userInfo];

  v9 = [userInfo2 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  if (v9)
  {
    bOOLValue = [v7 BOOLValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100109EC8;
    v11[3] = &unk_1004BCC48;
    v11[4] = self;
    v12 = v9;
    v13 = object;
    v14 = bOOLValue;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v13 outputDevice:v12 withSource:2 handler:v11];
  }
}

- (void)deviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  userInfo2 = [notificationCopy userInfo];
  v8 = MRGetDeviceInfoFromUserInfo();

  if (v8)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = sub_10003511C;
    v13[4] = sub_100035A44;
    v14 = 0;
    origin = [v6 origin];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010A0D4;
    v10[3] = &unk_1004BCC70;
    v12 = v13;
    v11 = v8;
    [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:origin source:0 handler:v10];

    _Block_object_dispose(v13, 8);
  }
}

- (void)playerParticipantsDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  if (v5 && [v5 isResolved])
  {
    v6 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v6 nowPlayingServer];
    v8 = [nowPlayingServer queryExistingPlayerPath:v5];

    playerClient = [v8 playerClient];
    v10 = playerClient;
    if (playerClient)
    {
      participantDataSource = [playerClient participantDataSource];

      if (participantDataSource)
      {
        v12 = [MRPlayerClientParticipantsUpdateMessage alloc];
        playerPath = [v10 playerPath];
        participantDataSource2 = [v10 participantDataSource];
        participants = [participantDataSource2 participants];
        v16 = [v12 initWithPlayerPath:playerPath participants:participants];

        origin = [v5 origin];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10010A308;
        v19[3] = &unk_1004BCAE8;
        v20 = v16;
        v18 = v16;
        [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:origin source:1 handler:v19];
      }
    }
  }
}

- (void)playbackDidTimeoutNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetOriginFromUserInfo();

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_10003511C;
  v11[4] = sub_100035A44;
  v12 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010A444;
  v8[3] = &unk_1004BCC70;
  v10 = v11;
  v7 = v6;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:v7 source:1 handler:v8];

  _Block_object_dispose(v11, 8);
}

- (void)_addToMessage:(id)message withAllClusterDeviceMembers:(id)members block:(id)block
{
  messageCopy = message;
  blockCopy = block;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  clusterComposition = [members clusterComposition];
  v10 = [clusterComposition countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(clusterComposition);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 uid];
        v16 = blockCopy[2](blockCopy, v15, [v14 deviceSubtype]);

        if (v16)
        {
          [messageCopy addMessage:v16];
        }
      }

      v11 = [clusterComposition countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_activeSystemEndpointDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];
  v6 = [v5 copy];

  if (v6 && ![v6 type] && (objc_msgSend(v6, "isPairedDeviceSync") & 1) == 0 && (objc_msgSend(v6, "suppressPairedDeviceSync") & 1) == 0)
  {
    outputDeviceUID = [v6 outputDeviceUID];
    if (!outputDeviceUID)
    {
      goto LABEL_7;
    }

    v8 = outputDeviceUID;
    outputDeviceUID2 = [v6 outputDeviceUID];
    v10 = +[MRAVOutputDevice localDeviceUID];
    v11 = [outputDeviceUID2 isEqualToString:v10];

    if (v11)
    {
LABEL_7:
      v12 = +[MROrigin localOrigin];
      v13 = [MRDeviceInfoRequest deviceInfoForOrigin:v12];

      wHAIdentifier = [v13 WHAIdentifier];
      [v6 setOutputDeviceUID:wHAIdentifier];
    }

    v15 = [[MRUpdateActiveSystemEndpointMessage alloc] initWithRequest:v6];
    v16 = +[MROrigin localOrigin];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10010A898;
    v18[3] = &unk_1004BCAE8;
    v19 = v15;
    v17 = v15;
    [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:v16 source:4 handler:v18];
  }
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 > 0x600000000000005)
  {
    if (uint64 <= 0x600000000000009)
    {
      if (uint64 == 0x600000000000006)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleSetMessageLogging:xdict fromClient:clientCopy];
      }

      else if (uint64 == 0x600000000000009)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleTelevisionEndpointAvailableMessage:xdict fromClient:clientCopy];
      }
    }

    else
    {
      switch(uint64)
      {
        case 0x60000000000000ALL:
          [(MRDExternalDeviceRemoteServer *)self _handleSendTelevisionCustomDataMessage:xdict fromClient:clientCopy];
          break;
        case 0x60000000000000BLL:
          [(MRDExternalDeviceRemoteServer *)self _handleSystemGroupSessionStartMessage:xdict fromClient:clientCopy];
          break;
        case 0x60000000000000CLL:
          [(MRDExternalDeviceRemoteServer *)self _handleSystemGroupSessionStopMessage:xdict fromClient:clientCopy];
          break;
      }
    }
  }

  else if (uint64 <= 0x600000000000002)
  {
    if (uint64 == 0x600000000000001)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleGetInputModeMessage:xdict fromClient:clientCopy];
    }

    else if (uint64 == 0x600000000000002)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleSetInputModeMessage:xdict fromClient:clientCopy];
    }
  }

  else if (uint64 == 0x600000000000003)
  {
    [(MRDExternalDeviceRemoteServer *)self _handleDeletePairingIdentityMessage:xdict fromClient:clientCopy];
  }

  else if (uint64 == 0x600000000000004)
  {
    [(MRDExternalDeviceRemoteServer *)self _handleGetPairedDevicesMessage:xdict fromClient:clientCopy];
  }

  else
  {
    [(MRDExternalDeviceRemoteServer *)self _handleDeletePairedDeviceMessage:xdict fromClient:clientCopy];
  }
}

- (void)sleepObserverSystemWillSleep:(id)sleep completion:(id)completion
{
  completionCopy = completion;
  Error = MRMediaRemoteCreateError();
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClients:clients withError:Error completion:completionCopy];
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010ABBC;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)_handleClientConnection:(id)connection
{
  connectionCopy = connection;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client connected: %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010AF7C;
  v14 = &unk_1004B68F0;
  selfCopy = self;
  v16 = connectionCopy;
  v7 = connectionCopy;
  dispatch_sync(serialQueue, &v11);
  v8 = [MRUserSettings currentSettings:v11];
  [v8 externalDeviceSleepAssertionOnClientConnectDuration];
  v10 = [[MRDSleepAssertion alloc] initWithName:@"com.apple.MediaRemote.Television.KeepAlive10SecondsForUser" timeout:v9];
  [(MRDExternalDeviceRemoteServer *)self _prewarmMediaApps];
  [v7 requestDestinationEndpoint:0];
}

- (void)_prewarmMediaApps
{
  v2 = [MRClient alloc];
  v3 = MRMediaRemoteCopyLocalDeviceSystemPodcastApplicationDisplayID();
  v9 = [v2 initWithBundleIdentifier:v3];

  v4 = +[MROrigin localOrigin];
  MRMediaRemoteGetSupportedCommandsForClient();

  v5 = [MRClient alloc];
  v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = +[MROrigin localOrigin];
  MRMediaRemoteGetSupportedCommandsForClient();
}

- (void)_disconnectClient:(id)client withError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  v8 = clientCopy;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = errorCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] MRExternalClientConnection did disconnect client: %{public}@ with error %{public}@", buf, 0x16u);
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v38 = sub_10003511C;
  v39 = sub_100035A44;
  v40 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010B4F8;
  block[3] = &unk_1004BCD20;
  v30 = &v32;
  block[4] = self;
  v11 = v8;
  v29 = v11;
  v31 = buf;
  dispatch_sync(serialQueue, block);
  if (*(v33 + 24) == 1)
  {
    if ([v11 registeredToNowPlayingUpdates])
    {
      [(MRDNowPlayingStateObserver *)self->_stateObserver stopReceivingUpdatesForSource:1];
    }

    if ([v11 registeredToVolumeUpdates])
    {
      [(MRDNowPlayingStateObserver *)self->_stateObserver stopReceivingUpdatesForSource:2];
    }

    [(MRDPinPairingDialog *)self->_pinPairingDialog closeForClient:v11];
    [v11 flushLyricsEvents:&stru_1004BCD60];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10010B644;
    v26[3] = &unk_1004BCD88;
    v12 = v11;
    v27 = v12;
    [v12 flushPendingPlaybackSessionMigrateEvents:v26];
    [(MRDExternalDeviceRemoteServer *)self purgeUnusedDiscoverySessions];
    if (MSVDeviceIsAudioAccessory())
    {
      deviceInfo = [v12 deviceInfo];
      wHAIdentifier = [deviceInfo WHAIdentifier];
      [(MRDExternalDeviceRemoteServer *)self updateASEAssertionForRemoteDeviceID:wHAIdentifier isAsserting:0];
    }

    v15 = +[MRDMediaRemoteServer server];
    [v15 postClientNotificationNamed:kMRTelevisionServicePairedDevicesDidChangeNotification];

    v16 = +[NSNotificationCenter defaultCenter];
    connection = [v12 connection];
    [v16 postNotificationName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:connection userInfo:0];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = *(*&buf[8] + 40);
    v19 = [v18 countByEnumeratingWithState:&v22 objects:v36 count:16];
    if (v19)
    {
      v20 = *v23;
      do
      {
        v21 = 0;
        do
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v18);
          }

          (*(*(*(&v22 + 1) + 8 * v21) + 16))(*(*(&v22 + 1) + 8 * v21));
          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v22 objects:v36 count:16];
      }

      while (v19);
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v32, 8);
}

- (id)_findClientIf:(id)if
{
  ifCopy = if;
  [(MRDExternalDeviceRemoteServer *)self clients];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (ifCopy[2](ifCopy, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_clientForPairingSession:(id)session
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B908;
  v7[3] = &unk_1004BCDB0;
  sessionCopy = session;
  v4 = sessionCopy;
  v5 = [(MRDExternalDeviceRemoteServer *)self _findClientIf:v7];

  return v5;
}

- (id)_clientForIdentifier:(id)identifier
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B9F8;
  v7[3] = &unk_1004BCDB0;
  identifierCopy = identifier;
  v4 = identifierCopy;
  v5 = [(MRDExternalDeviceRemoteServer *)self _findClientIf:v7];

  return v5;
}

- (BOOL)_verifyClientVersionCompatibility:(id)compatibility withError:(id *)error
{
  deviceInfo = [compatibility deviceInfo];
  name = [deviceInfo name];
  bundleIdentifier = [deviceInfo bundleIdentifier];
  bundleVersion = [deviceInfo bundleVersion];
  protocolVersion = [deviceInfo protocolVersion];
  if (protocolVersion >= [objc_opt_class() minimumSupportedProtocolVersion])
  {
    if (![bundleIdentifier isEqualToString:@"com.apple.TVRemote"] || (v14 = objc_msgSend(bundleVersion, "integerValue"), v14 >= objc_msgSend(objc_opt_class(), "minimumSupportedHangdogApplicationVersion")))
    {
      Error = 0;
      if (!error)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = name;
      v17 = 2048;
      integerValue = [bundleVersion integerValue];
      v19 = 2048;
      minimumSupportedHangdogApplicationVersion = [objc_opt_class() minimumSupportedHangdogApplicationVersion];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client %{public}@ is not compatible. TVRemote application version %llu is less than the required minimum version %llu", &v15, 0x20u);
    }
  }

  else
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = name;
      v17 = 2048;
      integerValue = [deviceInfo protocolVersion];
      v19 = 2048;
      minimumSupportedHangdogApplicationVersion = [objc_opt_class() minimumSupportedProtocolVersion];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client %{public}@ is not compatible. Protocol version %llu is less than the required minimum version %llu", &v15, 0x20u);
    }
  }

  Error = MRMediaRemoteCreateError();
  if (error)
  {
LABEL_5:
    v12 = Error;
    *error = Error;
  }

LABEL_6:

  return Error == 0;
}

- (BOOL)_connection:(id)_connection wasPreviouslySubscribedToPlayerPath:(id)path
{
  _connectionCopy = _connection;
  pathCopy = path;
  if (pathCopy)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [_connectionCopy subscribedPlayerPaths];
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = _connectionCopy;
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          origin = [pathCopy origin];
          v14 = [(MRDExternalDeviceRemoteServer *)self _origin:origin matchesSubscribedPlayerPath:v12];

          if (v14)
          {
            client = [v12 client];
            v16 = +[MRClient anyClient];
            if ([client isEqual:v16])
            {

LABEL_16:
              v20 = 1;
              goto LABEL_17;
            }

            client2 = [v12 client];
            client3 = [pathCopy client];
            v19 = [client2 isEqual:client3];

            if (v19)
            {
              goto LABEL_16;
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v20 = 0;
LABEL_17:
      _connectionCopy = v22;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)_connection:(id)_connection canReceiveUpdatesForPlayerPath:(id)path
{
  _connectionCopy = _connection;
  pathCopy = path;
  if (pathCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscribedPlayerPaths = [_connectionCopy subscribedPlayerPaths];
    v9 = [subscribedPlayerPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(subscribedPlayerPaths);
          }

          if ([(MRDExternalDeviceRemoteServer *)self _playerPath:pathCopy matchesSubscribedPlayerPath:*(*(&v15 + 1) + 8 * i)])
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v10 = [subscribedPlayerPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_connection:(id)_connection canReceiveUpdatesForOrigin:(id)origin
{
  _connectionCopy = _connection;
  originCopy = origin;
  if (originCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscribedPlayerPaths = [_connectionCopy subscribedPlayerPaths];
    v9 = [subscribedPlayerPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(subscribedPlayerPaths);
          }

          if ([(MRDExternalDeviceRemoteServer *)self _origin:originCopy matchesSubscribedPlayerPath:*(*(&v15 + 1) + 8 * i)])
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v10 = [subscribedPlayerPaths countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
LABEL_12:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)_sendMessageFromEndpoint:(id)endpoint withSource:(int64_t)source handler:(id)handler
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  [(MRDExternalDeviceRemoteServer *)self clients];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v10 = v22 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:source toClient:v14])
        {
          objc_initWeak(&location, self);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10010C324;
          v15[3] = &unk_1004BCDD8;
          v16 = endpointCopy;
          objc_copyWeak(&v19, &location);
          v17 = v14;
          v18 = handlerCopy;
          [v14 requestDestinationEndpoint:v15];

          objc_destroyWeak(&v19);
          objc_destroyWeak(&location);
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (void)_sendMessageFromEndpoint:(id)endpoint outputDevice:(id)device withSource:(int64_t)source handler:(id)handler
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010C4B0;
  v12[3] = &unk_1004BCE00;
  deviceCopy = device;
  handlerCopy = handler;
  v10 = handlerCopy;
  v11 = deviceCopy;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:endpoint withSource:source handler:v12];
}

- (void)_sendStateUpdateMessageFromPlayerPath:(id)path source:(int64_t)source handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [clients countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(clients);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:source toClient:v15]&& [(MRDExternalDeviceRemoteServer *)self _connection:v15 canReceiveUpdatesForPlayerPath:pathCopy])
        {
          v16 = handlerCopy[2](handlerCopy, v15);
          if (v16)
          {
            [v15 sendMessage:v16];
          }
        }
      }

      v12 = [clients countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_sendStateUpdateMessageFromOrigin:(id)origin source:(int64_t)source handler:(id)handler
{
  originCopy = origin;
  handlerCopy = handler;
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [clients countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(clients);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:source toClient:v15]&& [(MRDExternalDeviceRemoteServer *)self _connection:v15 canReceiveUpdatesForOrigin:originCopy])
        {
          v16 = handlerCopy[2](handlerCopy, v15);
          if (v16)
          {
            [v15 sendMessage:v16];
          }
        }
      }

      v12 = [clients countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (BOOL)_shouldSendStateUpdateMessageFromSource:(int64_t)source toClient:(id)client
{
  clientCopy = client;
  v6 = clientCopy;
  v7 = 1;
  if (source > 2)
  {
    if (source == 3)
    {
      registeredToOutputDeviceUpdates = [clientCopy registeredToOutputDeviceUpdates];
      goto LABEL_10;
    }

    if (source == 4)
    {
      registeredToOutputDeviceUpdates = [clientCopy registeredToSystemEndpointUpdates];
      goto LABEL_10;
    }
  }

  else
  {
    if (source == 1)
    {
      registeredToOutputDeviceUpdates = [clientCopy registeredToNowPlayingUpdates];
      goto LABEL_10;
    }

    if (source == 2)
    {
      registeredToOutputDeviceUpdates = [clientCopy registeredToVolumeUpdates];
LABEL_10:
      v7 = registeredToOutputDeviceUpdates;
    }
  }

  return v7;
}

- (void)_broadcastKeyboardMessageWithState:(unint64_t)state text:(id)text attributes:(id)attributes
{
  textCopy = text;
  attributesCopy = attributes;
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [clients countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(clients);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 registeredKeyboardUpdates])
        {
          cryptoSession = [v15 cryptoSession];
          v17 = [MRKeyboardMessage encryptedMessageWithState:state text:textCopy attributes:attributesCopy usingCryptoSession:cryptoSession];

          [v15 sendMessage:v17];
        }
      }

      v12 = [clients countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)_broadcastRemoteTextInputMessageWithPayload:(id)payload
{
  payloadCopy = payload;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_10003511C;
  v24 = sub_100035A44;
  v25 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010CCD0;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(serialQueue, block);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v21[5];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 registeredKeyboardUpdates])
        {
          v11 = [MRRemoteTextInputMessage alloc];
          version = [payloadCopy version];
          data = [payloadCopy data];
          v14 = [v11 initWithVersion:version data:data];

          [v10 sendMessage:v14];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v20, 8);
}

- (id)_unpair:(id)_unpair
{
  _unpairCopy = _unpair;
  v5 = objc_alloc_init(MRDeviceInfo);
  [v5 setIdentifier:_unpairCopy];
  v6 = [[MRCoreUtilsPairingSession alloc] initWithRole:0 device:v5];
  [v6 open];
  removePeer = [v6 removePeer];
  if (removePeer)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = _unpairCopy;
      v14 = 2114;
      v15 = removePeer;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Error unpairing device: %{public}@ error: %{public}@", &v12, 0x16u);
    }
  }

  v9 = [(MRDExternalDeviceRemoteServer *)self _clientForIdentifier:_unpairCopy];
  if (v9)
  {
    Error = MRMediaRemoteCreateError();
    [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClient:v9 withError:Error];
  }

  return removePeer;
}

- (void)_notifyAndDisconnectClient:(id)client withError:(id)error
{
  clientCopy = client;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  v10 = clientCopy;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClients:v9 withError:errorCopy completion:0];

  objc_autoreleasePoolPop(v8);
}

- (void)_notifyAndDisconnectClients:(id)clients withError:(id)error completion:(id)completion
{
  clientsCopy = clients;
  errorCopy = error;
  completionCopy = completion;
  v11 = objc_autoreleasePoolPush();
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.MediaRemote.MRTelevisionRemoteServer.WorkerQueue", v12);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10010D240;
  v17[3] = &unk_1004B6BB0;
  v14 = errorCopy;
  v18 = v14;
  v15 = clientsCopy;
  v19 = v15;
  selfCopy = self;
  v16 = completionCopy;
  v21 = v16;
  dispatch_async(v13, v17);

  objc_autoreleasePoolPop(v11);
}

- (void)_registerCallbacks
{
  v3 = +[MRCoreUtilsSystemPairingSession pairingManager];
  pairingManager = self->_pairingManager;
  self->_pairingManager = v3;

  if (self->_pairingManager)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_10010D7E8;
    v8 = &unk_1004BCE28;
    objc_copyWeak(&v9, &location);
    [(CUPairingManager *)self->_pairingManager setPairedPeerRemovedHandler:&v5];
    [(CUPairingManager *)self->_pairingManager startMonitoringWithOptions:4, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (BOOL)_isConnectionForManagedConfigIDAllowed:(id)allowed
{
  allowedCopy = allowed;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A94F0();
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 effectiveValuesForUnionSetting:MCFeatureTVRemoteAllowedRemotes];

  if ([v6 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v8)
    {
      goto LABEL_16;
    }

    v9 = *v17;
LABEL_6:
    v10 = 0;
    while (1)
    {
      if (*v17 != v9)
      {
        objc_enumerationMutation(v7);
      }

      lowercaseString = [*(*(&v16 + 1) + 8 * v10) lowercaseString];
      lowercaseString2 = [allowedCopy lowercaseString];
      v13 = [lowercaseString isEqualToString:lowercaseString2];

      if (v13)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_6;
        }

        goto LABEL_16;
      }
    }
  }

  else
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A9558();
    }
  }

  LOBYTE(v8) = 1;
LABEL_16:

  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9598();
  }

  return v8;
}

- (void)_onQueue_registerDisconnectionHandler:(id)handler forClient:(id)client
{
  clientCopy = client;
  clientDisconnectionHandlers = self->_clientDisconnectionHandlers;
  handlerCopy = handler;
  v8 = [(NSMapTable *)clientDisconnectionHandlers objectForKey:clientCopy];

  if (!v8)
  {
    v9 = self->_clientDisconnectionHandlers;
    v10 = +[NSMutableArray array];
    [(NSMapTable *)v9 setObject:v10 forKey:clientCopy];
  }

  v11 = [(NSMapTable *)self->_clientDisconnectionHandlers objectForKey:clientCopy];
  v12 = objc_retainBlock(handlerCopy);

  [v11 addObject:v12];
}

- (void)purgeUnusedDiscoverySessions
{
  v3 = self->_discoverySessions;
  objc_sync_enter(v3);
  discoverySessions = self->_discoverySessions;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010DFB8;
  v5[3] = &unk_1004BCC98;
  v5[4] = self;
  [(NSMutableDictionary *)discoverySessions enumerateKeysAndObjectsUsingBlock:v5];
  objc_sync_exit(v3);
}

- (unsigned)serverDiscoveryModeForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  v6 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(clients);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) discoveryModeForConfiguration:configurationCopy];
        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [clients countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)outputDevicesChanged:(id)changed forConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  clients = [(MRDExternalDeviceRemoteServer *)self clients];
  v9 = [clients countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(clients);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 discoveryModeForConfiguration:configurationCopy])
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10010E2E0;
          v14[3] = &unk_1004BCE78;
          v15 = changedCopy;
          v16 = configurationCopy;
          v17 = v13;
          [v13 requestDestinationEndpoint:v14];
        }
      }

      v10 = [clients countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)_handleGetInputModeMessage:(id)message fromClient:(id)client
{
  original = message;
  v5 = xpc_dictionary_get_remote_connection(original);
  if (v5)
  {
    reply = xpc_dictionary_create_reply(original);
    v7 = reply;
    if (reply)
    {
      xpc_dictionary_set_uint64(reply, "MRXPC_GAMECONTROLLER_INPUT_MODE_KEY", self->_gameControllerInputMode);
      xpc_connection_send_message(v5, v7);
    }
  }
}

- (void)_handleSetInputModeMessage:(id)message fromClient:(id)client
{
  xdict = message;
  [(MRDExternalDeviceRemoteServer *)self _setGameControllerInputMode:xpc_dictionary_get_uint64(xdict, "MRXPC_GAMECONTROLLER_INPUT_MODE_KEY")];
  v5 = xpc_dictionary_get_remote_connection(xdict);
  if (v5)
  {
    reply = xpc_dictionary_create_reply(xdict);
    if (reply)
    {
      xpc_connection_send_message(v5, reply);
    }
  }
}

- (void)_handleDeletePairingIdentityMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = [[MRCryptoPairingSession alloc] initWithRole:1 device:0];
  v10 = 0;
  v6 = [v5 deleteIdentityWithError:&v10];
  v7 = v10;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Error deleting pairing identity. %{public}@", buf, 0xCu);
    }

    v8 = 1;
  }

  sub_10000F9E4(messageCopy, v8);
}

- (void)_handleGetPairedDevicesMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = [[MRCoreUtilsPairingSession alloc] initWithRole:0 device:0];
  [v6 open];
  pairedDevices = [v6 pairedDevices];
  serialQueue = self->_serialQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010E770;
  v14 = &unk_1004B68F0;
  v15 = pairedDevices;
  selfCopy = self;
  v9 = pairedDevices;
  dispatch_sync(serialQueue, &v11);
  v10 = [MRDeviceInfo dataFromDeviceInfos:v9, v11, v12, v13, v14];
  sub_10001673C(messageCopy, "MRXPC_PAIRED_EXTERNAL_DEVICES_DATA", v10, 0);
}

- (void)_handleDeletePairedDeviceMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = [NSString stringWithCString:xpc_dictionary_get_string(messageCopy encoding:"MRXPC_PAIRED_EXTERNAL_DEVICE"), 4];
  v7 = [(MRDExternalDeviceRemoteServer *)self _unpair:v6];
  if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Error unpairing device: %{public}@ error: %{public}@", &v10, 0x16u);
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  sub_10000F9E4(messageCopy, v9);
}

- (void)_handleSetMessageLogging:(id)logging fromClient:(id)client
{
  v4 = xpc_dictionary_get_BOOL(logging, "MRXPC_EXTERNAL_DEVICE_LOGGING_KEY");
  v5 = +[MRProtocolMessageLogger sharedLogger];
  [v5 setShouldVerboselyLog:v4];
}

- (void)_handleTelevisionEndpointAvailableMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  v7 = xpc_dictionary_get_BOOL(message, "MRXPC_TELEVISION_ENDPOINT_AVAILABLE_KEY");
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EBAC;
  block[3] = &unk_1004B8870;
  v13 = v7;
  v11 = clientCopy;
  selfCopy = self;
  v9 = clientCopy;
  dispatch_sync(serialQueue, block);
}

- (void)_handleSendTelevisionCustomDataMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreatePropertyListFromXPCMessage();
  v7 = MRCreatePropertyListFromXPCMessage();

  v8 = [[MRGenericMessage alloc] initWithKey:v6 data:v7];
  v9 = [MRPlayerPath alloc];
  v10 = +[MROrigin localOrigin];
  v11 = [v9 initWithOrigin:v10 client:0 player:0];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10010EE08;
  v13[3] = &unk_1004BCAE8;
  v14 = v8;
  v12 = v8;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v11 source:0 handler:v13];
}

- (void)_handleDeviceInfoRequest:(id)request fromClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010EEB8;
  v7[3] = &unk_1004BCEA0;
  requestCopy = request;
  selfCopy = self;
  v6 = requestCopy;
  [client requestConnectedDestinationEndpoint:v7];
}

- (void)_handleReceivedCommand:(id)command fromClient:(id)client
{
  commandCopy = command;
  clientCopy = client;
  playerPath = [commandCopy playerPath];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010F11C;
  v14 = &unk_1004BCEC8;
  v15 = commandCopy;
  v16 = clientCopy;
  v9 = clientCopy;
  v10 = commandCopy;
  [v9 localizeDestinationPlayerPath:playerPath completion:&v11];

  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v9, v11, v12, v13, v14];
}

- (void)_handleRegisterHIDDeviceMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    deviceDescriptor = [messageCopy deviceDescriptor];
    v17 = 138543362;
    v18 = deviceDescriptor;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Registering HID device with descriptor: %{public}@", &v17, 0xCu);
  }

  v9 = [MRDVirtualTouchDevice alloc];
  deviceDescriptor2 = [messageCopy deviceDescriptor];
  v11 = [(MRDVirtualTouchDevice *)v9 initWithDeviceDescriptor:deviceDescriptor2];

  if (v11)
  {
    v12 = [clientCopy addVirtualTouchDevice:v11];
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      uniqueIdentifier = [(MRDVirtualTouchDevice *)v11 uniqueIdentifier];
      v17 = 134217984;
      v18 = uniqueIdentifier;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Registered new virtual touch device with ID %llu", &v17, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1003A9728();
    }

    v12 = 0;
    v15 = 1;
  }

  v16 = [[MRRegisterHIDDeviceResultMessage alloc] initWithErrorCode:v15 deviceIdentifier:v12];
  [messageCopy replyWithMessage:v16];
}

- (void)_handleTouchEvent:(_MRHIDTouchEvent *)event withDeviceID:(unint64_t)d fromClient:(id)client
{
  clientCopy = client;
  v8 = [clientCopy virtualTouchDeviceWithID:d];
  v9 = v8;
  if (v8)
  {
    v10 = *&event->var2;
    v14[0] = *&event->var0.var0.var0;
    v14[1] = v10;
    [v8 handleTouchEvent:v14];
  }

  v11 = [clientCopy gameControllerWithID:d];
  if (v11)
  {
    v12 = MRGameControllerDigitizerCreateWithHIDTouchEvent();
    v13 = MRGameControllerEventCreateWithDigitizer();
    [v11 sendGameControllerEvent:v13];
  }
}

- (void)_handleRegisterGameControllerMessage:(id)message client:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v7 = [MREmulatedGameController alloc];
  properties = [messageCopy properties];
  v11 = [v7 initWithProperties:properties];

  v9 = [clientCopy addGameController:v11];
  v10 = [[MRRegisterGameControllerResponseMessage alloc] initWithControllerID:v9];
  [messageCopy replyWithMessage:v10];
}

- (void)_handleClientUpdatesConfigMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  registeredToNowPlayingUpdates = [clientCopy registeredToNowPlayingUpdates];
  registeredToVolumeUpdates = [clientCopy registeredToVolumeUpdates];
  registeredToOutputDeviceUpdates = [clientCopy registeredToOutputDeviceUpdates];
  subscribedPlayerPaths = [clientCopy subscribedPlayerPaths];
  registeredToNowPlayingUpdates2 = [clientCopy registeredToNowPlayingUpdates];
  if (registeredToNowPlayingUpdates2 != [messageCopy nowPlayingUpdates])
  {
    [clientCopy setRegisteredToNowPlayingUpdates:{objc_msgSend(messageCopy, "nowPlayingUpdates")}];
    nowPlayingUpdates = [messageCopy nowPlayingUpdates];
    stateObserver = self->_stateObserver;
    if (nowPlayingUpdates)
    {
      [(MRDNowPlayingStateObserver *)stateObserver beginReceivingUpdatesForSource:1];
    }

    else
    {
      [(MRDNowPlayingStateObserver *)stateObserver stopReceivingUpdatesForSource:1];
    }
  }

  registeredToVolumeUpdates2 = [clientCopy registeredToVolumeUpdates];
  if (registeredToVolumeUpdates2 != [messageCopy volumeUpdates])
  {
    [clientCopy setRegisteredToVolumeUpdates:{objc_msgSend(messageCopy, "volumeUpdates")}];
    volumeUpdates = [messageCopy volumeUpdates];
    v17 = self->_stateObserver;
    if (volumeUpdates)
    {
      [(MRDNowPlayingStateObserver *)v17 beginReceivingUpdatesForSource:2];
    }

    else
    {
      [(MRDNowPlayingStateObserver *)v17 stopReceivingUpdatesForSource:2];
    }
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10010F94C;
  v21[3] = &unk_1004BCF18;
  v22 = messageCopy;
  v23 = clientCopy;
  v26 = registeredToOutputDeviceUpdates;
  v27 = registeredToVolumeUpdates;
  selfCopy = self;
  v25 = subscribedPlayerPaths;
  v28 = registeredToNowPlayingUpdates;
  v18 = subscribedPlayerPaths;
  v19 = clientCopy;
  v20 = messageCopy;
  [v19 requestConnectedDestinationEndpoint:v21];
}

- (void)_syncStateToClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isDestinationLocal])
  {
    v4 = objc_alloc_init(MRCompositeMessage);
    if (self->_gameControllerInputMode)
    {
      v5 = [[MRRegisterForGameControllerEventsMessage alloc] initWithInputMode:self->_gameControllerInputMode];
      [v4 addMessage:v5];
    }

    [clientCopy sendMessage:v4];
    v6 = +[MRDMediaRemoteServer server];
    [v6 postClientNotificationNamed:kMRTelevisionServicePairedDevicesDidChangeNotification];
  }
}

- (void)_addOutputDevicesToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  clientCopy = client;
  messageCopy = message;
  v11 = [clientCopy outputDevicesForEndpoint:endpointCopy];
  v15 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v11 redactVolume:1 forClient:clientCopy endpoint:endpointCopy];

  v12 = [MRSyncOutputDevicesMessage alloc];
  deviceInfo = [clientCopy deviceInfo];

  v14 = [v12 initWithOutputDevices:v15 forClientWithDeviceInfo:deviceInfo];
  [messageCopy addMessage:v14];
}

- (void)_addVolumeToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint completion:(id)completion
{
  messageCopy = message;
  clientCopy = client;
  endpointCopy = endpoint;
  completionCopy = completion;
  v11 = +[MRUserSettings currentSettings];
  if (![v11 supportOutputContextSync])
  {
    goto LABEL_6;
  }

  deviceInfo = [endpointCopy deviceInfo];
  if (([deviceInfo supportsOutputContextSync] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  deviceInfo2 = [clientCopy deviceInfo];
  supportsOutputContextSync = [deviceInfo2 supportsOutputContextSync];

  if (supportsOutputContextSync)
  {
    [(MRDExternalDeviceRemoteServer *)self _addVolumeToMessage:messageCopy forClient:clientCopy withEndpoint:endpointCopy];
    completionCopy[2](completionCopy);
    goto LABEL_21;
  }

LABEL_7:
  group = dispatch_group_create();
  v15 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v15 nowPlayingServer];
  origin = [endpointCopy origin];
  v18 = [nowPlayingServer originClientForOrigin:origin];

  volumeControlCapabilities = [v18 volumeControlCapabilities];
  if (volumeControlCapabilities)
  {
    v20 = [[MRLegacyVolumeControlCapabilitiesDidChangeMessage alloc] initWithCapabilities:volumeControlCapabilities];
    [messageCopy addMessage:v20];
  }

  v39 = completionCopy;
  v21 = "v52@0:8Q16@24@32B40@44" + 19;
  if (([clientCopy registeredToOutputDeviceUpdates] & 1) != 0 || (objc_msgSend(clientCopy, "supportedMessages"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isSupported:", 65), v22, (v23 & 1) == 0))
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v55 = 0u;
    obj = [endpointCopy outputDevices];
    v30 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v30)
    {
      v31 = v30;
      v41 = *v56;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v56 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v55 + 1) + 8 * i);
          v34 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevice:v33 redactVolume:0 forClient:clientCopy endpoint:endpointCopy];
          dispatch_group_enter(group);
          [v33 uid];
          v36 = v35 = clientCopy;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100110408;
          v48[3] = &unk_1004BCF90;
          v49 = messageCopy;
          v50 = v34;
          selfCopy = self;
          v52 = v33;
          v53 = group;
          v37 = endpointCopy;
          v54 = v37;
          v38 = v34;
          [v37 outputDeviceVolumeControlCapabilities:v36 queue:&_dispatch_main_q completion:v48];

          clientCopy = v35;
        }

        v31 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v31);
    }

    v21 = "@44";
  }

  else
  {
    [endpointCopy outputDevices];
    v25 = v24 = clientCopy;
    v26 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v25 redactVolume:0 forClient:v24 endpoint:endpointCopy];

    v27 = [MRSyncOutputDevicesMessage alloc];
    deviceInfo3 = [v24 deviceInfo];
    v29 = [v27 initWithOutputDevices:v26 forClientWithDeviceInfo:deviceInfo3];
    [messageCopy addMessage:v29];

    clientCopy = v24;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *(v21 + 230);
  block[2] = sub_10011085C;
  block[3] = &unk_1004B79A0;
  completionCopy = v39;
  v47 = v39;
  dispatch_group_notify(group, &_dispatch_main_q, block);

LABEL_21:
}

- (void)_addVolumeToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint
{
  messageCopy = message;
  clientCopy = client;
  endpointCopy = endpoint;
  v11 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v11 nowPlayingServer];
  origin = [endpointCopy origin];
  v14 = [nowPlayingServer originClientForOrigin:origin];

  volumeControlCapabilities = [v14 volumeControlCapabilities];
  if (volumeControlCapabilities)
  {
    v16 = [[MRLegacyVolumeControlCapabilitiesDidChangeMessage alloc] initWithCapabilities:volumeControlCapabilities];
    [messageCopy addMessage:v16];
  }

  v17 = [clientCopy outputDevicesForEndpoint:endpointCopy];
  v18 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v17 redactVolume:0 forClient:clientCopy endpoint:endpointCopy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(MRDExternalDeviceRemoteServer *)self _addVolumeToMessage:messageCopy forClient:clientCopy outputDevice:*(*(&v24 + 1) + 8 * v23) withEndpoint:endpointCopy, v24];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }
}

- (void)_addVolumeToMessage:(id)message forClient:(id)client outputDevice:(id)device withEndpoint:(id)endpoint
{
  messageCopy = message;
  deviceCopy = device;
  volumeCapabilities = [deviceCopy volumeCapabilities];
  if (volumeCapabilities)
  {
    v9 = volumeCapabilities;
    v10 = [MRVolumeControlCapabilitiesDidChangeMessage alloc];
    groupID = [deviceCopy groupID];
    v12 = [deviceCopy uid];
    v13 = [v10 initWithCapabilities:v9 endpointUID:groupID outputDeviceUID:v12];
    [messageCopy addMessage:v13];

    if ((v9 & 2) != 0)
    {
      [deviceCopy volume];
      v15 = v14;
      v16 = [MRVolumeDidChangeMessage alloc];
      groupID2 = [deviceCopy groupID];
      v18 = [deviceCopy uid];
      LODWORD(v19) = v15;
      v20 = [v16 initWithVolume:groupID2 endpointUID:v18 outputDeviceUID:v19];
      [messageCopy addMessage:v20];
    }
  }
}

- (BOOL)_origin:(id)_origin matchesSubscribedPlayerPath:(id)path
{
  _originCopy = _origin;
  pathCopy = path;
  origin = [pathCopy origin];
  nowPlayingServer = origin;
  if (origin == _originCopy)
  {
    v13 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v9 = [origin isEqual:_originCopy];

  if ((v9 & 1) == 0)
  {
    origin2 = [pathCopy origin];
    v11 = +[MROrigin anyOrigin];
    v12 = [origin2 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v14 = +[MRDMediaRemoteServer server];
      nowPlayingServer = [v14 nowPlayingServer];

      origin3 = [pathCopy origin];
      if (origin3)
      {
        v13 = 0;
      }

      else
      {
        activeOriginClient = [nowPlayingServer activeOriginClient];
        origin4 = [activeOriginClient origin];
        v13 = [_originCopy isEqual:origin4];
      }

      goto LABEL_10;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)_origin:(id)_origin client:(id)client matchesSubscribedPlayerPath:(id)path
{
  clientCopy = client;
  pathCopy = path;
  _originCopy = _origin;
  v10 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v10 nowPlayingServer];

  v12 = [nowPlayingServer originClientForOrigin:_originCopy];

  client = [pathCopy client];

  v14 = [client copy];
  if ([v14 hasPlaceholder])
  {
    deviceInfo = [v12 deviceInfo];
    [v14 resolvePlaceholdersForDeviceInfo:deviceInfo];
  }

  if (v14 == clientCopy || ([v14 isEqual:clientCopy] & 1) != 0 || (+[MRClient anyClient](MRClient, "anyClient"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqual:", v16), v16, (v17 & 1) != 0))
  {
    v18 = 1;
  }

  else if (v14)
  {
    v18 = 0;
  }

  else
  {
    activeNowPlayingClient = [v12 activeNowPlayingClient];
    client2 = [activeNowPlayingClient client];
    v18 = [clientCopy isEqual:client2];
  }

  return v18;
}

- (BOOL)_origin:(id)_origin client:(id)client player:(id)player matchesSubscribedPlayerPath:(id)path
{
  _originCopy = _origin;
  clientCopy = client;
  playerCopy = player;
  pathCopy = path;
  player = [pathCopy player];
  nowPlayingServer = player;
  if (player == playerCopy)
  {
    v19 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v15 = [player isEqual:playerCopy];

  if ((v15 & 1) == 0)
  {
    player2 = [pathCopy player];
    v17 = +[MRPlayer anyPlayer];
    v18 = [player2 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v20 = +[MRDMediaRemoteServer server];
      nowPlayingServer = [v20 nowPlayingServer];

      v21 = [nowPlayingServer originClientForOrigin:_originCopy];
      v22 = [v21 existingNowPlayingClientForClient:clientCopy];
      activePlayerClient = [v22 activePlayerClient];
      player3 = [activePlayerClient player];

      player4 = [pathCopy player];
      if (player4)
      {
      }

      else if (!player3 || ([playerCopy isEqual:player3] & 1) != 0)
      {
        v19 = 1;
        goto LABEL_12;
      }

      v19 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v19 = 1;
LABEL_14:

  return v19;
}

- (BOOL)_playerPath:(id)path matchesSubscribedPlayerPath:(id)playerPath
{
  pathCopy = path;
  playerPathCopy = playerPath;
  origin = [pathCopy origin];
  v9 = [(MRDExternalDeviceRemoteServer *)self _origin:origin matchesSubscribedPlayerPath:playerPathCopy];

  if (!v9)
  {
    goto LABEL_5;
  }

  origin2 = [pathCopy origin];
  client = [pathCopy client];
  v12 = [(MRDExternalDeviceRemoteServer *)self _origin:origin2 client:client matchesSubscribedPlayerPath:playerPathCopy];

  if (!v12)
  {
    goto LABEL_5;
  }

  origin3 = [pathCopy origin];
  client2 = [pathCopy client];
  player = [pathCopy player];
  v16 = [(MRDExternalDeviceRemoteServer *)self _origin:origin3 client:client2 player:player matchesSubscribedPlayerPath:playerPathCopy];

  if (v16)
  {
    v17 = 1;
  }

  else
  {
LABEL_5:
    v17 = 0;
  }

  return v17;
}

- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client originClient:(id)originClient
{
  messageCopy = message;
  clientCopy = client;
  originClientCopy = originClient;
  playerPath = [originClientCopy playerPath];
  origin = [playerPath origin];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:clientCopy canReceiveUpdatesForOrigin:origin];

  if (self)
  {
    deviceInfo = [clientCopy deviceInfo];
    supportsSharedQueue = [deviceInfo supportsSharedQueue];

    if (supportsSharedQueue)
    {
      origin2 = [originClientCopy origin];
      if ([origin2 isHosted])
      {
        v16 = +[MRDMediaRemoteServer server];
        nowPlayingServer = [v16 nowPlayingServer];
        localOriginClient = [nowPlayingServer localOriginClient];
      }

      else
      {
        localOriginClient = originClientCopy;
      }

      defaultSupportedCommands = [localOriginClient defaultSupportedCommands];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_1001113E0;
      v35 = &unk_1004BCFB8;
      v20 = messageCopy;
      v36 = v20;
      v37 = clientCopy;
      [defaultSupportedCommands enumerateKeysAndObjectsUsingBlock:&v32];

      v21 = [MROriginClientPropertiesMessage alloc];
      [originClientCopy timeSincePlaying];
      v23 = [NSDate dateWithTimeIntervalSinceNow:-v22];
      devicePlaybackSessionID = [originClientCopy devicePlaybackSessionID];
      v25 = [v21 initWithLastPlayingDate:v23 devicePlaybackSessionID:devicePlaybackSessionID];
      [v20 addMessage:v25];
    }

    activeNowPlayingClient = [originClientCopy activeNowPlayingClient];
    if (activeNowPlayingClient)
    {
      deviceInfo2 = [clientCopy deviceInfo];
      supportsSharedQueue2 = [deviceInfo2 supportsSharedQueue];

      if (supportsSharedQueue2)
      {
        v29 = [MRSetNowPlayingClientMessage alloc];
        client = [activeNowPlayingClient client];
        v31 = [v29 initWithClient:client];

        [messageCopy addMessage:v31];
      }
    }
  }
}

- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client nowPlayingClient:(id)playingClient
{
  messageCopy = message;
  playingClientCopy = playingClient;
  clientCopy = client;
  playerPath = [playingClientCopy playerPath];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:clientCopy canReceiveUpdatesForPlayerPath:playerPath];

  if (self)
  {
    client = [playingClientCopy client];
    if ([client hasAuxiliaryProperties])
    {
      v12 = [[MRUpdateClientMessage alloc] initWithClient:client];
      [messageCopy addMessage:v12];
    }

    activePlayerClient = [playingClientCopy activePlayerClient];
    player = [activePlayerClient player];
    v15 = +[MRPlayer defaultPlayer];
    v16 = [player isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [MRSetNowPlayingPlayerMessage alloc];
      activePlayerClient2 = [playingClientCopy activePlayerClient];
      playerPath2 = [activePlayerClient2 playerPath];
      v20 = [v17 initWithPlayerPath:playerPath2];

      [messageCopy addMessage:v20];
    }
  }
}

- (void)_addSubscribedStateToMessage:(id)message forClient:(id)client playerClient:(id)playerClient
{
  messageCopy = message;
  clientCopy = client;
  playerClientCopy = playerClient;
  playerPath = [playerClientCopy playerPath];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:clientCopy canReceiveUpdatesForPlayerPath:playerPath];

  if (self)
  {
    nowPlayingState = [playerClientCopy nowPlayingState];
    playerPath2 = [playerClientCopy playerPath];
    v13 = [clientCopy exportNowPlayingState:nowPlayingState forPlayerPath:playerPath2];

    v14 = [MRSetStateMessage alloc];
    deviceInfo = [clientCopy deviceInfo];
    v16 = [v14 initWithNowPlayingState:v13 encoding:{objc_msgSend(deviceInfo, "preferredEncoding")}];

    [messageCopy addMessage:v16];
    v17 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
    playbackQueueRequests = [clientCopy playbackQueueRequests];
    state = [v16 state];
    playerPath3 = [state playerPath];
    v21 = [playbackQueueRequests subscriptionControllerForPlayerPath:playerPath3];

    state2 = [v16 state];
    playbackQueue = [state2 playbackQueue];
    [v21 subscribeToPlaybackQueue:playbackQueue forRequest:v17];

    v24 = [MRPlayerClientPropertiesMessage alloc];
    playerPath4 = [playerClientCopy playerPath];
    lastPlayingDate = [playerClientCopy lastPlayingDate];
    v27 = [v24 initWithPlayerPath:playerPath4 lastPlayingDate:lastPlayingDate];
    [messageCopy addMessage:v27];

    player = [playerClientCopy player];
    if ([player hasAuxiliaryProperties])
    {
      v29 = [MRUpdatePlayerMessage alloc];
      playerPath5 = [playerClientCopy playerPath];
      v31 = [v29 initWithPlayerPath:playerPath5];

      [messageCopy addMessage:v31];
    }

    participantDataSource = [playerClientCopy participantDataSource];

    if (participantDataSource)
    {
      v33 = [MRPlayerClientParticipantsUpdateMessage alloc];
      playerPath6 = [playerClientCopy playerPath];
      participantDataSource2 = [playerClientCopy participantDataSource];
      [participantDataSource2 participants];
      v43 = clientCopy;
      v36 = player;
      v37 = v16;
      v38 = v21;
      v39 = v17;
      v41 = v40 = v13;
      v42 = [v33 initWithPlayerPath:playerPath6 participants:v41];

      v13 = v40;
      v17 = v39;
      v21 = v38;
      v16 = v37;
      player = v36;
      clientCopy = v43;

      [messageCopy addMessage:v42];
    }
  }
}

- (void)_addNowPlayingStateToMessage:(id)message forClient:(id)client withEndpoint:(id)endpoint
{
  messageCopy = message;
  clientCopy = client;
  v9 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v9 nowPlayingServer];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = nowPlayingServer;
  obj = [nowPlayingServer originClients];
  v11 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v43;
    v29 = *v43;
    do
    {
      v14 = 0;
      v30 = v12;
      do
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * v14);
        [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:messageCopy forClient:clientCopy originClient:v15];
        deviceInfo = [clientCopy deviceInfo];
        supportsSharedQueue = [deviceInfo supportsSharedQueue];

        if (supportsSharedQueue)
        {
          v32 = v14;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          nowPlayingClients = [v15 nowPlayingClients];
          v18 = [nowPlayingClients countByEnumeratingWithState:&v38 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v39;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v39 != v20)
                {
                  objc_enumerationMutation(nowPlayingClients);
                }

                v22 = *(*(&v38 + 1) + 8 * i);
                [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:messageCopy forClient:clientCopy nowPlayingClient:v22];
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                playerClients = [v22 playerClients];
                v24 = [playerClients countByEnumeratingWithState:&v34 objects:v46 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v35;
                  do
                  {
                    for (j = 0; j != v25; j = j + 1)
                    {
                      if (*v35 != v26)
                      {
                        objc_enumerationMutation(playerClients);
                      }

                      [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:messageCopy forClient:clientCopy playerClient:*(*(&v34 + 1) + 8 * j)];
                    }

                    v25 = [playerClients countByEnumeratingWithState:&v34 objects:v46 count:16];
                  }

                  while (v25);
                }
              }

              v19 = [nowPlayingClients countByEnumeratingWithState:&v38 objects:v47 count:16];
            }

            while (v19);
          }

          v13 = v29;
          v12 = v30;
          v14 = v32;
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v12);
  }
}

- (void)_handleRegisterVoiceInputDeviceMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  descriptor = [messageCopy descriptor];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = descriptor;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Registering new virtual voice input device with descriptor: %{public}@", buf, 0xCu);
  }

  v11 = clientCopy;
  v12 = messageCopy;
  v9 = messageCopy;
  v10 = clientCopy;
  MRVirtualVoiceInputRegisterDevice();
}

- (void)_handleReceivedVoiceInputMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  registeredVirtualVoiceInputDevices = [client registeredVirtualVoiceInputDevices];
  if ([registeredVirtualVoiceInputDevices count])
  {
    firstObject = [registeredVirtualVoiceInputDevices firstObject];
    [firstObject unsignedIntValue];

    buffer = [messageCopy buffer];
    [messageCopy time];
    [messageCopy gain];
    MRVirtualVoiceInputProcessAudioData();
  }
}

- (void)_handlePlaybackQueueRequestMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  playerPath = [messageCopy playerPath];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001120D4;
  v10[3] = &unk_1004BCEC8;
  v11 = clientCopy;
  v12 = messageCopy;
  v8 = messageCopy;
  v9 = clientCopy;
  [v9 localizeDestinationPlayerPath:playerPath completion:v10];
}

- (void)_handleDeviceInfoUpdateMessage:(id)message fromClient:(id)client
{
  deviceInfo = [message deviceInfo];
  [(MRDExternalDeviceRemoteServer *)self _handleRemoteDeviceInfo:deviceInfo];
}

- (void)_handleSetConnectionStateMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  state = [message state];
  if (state == 3)
  {
    deviceInfo = [clientCopy deviceInfo];
    identifier = [deviceInfo identifier];
    v10 = [(MRDExternalDeviceRemoteServer *)self _unpair:identifier];
  }

  else
  {
    v7 = clientCopy;
    if (state != 2)
    {
      goto LABEL_6;
    }

    [(MRDExternalDeviceRemoteServer *)self _syncStateToClient:clientCopy];
  }

  v7 = clientCopy;
LABEL_6:
}

- (void)_handleGenericMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  if ([client isDestinationLocal])
  {
    v7 = [messageCopy key];
    if ([v7 isEqualToString:MRGenericMessageSetNameKey])
    {
      data = [messageCopy data];
      endpoints = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [data bytes]);

      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = endpoints;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Changing name to %{public}@", buf, 0xCu);
      }

      if ((MCLockdownSetDeviceName() & 1) == 0)
      {
        v11 = _MRLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = endpoints;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Could not set device name to %{public}@", buf, 0xCu);
        }
      }
    }

    else if (v7)
    {
      endpoints = [(MRDExternalDeviceRemoteServer *)self endpoints];
      if ([endpoints count])
      {
        v25 = v7;
        v12 = MRCreateXPCMessage();
        [messageCopy key];
        MRAddPropertyListToXPCMessage();
        v13 = messageCopy;
        [messageCopy data];
        MRAddPropertyListToXPCMessage();
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = endpoints;
        v14 = endpoints;
        v15 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v27;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v27 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v26 + 1) + 8 * i);
              v20 = _MRLogForCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v13 key];
                *buf = 138543618;
                v31 = v21;
                v32 = 2114;
                v33 = v19;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Sending custom data %{public}@ to endpoint %{public}@", buf, 0x16u);
              }

              connection = [v19 connection];
              v22Connection = [connection connection];
              xpc_connection_send_message(v22Connection, v12);
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v16);
        }

        messageCopy = v13;
        endpoints = v24;
        v7 = v25;
      }
    }

    else
    {
      endpoints = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
      [messageCopy replyWithMessage:endpoints];
    }
  }
}

- (void)_handleLyricsEventMessage:(id)message fromClient:(id)client
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100112988;
  v7[3] = &unk_1004BD030;
  messageCopy = message;
  clientCopy = client;
  v5 = clientCopy;
  v6 = messageCopy;
  [v5 localizeDestinationOrigin:0 completion:v7];
}

- (void)addAuthorizationCallbackForOutputDeviceUID:(id)d client:(id)client
{
  dCopy = d;
  clientCopy = client;
  routingDataSource = self->_routingDataSource;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100112AE4;
  v11[3] = &unk_1004BD080;
  v12 = dCopy;
  v13 = clientCopy;
  v9 = clientCopy;
  v10 = dCopy;
  [(MRDAVRoutingDataSource *)routingDataSource addAuthorizationCallbackForRouteID:v10 requestCallback:v11];
}

- (void)requestRouteAuthorizationStatusForDeviceUID:(id)d client:(id)client
{
  clientCopy = client;
  v6 = dispatch_get_global_queue(0, 0);
  dCopy = d;
  v8 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100112E54;
  v10[3] = &unk_1004BD0A8;
  v11 = clientCopy;
  v9 = clientCopy;
  [v8 searchForOutputDeviceUID:dCopy timeout:@"authorization status" reason:v6 queue:v10 completion:7.0];
}

- (void)_handleModifyOutputContextRequestMessage:(id)message fromClient:(id)client
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100112FA4;
  v8[3] = &unk_1004BCE78;
  messageCopy = message;
  selfCopy = self;
  clientCopy = client;
  v6 = clientCopy;
  v7 = messageCopy;
  [v6 requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v6];
}

- (void)_handleGetVolumeMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001134B4;
  v6[3] = &unk_1004B9CA8;
  messageCopy = message;
  v5 = messageCopy;
  [client requestDestinationEndpoint:v6];
}

- (void)_handleGetVolumeControlCapabilitiesMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100113678;
  v6[3] = &unk_1004B9CA8;
  messageCopy = message;
  v5 = messageCopy;
  [client requestDestinationEndpoint:v6];
}

- (void)_handleSetVolumeMessage:(id)message fromClient:(id)client
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100113854;
  v8[3] = &unk_1004B9CA8;
  messageCopy = message;
  v6 = messageCopy;
  clientCopy = client;
  [clientCopy requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:clientCopy];
}

- (void)_handlePlaybackSessionRequestMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"GetPlaybackSession" role:2];
  playerPath = [messageCopy playerPath];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100113AD0;
  v12[3] = &unk_1004BD188;
  v13 = messageCopy;
  v14 = v7;
  v15 = v8;
  v10 = v7;
  v11 = messageCopy;
  [clientCopy localizeDestinationPlayerPath:playerPath completion:v12];
}

- (void)_handlePlaybackSessionMigrateRequestMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  request = [messageCopy request];
  v9 = [request startEvent:@"SendPlaybackSession" role:3];

  playerPath = [messageCopy playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100113E30;
  v13[3] = &unk_1004BD188;
  v16 = v9;
  v14 = messageCopy;
  v15 = clientCopy;
  v11 = clientCopy;
  v12 = messageCopy;
  [v11 localizeDestinationPlayerPath:playerPath completion:v13];

  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v11];
}

- (void)_handlePlaybackSessionMigrateBeginMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"Prepare" role:2];
  playerPath = [messageCopy playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100114928;
  v13[3] = &unk_1004BD2B8;
  v17 = v8;
  v14 = v7;
  v15 = messageCopy;
  v16 = clientCopy;
  v10 = clientCopy;
  v11 = messageCopy;
  v12 = v7;
  [v10 localizeDestinationPlayerPath:playerPath completion:v13];
}

- (void)_handlePlaybackSessionMigratePostMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  request = [messageCopy request];
  v8 = [request startEvent:@"Post" role:2];

  playerPath = [messageCopy playerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100114EE0;
  v11[3] = &unk_1004BD330;
  v13 = v8;
  v12 = messageCopy;
  v10 = messageCopy;
  [clientCopy localizeDestinationPlayerPath:playerPath completion:v11];
}

- (void)_clearPlaybackQueueForPlayerPath:(id)path
{
  pathCopy = path;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = pathCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Clearing playback queue for %@", buf, 0xCu);
  }

  MRSystemAppPlaybackQueueCreate();
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v11 = kMRMediaRemoteOptionSystemAppPlaybackQueueData;
  v12 = ExternalRepresentation;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:0];
  v8 = [[MRDRemoteControlCommand alloc] initWithCommandType:122 playerPath:pathCopy unresolvedPlayerPath:pathCopy senderAppDisplayID:@"mediaremoted" optionsData:v7];
  v9 = +[MRDMediaRemoteServer server];
  remoteControlServer = [v9 remoteControlServer];
  [remoteControlServer sendRemoteControlCommand:v8 completion:&stru_1004BD370];
}

- (void)_handlePlaybackSessionMigrateEndMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"Finalize" role:2];
  playerPath = [messageCopy playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100115644;
  v13[3] = &unk_1004BD2B8;
  v17 = v8;
  v14 = v7;
  v15 = messageCopy;
  v16 = clientCopy;
  v10 = clientCopy;
  v11 = messageCopy;
  v12 = v7;
  [v10 localizeDestinationPlayerPath:playerPath completion:v13];
}

- (void)_handleTriggerAudioFadeMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v5 nowPlayingServer];
  playerPath = [messageCopy playerPath];
  v8 = [nowPlayingServer resolveExistingPlayerPath:playerPath];

  fadeType = [messageCopy fadeType];
  v10 = [[MRNowPlayingRequest alloc] initWithPlayerPath:v8];
  if (fadeType)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100115D58;
    v14[3] = &unk_1004B6FC0;
    v11 = &v15;
    v15 = messageCopy;
    v12 = messageCopy;
    [v10 triggerAudioFadeInWithReplyQueue:&_dispatch_main_q completion:v14];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100115CD8;
    v16[3] = &unk_1004BD398;
    v11 = &v17;
    v17 = messageCopy;
    v13 = messageCopy;
    [v10 triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:&_dispatch_main_q completion:v16];
  }
}

- (void)_handleSetDiscoveryModeMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  configuration = [messageCopy configuration];
  [clientCopy setDiscoveryMode:objc_msgSend(messageCopy forConfiguration:{"mode"), configuration}];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003511C;
  v21 = sub_100035A44;
  v22 = 0;
  v9 = self->_discoverySessions;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_discoverySessions objectForKeyedSubscript:configuration];
  v11 = v18[5];
  v18[5] = v10;

  objc_sync_exit(v9);
  if (v18[5])
  {
    if ([messageCopy mode])
    {
      availableOutputDevices = [v18[5] availableOutputDevices];

      if (availableOutputDevices)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100115FCC;
        v13[3] = &unk_1004BD3C0;
        v16 = &v17;
        v14 = configuration;
        v15 = clientCopy;
        [v15 requestDestinationEndpoint:v13];
      }
    }
  }

  [(MRDExternalDeviceRemoteServer *)self setServerDiscoveryMode:[(MRDExternalDeviceRemoteServer *)self serverDiscoveryModeForConfiguration:configuration] forConfiguration:configuration];
  _Block_object_dispose(&v17, 8);
}

- (void)_handleSetListeningModeMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001161D4;
  v6[3] = &unk_1004B9CA8;
  messageCopy = message;
  v5 = messageCopy;
  [client requestDestinationEndpoint:v6];
}

- (void)_handleSetConversationDetectionEnabledMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001163C0;
  v6[3] = &unk_1004B9CA8;
  messageCopy = message;
  v5 = messageCopy;
  [client requestDestinationEndpoint:v6];
}

- (void)_handleCreateHostedEndpointRequestMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v7 = [MRRequestDetails alloc];
  deviceInfo = [clientCopy deviceInfo];

  name = [deviceInfo name];
  v10 = [v7 initWithName:@"_handleCreateHostedEndpointRequestMessage" requestID:0 reason:name];

  outputDeviceUIDs = [messageCopy outputDeviceUIDs];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100116648;
  v13[3] = &unk_1004BD3E8;
  v14 = messageCopy;
  v12 = messageCopy;
  [MRDCreateHostedEndpointRequest createHostedEndpointWithOutputDeviceUIDs:outputDeviceUIDs timeout:v10 details:v13 groupUIDCompletion:30.0];
}

- (void)_handleAdjustVolumeMessage:(id)message fromClient:(id)client
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116800;
  v8[3] = &unk_1004B9CA8;
  messageCopy = message;
  v6 = messageCopy;
  clientCopy = client;
  [clientCopy requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:clientCopy];
}

- (void)_handleGetVolumeMutedMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116A04;
  v6[3] = &unk_1004B9CA8;
  messageCopy = message;
  v5 = messageCopy;
  [client requestDestinationEndpoint:v6];
}

- (void)_handleMuteVolumeMessage:(id)message fromClient:(id)client
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116C0C;
  v8[3] = &unk_1004B9CA8;
  messageCopy = message;
  v6 = messageCopy;
  clientCopy = client;
  [clientCopy requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:clientCopy];
}

- (void)_handleRequestGroupSessionMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116E10;
  v6[3] = &unk_1004BD478;
  messageCopy = message;
  v5 = messageCopy;
  [client requestConnectedDestinationEndpoint:v6];
}

- (void)_handleRequestMicrophoneConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Received incoming microphone connection request: %@", &v10, 0xCu);
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1003A9844();
  }

  v7 = [MRProtocolMessage alloc];
  v8 = [[NSError alloc] initWithMRError:2];
  v9 = [v7 initWithUnderlyingCodableMessage:0 error:v8];

  [messageCopy replyWithMessage:v9];
}

- (void)_handleCreateApplicationConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  context = [messageCopy context];
  objc_initWeak(&location, clientCopy);
  destinationPlayerPath = [context destinationPlayerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001171A0;
  v13[3] = &unk_1004BD518;
  v10 = context;
  v14 = v10;
  v11 = messageCopy;
  v15 = v11;
  objc_copyWeak(&v18, &location);
  selfCopy = self;
  v12 = clientCopy;
  v17 = v12;
  [v12 localizeDestinationPlayerPath:destinationPlayerPath completion:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_handleApplicationConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  context = [messageCopy context];
  destinationPlayerPath = [context destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100117820;
  v11[3] = &unk_1004BCEC8;
  v12 = context;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = context;
  [clientCopy localizeDestinationPlayerPath:destinationPlayerPath completion:v11];
}

- (void)_handleInvalidateApplicationConnectionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  context = [messageCopy context];
  destinationPlayerPath = [context destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100117A1C;
  v11[3] = &unk_1004BCEC8;
  v12 = context;
  v13 = messageCopy;
  v9 = messageCopy;
  v10 = context;
  [clientCopy localizeDestinationPlayerPath:destinationPlayerPath completion:v11];
}

- (void)updateASEAssertionForRemoteDeviceID:(id)d isAsserting:(BOOL)asserting
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117BE0;
  block[3] = &unk_1004B8870;
  assertingCopy = asserting;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_sync(serialQueue, block);
}

- (void)_promoteClient:(id)client
{
  clientCopy = client;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117E8C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(serialQueue, v7);
}

@end