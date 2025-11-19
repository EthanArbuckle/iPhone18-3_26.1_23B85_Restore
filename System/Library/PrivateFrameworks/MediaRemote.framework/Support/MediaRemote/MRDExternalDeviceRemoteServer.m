@interface MRDExternalDeviceRemoteServer
- (BOOL)_connection:(id)a3 canReceiveUpdatesForOrigin:(id)a4;
- (BOOL)_connection:(id)a3 canReceiveUpdatesForPlayerPath:(id)a4;
- (BOOL)_connection:(id)a3 wasPreviouslySubscribedToPlayerPath:(id)a4;
- (BOOL)_isConnectionForManagedConfigIDAllowed:(id)a3;
- (BOOL)_origin:(id)a3 client:(id)a4 matchesSubscribedPlayerPath:(id)a5;
- (BOOL)_origin:(id)a3 client:(id)a4 player:(id)a5 matchesSubscribedPlayerPath:(id)a6;
- (BOOL)_origin:(id)a3 matchesSubscribedPlayerPath:(id)a4;
- (BOOL)_playerPath:(id)a3 matchesSubscribedPlayerPath:(id)a4;
- (BOOL)_shouldSendStateUpdateMessageFromSource:(int64_t)a3 toClient:(id)a4;
- (BOOL)_verifyClientVersionCompatibility:(id)a3 withError:(id *)a4;
- (MRDExternalDeviceRemoteServer)initWithRoutingDataSource:(id)a3;
- (NSArray)clients;
- (NSArray)endpoints;
- (id)_clientForIdentifier:(id)a3;
- (id)_clientForPairingSession:(id)a3;
- (id)_createLocalizedOutputDevices:(id)a3 redactVolume:(BOOL)a4 forClient:(id)a5 endpoint:(id)a6;
- (id)_findClientIf:(id)a3;
- (id)_unpair:(id)a3;
- (unsigned)serverDiscoveryModeForConfiguration:(id)a3;
- (void)_activeSystemEndpointDidChangeNotification:(id)a3;
- (void)_addNowPlayingStateToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5;
- (void)_addOutputDevicesToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5;
- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 nowPlayingClient:(id)a5;
- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 originClient:(id)a5;
- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 playerClient:(id)a5;
- (void)_addToMessage:(id)a3 withAllClusterDeviceMembers:(id)a4 block:(id)a5;
- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 outputDevice:(id)a5 withEndpoint:(id)a6;
- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5;
- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5 completion:(id)a6;
- (void)_broadcastKeyboardMessageWithState:(unint64_t)a3 text:(id)a4 attributes:(id)a5;
- (void)_broadcastRemoteTextInputMessageWithPayload:(id)a3;
- (void)_clearPlaybackQueueForPlayerPath:(id)a3;
- (void)_disconnectClient:(id)a3 withError:(id)a4;
- (void)_handleAdjustVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleClientConnection:(id)a3;
- (void)_handleClientUpdatesConfigMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCreateApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleCreateHostedEndpointRequestMessage:(id)a3 fromClient:(id)a4;
- (void)_handleDeletePairedDeviceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleDeletePairingIdentityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleDeviceInfoRequest:(id)a3 fromClient:(id)a4;
- (void)_handleDeviceInfoUpdateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGenericMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetInputModeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetPairedDevicesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetVolumeControlCapabilitiesMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetVolumeMutedMessage:(id)a3 fromClient:(id)a4;
- (void)_handleInvalidateApplicationConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleLyricsEventMessage:(id)a3 fromClient:(id)a4;
- (void)_handleModifyOutputContextRequestMessage:(id)a3 fromClient:(id)a4;
- (void)_handleMuteVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackQueueRequestMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionMigrateBeginMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionMigrateEndMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionMigratePostMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionMigrateRequestMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePlaybackSessionRequestMessage:(id)a3 fromClient:(id)a4;
- (void)_handleReceivedCommand:(id)a3 fromClient:(id)a4;
- (void)_handleReceivedVoiceInputMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRegisterGameControllerMessage:(id)a3 client:(id)a4;
- (void)_handleRegisterHIDDeviceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRegisterVoiceInputDeviceMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestGroupSessionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestMicrophoneConnectionMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSendTelevisionCustomDataMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetConnectionStateMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetConversationDetectionEnabledMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetDiscoveryModeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetInputModeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetListeningModeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleSetMessageLogging:(id)a3 fromClient:(id)a4;
- (void)_handleSetVolumeMessage:(id)a3 fromClient:(id)a4;
- (void)_handleTelevisionEndpointAvailableMessage:(id)a3 fromClient:(id)a4;
- (void)_handleTouchEvent:(_MRHIDTouchEvent *)a3 withDeviceID:(unint64_t)a4 fromClient:(id)a5;
- (void)_handleTriggerAudioFadeMessage:(id)a3 fromClient:(id)a4;
- (void)_notifyAndDisconnectClient:(id)a3 withError:(id)a4;
- (void)_notifyAndDisconnectClients:(id)a3 withError:(id)a4 completion:(id)a5;
- (void)_onQueue_registerDisconnectionHandler:(id)a3 forClient:(id)a4;
- (void)_prewarmMediaApps;
- (void)_promoteClient:(id)a3;
- (void)_registerCallbacks;
- (void)_sendMessageFromEndpoint:(id)a3 outputDevice:(id)a4 withSource:(int64_t)a5 handler:(id)a6;
- (void)_sendMessageFromEndpoint:(id)a3 withSource:(int64_t)a4 handler:(id)a5;
- (void)_sendStateUpdateMessageFromOrigin:(id)a3 source:(int64_t)a4 handler:(id)a5;
- (void)_sendStateUpdateMessageFromPlayerPath:(id)a3 source:(int64_t)a4 handler:(id)a5;
- (void)_syncStateToClient:(id)a3;
- (void)addAuthorizationCallbackForOutputDeviceUID:(id)a3 client:(id)a4;
- (void)clearEndpointForClient:(id)a3;
- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)deviceInfoDidChangeNotification:(id)a3;
- (void)endpointDidAddOutputDeviceNotification:(id)a3;
- (void)endpointDidChangeOutputDeviceNotification:(id)a3;
- (void)endpointDidRemoveOutputDeviceNotification:(id)a3;
- (void)endpointVolumeControlCapabilitiesDidChangeNotification:(id)a3;
- (void)endpointVolumeDidChangeNotification:(id)a3;
- (void)endpointVolumeMutedDidChangeNotification:(id)a3;
- (void)externalDeviceClient:(id)a3 gameController:(unint64_t)a4 propertiesChanged:(id)a5;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)outputDevicesChanged:(id)a3 forConfiguration:(id)a4;
- (void)pairingSession:(id)a3 didCompleteExchangeWithError:(id)a4;
- (void)pairingSession:(id)a3 didPrepareExchangeData:(id)a4;
- (void)pairingSession:(id)a3 showSetupCode:(id)a4;
- (void)pinPairingDialogDidClose:(id)a3 forClient:(id)a4 userCancelled:(BOOL)a5;
- (void)playbackDidTimeoutNotification:(id)a3;
- (void)playerParticipantsDidChangeNotification:(id)a3;
- (void)purgeUnusedDiscoverySessions;
- (void)registerNotifications;
- (void)requestRouteAuthorizationStatusForDeviceUID:(id)a3 client:(id)a4;
- (void)sleepObserverSystemWillSleep:(id)a3 completion:(id)a4;
- (void)stateObserver:(id)a3 didReceiveClientDidUnregister:(id)a4;
- (void)stateObserver:(id)a3 didReceiveCoalescedNowPlayingStateChange:(id)a4 playerPath:(id)a5;
- (void)stateObserver:(id)a3 didReceiveDefaultSupportedCommandsChange:(id)a4 playerPath:(id)a5;
- (void)stateObserver:(id)a3 didReceiveNowPlayingClientChange:(id)a4;
- (void)stateObserver:(id)a3 didReceiveNowPlayingPlayerChange:(id)a4;
- (void)stateObserver:(id)a3 didReceivePlayerDidUnregister:(id)a4;
- (void)updateASEAssertionForRemoteDeviceID:(id)a3 isAsserting:(BOOL)a4;
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

- (MRDExternalDeviceRemoteServer)initWithRoutingDataSource:(id)a3
{
  v5 = a3;
  v34.receiver = self;
  v34.super_class = MRDExternalDeviceRemoteServer;
  v6 = [(MRDExternalDeviceRemoteServer *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_routingDataSource, a3);
    v8 = [[MRDRemoteControlService alloc] initWithRoutingDataSource:v5];
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

        v9 = [*(*(&v11 + 1) + 8 * v8) cryptoSession];
        [v9 setDelegate:0];

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

- (void)clearEndpointForClient:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Removing television endpoint for client %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100106F48;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
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

- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 type];
  v9 = v6;
  if ([v7 type] == 15 || objc_msgSend(v7, "type") == 37)
  {
    v10 = v7;
    v11 = [v10 deviceInfo];

    if (v11)
    {
      v12 = [v10 deviceInfo];
      [v9 setDeviceInfo:v12];

      v13 = [v10 supportedProtocolMessages];
      [v9 setSupportedMessages:v13];
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

  if ([v7 encryptionType] == 1)
  {
    if ([v9 cryptoEnabled])
    {
      if ([v7 encryptionType] != 1 || (objc_msgSend(v9, "cryptoSession"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isValid"), v16, (v17 & 1) == 0))
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

  if (([v9 isAllowedToSendMessageType:v8] & 1) == 0)
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
    [v7 replyWithMessage:v22];
LABEL_23:
  }

  else if (v8 > 100)
  {
    if (v8 <= 127)
    {
      if (v8 > 120)
      {
        switch(v8)
        {
          case 'y':
            [(MRDExternalDeviceRemoteServer *)self _handleCreateHostedEndpointRequestMessage:v7 fromClient:v9];
            break;
          case '}':
            [(MRDExternalDeviceRemoteServer *)self _handleAdjustVolumeMessage:v7 fromClient:v9];
            break;
          case '~':
            [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeMutedMessage:v7 fromClient:v9];
            break;
        }
      }

      else
      {
        switch(v8)
        {
          case 'e':
            [(MRDExternalDeviceRemoteServer *)self _handleSetDiscoveryModeMessage:v7 fromClient:v9];
            break;
          case 'j':
            [(MRDExternalDeviceRemoteServer *)self _handleTriggerAudioFadeMessage:v7 fromClient:v9];
            break;
          case 'n':
            [(MRDExternalDeviceRemoteServer *)self _handleSetListeningModeMessage:v7 fromClient:v9];
            break;
        }
      }
    }

    else if (v8 <= 133)
    {
      switch(v8)
      {
        case 128:
          [(MRDExternalDeviceRemoteServer *)self _handleMuteVolumeMessage:v7 fromClient:v9];
          break;
        case 130:
          [(MRDExternalDeviceRemoteServer *)self _handleSetConversationDetectionEnabledMessage:v7 fromClient:v9];
          break;
        case 132:
          [(MRDExternalDeviceRemoteServer *)self _handleRequestGroupSessionMessage:v7 fromClient:v9];
          break;
      }
    }

    else if (v8 > 135)
    {
      if (v8 == 136)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleInvalidateApplicationConnectionMessage:v7 fromClient:v9];
      }

      else if (v8 == 137)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleRequestMicrophoneConnectionMessage:v7 fromClient:v9];
      }
    }

    else if (v8 == 134)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleCreateApplicationConnectionMessage:v7 fromClient:v9];
    }

    else
    {
      [(MRDExternalDeviceRemoteServer *)self _handleApplicationConnectionMessage:v7 fromClient:v9];
    }
  }

  else
  {
    switch(v8)
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
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedCommand:v7 fromClient:v9];
        break;
      case 6:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterHIDDeviceMessage:v7 fromClient:v9];
        break;
      case 8:
      case 39:
        v25 = [v7 buttonEvent];
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedButtonEvent:v25 fromClient:v26, v9];
        break;
      case 10:
      case 43:
        v23 = v7;
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
        [(MRDExternalDeviceRemoteServer *)self _handleDeviceInfoRequest:v7 fromClient:v9];
        break;
      case 16:
        [(MRDExternalDeviceRemoteServer *)self _handleClientUpdatesConfigMessage:v7 fromClient:v9];
        break;
      case 18:
        v27 = v7;
        v24 = [v9 gameControllerWithID:{objc_msgSend(v27, "controllerID")}];
        v28 = [v27 event];

        [v24 sendGameControllerEvent:v28];
        goto LABEL_94;
      case 19:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterGameControllerMessage:v7 client:v9];
        break;
      case 21:
        [v9 removeGameController:{objc_msgSend(v7, "controllerID")}];
        break;
      case 24:
        [(MRDExternalDeviceRemoteServer *)self _handleGetKeyboardSessionMessage:v7 fromClient:v9];
        break;
      case 25:
        [(MRDExternalDeviceRemoteServer *)self _handleTextInputMessage:v7 fromClient:v9];
        break;
      case 28:
        [(MRDExternalDeviceRemoteServer *)self _handleRegisterVoiceInputDeviceMessage:v7 fromClient:v9];
        break;
      case 31:
        [(MRDExternalDeviceRemoteServer *)self _handleReceivedVoiceInputMessage:v7 fromClient:v9];
        break;
      case 32:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackQueueRequestMessage:v7 fromClient:v9];
        break;
      case 36:
        v24 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:2];
        [(MRDExternalDeviceRemoteServer *)self clientConnection:v9 didReceiveMessage:v24];
LABEL_94:

        break;
      case 37:
        [(MRDExternalDeviceRemoteServer *)self _handleDeviceInfoUpdateMessage:v7 fromClient:v9];
        break;
      case 38:
        [(MRDExternalDeviceRemoteServer *)self _handleSetConnectionStateMessage:v7 fromClient:v9];
        break;
      case 41:
        sub_1001A02A4(1);
        break;
      case 42:
        [(MRDExternalDeviceRemoteServer *)self _handleGenericMessage:v7 fromClient:v9];
        break;
      case 44:
        [(MRDExternalDeviceRemoteServer *)self _handleLyricsEventMessage:v7 fromClient:v9];
        break;
      case 48:
        [(MRDExternalDeviceRemoteServer *)self _handleModifyOutputContextRequestMessage:v7 fromClient:v9];
        break;
      case 49:
        [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeMessage:v7 fromClient:v9];
        break;
      case 51:
        [(MRDExternalDeviceRemoteServer *)self _handleSetVolumeMessage:v7 fromClient:v9];
        break;
      case 62:
        [(MRDExternalDeviceRemoteServer *)self _handleGetVolumeControlCapabilitiesMessage:v7 fromClient:v9];
        break;
      case 67:
        [(MRDExternalDeviceRemoteServer *)self _handleRemoteTextInputMessage:v7 fromClient:v9];
        break;
      case 68:
        [(MRDExternalDeviceRemoteServer *)self _handleGetRemoteTextInputSessionMessage:v7 fromClient:v9];
        break;
      case 69:
        notify_post([@"kAirPlayWHANotification_BreakAwayFromCurrentGroup" UTF8String]);
        break;
      case 70:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionRequestMessage:v7 fromClient:v9];
        break;
      case 73:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateRequestMessage:v7 fromClient:v9];
        break;
      case 75:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateBeginMessage:v7 fromClient:v9];
        break;
      case 76:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigrateEndMessage:v7 fromClient:v9];
        break;
      case 77:
        [(MRDExternalDeviceRemoteServer *)self _handleUpdateActiveSystemEndpointMessage:v7 fromClient:v9];
        break;
      case 78:
        [(MRDExternalDeviceRemoteServer *)self _handlePlaybackSessionMigratePostMessage:v7 fromClient:v9];
        break;
      default:
        break;
    }
  }
}

- (void)stateObserver:(id)a3 didReceiveClientDidUnregister:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A91F0();
  }

  v7 = [MRRemoveClientMessage alloc];
  v8 = [v5 client];
  v9 = [v7 initWithClient:v8];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100107918;
  v11[3] = &unk_1004BCAE8;
  v12 = v9;
  v10 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v5 source:1 handler:v11];
}

- (void)stateObserver:(id)a3 didReceivePlayerDidUnregister:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9258();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107A10;
  v8[3] = &unk_1004BCAE8;
  v9 = [[MRRemovePlayerMessage alloc] initWithPlayerPath:v5];
  v7 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v5 source:1 handler:v8];
}

- (void)stateObserver:(id)a3 didReceiveNowPlayingClientChange:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A92C0();
  }

  v7 = objc_alloc_init(MRProtocolMessageOptions);
  [v7 setPriority:4];
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 nowPlayingServer];

  v10 = [MRSetNowPlayingClientMessage alloc];
  v11 = [v5 client];
  v12 = [v10 initWithClient:v11];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100107BAC;
  v17[3] = &unk_1004BCB10;
  v18 = v7;
  v19 = v12;
  v20 = self;
  v21 = v5;
  v22 = v9;
  v13 = v9;
  v14 = v5;
  v15 = v12;
  v16 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v14 source:1 handler:v17];
}

- (void)stateObserver:(id)a3 didReceiveNowPlayingPlayerChange:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9328();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100107DCC;
  v8[3] = &unk_1004BCAE8;
  v9 = [[MRSetNowPlayingPlayerMessage alloc] initWithPlayerPath:v5];
  v7 = v9;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v5 source:1 handler:v8];
}

- (void)stateObserver:(id)a3 didReceiveDefaultSupportedCommandsChange:(id)a4 playerPath:(id)a5
{
  v7 = a4;
  v8 = a5;
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
  v18 = v7;
  v19 = v8;
  v10 = v8;
  v11 = v7;
  v12 = v17;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10010812C;
  v14[3] = &unk_1004BCB60;
  v15 = objc_retainBlock(v16);
  v13 = v15;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v10 source:1 handler:v14];
}

- (void)stateObserver:(id)a3 didReceiveCoalescedNowPlayingStateChange:(id)a4 playerPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A9488();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001082CC;
  v12[3] = &unk_1004BCB88;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromPlayerPath:v10 source:1 handler:v12];
}

- (void)pairingSession:(id)a3 didPrepareExchangeData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:v6];
  v9 = _MRLogForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = [v7 length];
      v12 = [v8 deviceInfo];
      v13 = [v12 name];
      v14 = 134218242;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Exchanging %llu bytes of crypto pairing data with client %{public}@", &v14, 0x16u);
    }

    v9 = [[MRCryptoPairingMessage alloc] initWithPairingData:v7 status:0];
    [v8 sendMessage:v9];
  }

  else if (v10)
  {
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] ERROR: Unable to exchange pairing data. Unknown client for crypto pairing session: %{public}@", &v14, 0xCu);
  }
}

- (void)pairingSession:(id)a3 showSetupCode:(id)a4
{
  v6 = a4;
  v7 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:a3];
  v8 = +[MROrigin localOrigin];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10010884C;
  v11[3] = &unk_1004BCBB0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [MRDeviceInfoRequest deviceInfoForOrigin:v8 queue:&_dispatch_main_q completion:v11];
}

- (void)pairingSession:(id)a3 didCompleteExchangeWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDExternalDeviceRemoteServer *)self _clientForPairingSession:v6];
  v9 = [v8 deviceInfo];
  v10 = [v9 name];

  if (!v7)
  {
    v13 = _MRLogForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543362;
    v19[0] = v10;
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
    v19[0] = v6;
    v14 = "[ExternalDeviceServer] ERROR: Unable to send pairing failure message. Unknown client for crypto pairing session: %{public}@";
    goto LABEL_10;
  }

  v11 = [v7 code];
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v19[0]) = v11;
    WORD2(v19[0]) = 2114;
    *(v19 + 6) = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Returning OSStatus code %d back to %{public}@", buf, 0x12u);
  }

  v13 = [[MRCryptoPairingMessage alloc] initWithPairingData:0 status:v11];
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

- (void)pinPairingDialogDidClose:(id)a3 forClient:(id)a4 userCancelled:(BOOL)a5
{
  v9 = a4;
  v6 = [v9 cryptoSession];
  v7 = [v6 isValid];

  if ((v7 & 1) == 0)
  {
    Error = MRMediaRemoteCreateError();
    [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClient:v9 withError:Error];
  }
}

- (void)externalDeviceClient:(id)a3 gameController:(unint64_t)a4 propertiesChanged:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [[MRGameControllerPropertiesMessage alloc] initWithGameControllerProperties:v7 controllerID:a4];

  [v8 sendMessage:v9];
}

- (id)_createLocalizedOutputDevices:(id)a3 redactVolume:(BOOL)a4 forClient:(id)a5 endpoint:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 mr_allOutputDevices];
  v12 = [v11 mr_redactClusterMembers];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100109140;
  v25[3] = &unk_1004B8A40;
  v13 = v9;
  v26 = v13;
  v14 = [v12 msv_filter:v25];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1001091D4;
  v22[3] = &unk_1004B9AD0;
  v23 = v13;
  v24 = v10;
  v15 = v10;
  v16 = v13;
  v17 = [v14 msv_map:v22];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100109248;
  v20[3] = &unk_1004BCBD0;
  v21 = a4;
  v18 = [v17 msv_map:v20];

  return v18;
}

- (void)endpointDidAddOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100109434;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointDidChangeOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10010969C;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointDidRemoveOutputDeviceNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];

  v7 = [v6 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001098D0;
  v10[3] = &unk_1004BCBF8;
  v10[4] = self;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v8 outputDevice:v9 withSource:3 handler:v10];
}

- (void)endpointVolumeControlCapabilitiesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:MRAVEndpointVolumeControlCapabilitiesUserInfoKey];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  if (v9)
  {
    v10 = [v7 intValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100109AB0;
    v11[3] = &unk_1004BCC20;
    v11[4] = self;
    v12 = v9;
    v13 = v5;
    v14 = v10;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v13 outputDevice:v12 withSource:2 handler:v11];
  }
}

- (void)endpointVolumeDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:MRAVEndpointVolumeUserInfoKey];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

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
    v14 = v5;
    v15 = v11;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v14 outputDevice:v13 withSource:2 handler:v12];
  }
}

- (void)endpointVolumeMutedDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 userInfo];
  v7 = [v6 objectForKeyedSubscript:MRAVEndpointVolumeMutedUserInfoKey];

  v8 = [v4 userInfo];

  v9 = [v8 objectForKeyedSubscript:MRAVEndpointOutputDeviceUserInfoKey];

  if (v9)
  {
    v10 = [v7 BOOLValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100109EC8;
    v11[3] = &unk_1004BCC48;
    v11[4] = self;
    v12 = v9;
    v13 = v5;
    v14 = v10;
    [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:v13 outputDevice:v12 withSource:2 handler:v11];
  }
}

- (void)deviceInfoDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = MRGetPlayerPathFromUserInfo();

  v7 = [v4 userInfo];
  v8 = MRGetDeviceInfoFromUserInfo();

  if (v8)
  {
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x3032000000;
    v13[3] = sub_10003511C;
    v13[4] = sub_100035A44;
    v14 = 0;
    v9 = [v6 origin];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10010A0D4;
    v10[3] = &unk_1004BCC70;
    v12 = v13;
    v11 = v8;
    [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:v9 source:0 handler:v10];

    _Block_object_dispose(v13, 8);
  }
}

- (void)playerParticipantsDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetPlayerPathFromUserInfo();

  if (v5 && [v5 isResolved])
  {
    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 nowPlayingServer];
    v8 = [v7 queryExistingPlayerPath:v5];

    v9 = [v8 playerClient];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 participantDataSource];

      if (v11)
      {
        v12 = [MRPlayerClientParticipantsUpdateMessage alloc];
        v13 = [v10 playerPath];
        v14 = [v10 participantDataSource];
        v15 = [v14 participants];
        v16 = [v12 initWithPlayerPath:v13 participants:v15];

        v17 = [v5 origin];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10010A308;
        v19[3] = &unk_1004BCAE8;
        v20 = v16;
        v18 = v16;
        [(MRDExternalDeviceRemoteServer *)self _sendStateUpdateMessageFromOrigin:v17 source:1 handler:v19];
      }
    }
  }
}

- (void)playbackDidTimeoutNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
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

- (void)_addToMessage:(id)a3 withAllClusterDeviceMembers:(id)a4 block:(id)a5
{
  v7 = a3;
  v8 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [a4 clusterComposition];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        v15 = [v14 uid];
        v16 = v8[2](v8, v15, [v14 deviceSubtype]);

        if (v16)
        {
          [v7 addMessage:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_activeSystemEndpointDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];
  v6 = [v5 copy];

  if (v6 && ![v6 type] && (objc_msgSend(v6, "isPairedDeviceSync") & 1) == 0 && (objc_msgSend(v6, "suppressPairedDeviceSync") & 1) == 0)
  {
    v7 = [v6 outputDeviceUID];
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v7;
    v9 = [v6 outputDeviceUID];
    v10 = +[MRAVOutputDevice localDeviceUID];
    v11 = [v9 isEqualToString:v10];

    if (v11)
    {
LABEL_7:
      v12 = +[MROrigin localOrigin];
      v13 = [MRDeviceInfoRequest deviceInfoForOrigin:v12];

      v14 = [v13 WHAIdentifier];
      [v6 setOutputDeviceUID:v14];
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

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 > 0x600000000000005)
  {
    if (uint64 <= 0x600000000000009)
    {
      if (uint64 == 0x600000000000006)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleSetMessageLogging:xdict fromClient:v6];
      }

      else if (uint64 == 0x600000000000009)
      {
        [(MRDExternalDeviceRemoteServer *)self _handleTelevisionEndpointAvailableMessage:xdict fromClient:v6];
      }
    }

    else
    {
      switch(uint64)
      {
        case 0x60000000000000ALL:
          [(MRDExternalDeviceRemoteServer *)self _handleSendTelevisionCustomDataMessage:xdict fromClient:v6];
          break;
        case 0x60000000000000BLL:
          [(MRDExternalDeviceRemoteServer *)self _handleSystemGroupSessionStartMessage:xdict fromClient:v6];
          break;
        case 0x60000000000000CLL:
          [(MRDExternalDeviceRemoteServer *)self _handleSystemGroupSessionStopMessage:xdict fromClient:v6];
          break;
      }
    }
  }

  else if (uint64 <= 0x600000000000002)
  {
    if (uint64 == 0x600000000000001)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleGetInputModeMessage:xdict fromClient:v6];
    }

    else if (uint64 == 0x600000000000002)
    {
      [(MRDExternalDeviceRemoteServer *)self _handleSetInputModeMessage:xdict fromClient:v6];
    }
  }

  else if (uint64 == 0x600000000000003)
  {
    [(MRDExternalDeviceRemoteServer *)self _handleDeletePairingIdentityMessage:xdict fromClient:v6];
  }

  else if (uint64 == 0x600000000000004)
  {
    [(MRDExternalDeviceRemoteServer *)self _handleGetPairedDevicesMessage:xdict fromClient:v6];
  }

  else
  {
    [(MRDExternalDeviceRemoteServer *)self _handleDeletePairedDeviceMessage:xdict fromClient:v6];
  }
}

- (void)sleepObserverSystemWillSleep:(id)a3 completion:(id)a4
{
  v5 = a4;
  Error = MRMediaRemoteCreateError();
  v6 = [(MRDExternalDeviceRemoteServer *)self clients];
  [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClients:v6 withError:Error completion:v5];
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010ABBC;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)_handleClientConnection:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client connected: %{public}@", buf, 0xCu);
  }

  serialQueue = self->_serialQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010AF7C;
  v14 = &unk_1004B68F0;
  v15 = self;
  v16 = v4;
  v7 = v4;
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

- (void)_disconnectClient:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2114;
    *&buf[14] = v7;
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
      v13 = [v12 deviceInfo];
      v14 = [v13 WHAIdentifier];
      [(MRDExternalDeviceRemoteServer *)self updateASEAssertionForRemoteDeviceID:v14 isAsserting:0];
    }

    v15 = +[MRDMediaRemoteServer server];
    [v15 postClientNotificationNamed:kMRTelevisionServicePairedDevicesDidChangeNotification];

    v16 = +[NSNotificationCenter defaultCenter];
    v17 = [v12 connection];
    [v16 postNotificationName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:v17 userInfo:0];

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

- (id)_findClientIf:(id)a3
{
  v4 = a3;
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
        if (v4[2](v4, v9))
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

- (id)_clientForPairingSession:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B908;
  v7[3] = &unk_1004BCDB0;
  v8 = a3;
  v4 = v8;
  v5 = [(MRDExternalDeviceRemoteServer *)self _findClientIf:v7];

  return v5;
}

- (id)_clientForIdentifier:(id)a3
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010B9F8;
  v7[3] = &unk_1004BCDB0;
  v8 = a3;
  v4 = v8;
  v5 = [(MRDExternalDeviceRemoteServer *)self _findClientIf:v7];

  return v5;
}

- (BOOL)_verifyClientVersionCompatibility:(id)a3 withError:(id *)a4
{
  v5 = [a3 deviceInfo];
  v6 = [v5 name];
  v7 = [v5 bundleIdentifier];
  v8 = [v5 bundleVersion];
  v9 = [v5 protocolVersion];
  if (v9 >= [objc_opt_class() minimumSupportedProtocolVersion])
  {
    if (![v7 isEqualToString:@"com.apple.TVRemote"] || (v14 = objc_msgSend(v8, "integerValue"), v14 >= objc_msgSend(objc_opt_class(), "minimumSupportedHangdogApplicationVersion")))
    {
      Error = 0;
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v6;
      v17 = 2048;
      v18 = [v8 integerValue];
      v19 = 2048;
      v20 = [objc_opt_class() minimumSupportedHangdogApplicationVersion];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client %{public}@ is not compatible. TVRemote application version %llu is less than the required minimum version %llu", &v15, 0x20u);
    }
  }

  else
  {
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543874;
      v16 = v6;
      v17 = 2048;
      v18 = [v5 protocolVersion];
      v19 = 2048;
      v20 = [objc_opt_class() minimumSupportedProtocolVersion];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Client %{public}@ is not compatible. Protocol version %llu is less than the required minimum version %llu", &v15, 0x20u);
    }
  }

  Error = MRMediaRemoteCreateError();
  if (a4)
  {
LABEL_5:
    v12 = Error;
    *a4 = Error;
  }

LABEL_6:

  return Error == 0;
}

- (BOOL)_connection:(id)a3 wasPreviouslySubscribedToPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [v6 subscribedPlayerPaths];
    v8 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v22 = v6;
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
          v13 = [v7 origin];
          v14 = [(MRDExternalDeviceRemoteServer *)self _origin:v13 matchesSubscribedPlayerPath:v12];

          if (v14)
          {
            v15 = [v12 client];
            v16 = +[MRClient anyClient];
            if ([v15 isEqual:v16])
            {

LABEL_16:
              v20 = 1;
              goto LABEL_17;
            }

            v17 = [v12 client];
            v18 = [v7 client];
            v19 = [v17 isEqual:v18];

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
      v6 = v22;
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

- (BOOL)_connection:(id)a3 canReceiveUpdatesForPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 subscribedPlayerPaths];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          if ([(MRDExternalDeviceRemoteServer *)self _playerPath:v7 matchesSubscribedPlayerPath:*(*(&v15 + 1) + 8 * i)])
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (BOOL)_connection:(id)a3 canReceiveUpdatesForOrigin:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v6 subscribedPlayerPaths];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v8);
          }

          if ([(MRDExternalDeviceRemoteServer *)self _origin:v7 matchesSubscribedPlayerPath:*(*(&v15 + 1) + 8 * i)])
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (void)_sendMessageFromEndpoint:(id)a3 withSource:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
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
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:a4 toClient:v14])
        {
          objc_initWeak(&location, self);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10010C324;
          v15[3] = &unk_1004BCDD8;
          v16 = v8;
          objc_copyWeak(&v19, &location);
          v17 = v14;
          v18 = v9;
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

- (void)_sendMessageFromEndpoint:(id)a3 outputDevice:(id)a4 withSource:(int64_t)a5 handler:(id)a6
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10010C4B0;
  v12[3] = &unk_1004BCE00;
  v13 = a4;
  v14 = a6;
  v10 = v14;
  v11 = v13;
  [(MRDExternalDeviceRemoteServer *)self _sendMessageFromEndpoint:a3 withSource:a5 handler:v12];
}

- (void)_sendStateUpdateMessageFromPlayerPath:(id)a3 source:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MRDExternalDeviceRemoteServer *)self clients];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:a4 toClient:v15]&& [(MRDExternalDeviceRemoteServer *)self _connection:v15 canReceiveUpdatesForPlayerPath:v8])
        {
          v16 = v9[2](v9, v15);
          if (v16)
          {
            [v15 sendMessage:v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (void)_sendStateUpdateMessageFromOrigin:(id)a3 source:(int64_t)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(MRDExternalDeviceRemoteServer *)self clients];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ([(MRDExternalDeviceRemoteServer *)self _shouldSendStateUpdateMessageFromSource:a4 toClient:v15]&& [(MRDExternalDeviceRemoteServer *)self _connection:v15 canReceiveUpdatesForOrigin:v8])
        {
          v16 = v9[2](v9, v15);
          if (v16)
          {
            [v15 sendMessage:v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }
}

- (BOOL)_shouldSendStateUpdateMessageFromSource:(int64_t)a3 toClient:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 1;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v8 = [v5 registeredToOutputDeviceUpdates];
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v8 = [v5 registeredToSystemEndpointUpdates];
      goto LABEL_10;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v8 = [v5 registeredToNowPlayingUpdates];
      goto LABEL_10;
    }

    if (a3 == 2)
    {
      v8 = [v5 registeredToVolumeUpdates];
LABEL_10:
      v7 = v8;
    }
  }

  return v7;
}

- (void)_broadcastKeyboardMessageWithState:(unint64_t)a3 text:(id)a4 attributes:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(MRDExternalDeviceRemoteServer *)self clients];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        if ([v15 registeredKeyboardUpdates])
        {
          v16 = [v15 cryptoSession];
          v17 = [MRKeyboardMessage encryptedMessageWithState:a3 text:v8 attributes:v9 usingCryptoSession:v16];

          [v15 sendMessage:v17];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }
}

- (void)_broadcastRemoteTextInputMessageWithPayload:(id)a3
{
  v4 = a3;
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
          v12 = [v4 version];
          v13 = [v4 data];
          v14 = [v11 initWithVersion:v12 data:v13];

          [v10 sendMessage:v14];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v20, 8);
}

- (id)_unpair:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MRDeviceInfo);
  [v5 setIdentifier:v4];
  v6 = [[MRCoreUtilsPairingSession alloc] initWithRole:0 device:v5];
  [v6 open];
  v7 = [v6 removePeer];
  if (v7)
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = v4;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Error unpairing device: %{public}@ error: %{public}@", &v12, 0x16u);
    }
  }

  v9 = [(MRDExternalDeviceRemoteServer *)self _clientForIdentifier:v4];
  if (v9)
  {
    Error = MRMediaRemoteCreateError();
    [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClient:v9 withError:Error];
  }

  return v7;
}

- (void)_notifyAndDisconnectClient:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v10 = v6;
  v9 = [NSArray arrayWithObjects:&v10 count:1];
  [(MRDExternalDeviceRemoteServer *)self _notifyAndDisconnectClients:v9 withError:v7 completion:0];

  objc_autoreleasePoolPop(v8);
}

- (void)_notifyAndDisconnectClients:(id)a3 withError:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("com.apple.MediaRemote.MRTelevisionRemoteServer.WorkerQueue", v12);

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10010D240;
  v17[3] = &unk_1004B6BB0;
  v14 = v9;
  v18 = v14;
  v15 = v8;
  v19 = v15;
  v20 = self;
  v16 = v10;
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

- (BOOL)_isConnectionForManagedConfigIDAllowed:(id)a3
{
  v3 = a3;
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

      v11 = [*(*(&v16 + 1) + 8 * v10) lowercaseString];
      v12 = [v3 lowercaseString];
      v13 = [v11 isEqualToString:v12];

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

- (void)_onQueue_registerDisconnectionHandler:(id)a3 forClient:(id)a4
{
  v13 = a4;
  clientDisconnectionHandlers = self->_clientDisconnectionHandlers;
  v7 = a3;
  v8 = [(NSMapTable *)clientDisconnectionHandlers objectForKey:v13];

  if (!v8)
  {
    v9 = self->_clientDisconnectionHandlers;
    v10 = +[NSMutableArray array];
    [(NSMapTable *)v9 setObject:v10 forKey:v13];
  }

  v11 = [(NSMapTable *)self->_clientDisconnectionHandlers objectForKey:v13];
  v12 = objc_retainBlock(v7);

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

- (unsigned)serverDiscoveryModeForConfiguration:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MRDExternalDeviceRemoteServer *)self clients];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) discoveryModeForConfiguration:v4];
        if (v11 > v8)
        {
          v8 = v11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)outputDevicesChanged:(id)a3 forConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(MRDExternalDeviceRemoteServer *)self clients];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 discoveryModeForConfiguration:v7])
        {
          v14[0] = _NSConcreteStackBlock;
          v14[1] = 3221225472;
          v14[2] = sub_10010E2E0;
          v14[3] = &unk_1004BCE78;
          v15 = v6;
          v16 = v7;
          v17 = v13;
          [v13 requestDestinationEndpoint:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }
}

- (void)_handleGetInputModeMessage:(id)a3 fromClient:(id)a4
{
  original = a3;
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

- (void)_handleSetInputModeMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
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

- (void)_handleDeletePairingIdentityMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
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

  sub_10000F9E4(v4, v8);
}

- (void)_handleGetPairedDevicesMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [[MRCoreUtilsPairingSession alloc] initWithRole:0 device:0];
  [v6 open];
  v7 = [v6 pairedDevices];
  serialQueue = self->_serialQueue;
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010E770;
  v14 = &unk_1004B68F0;
  v15 = v7;
  v16 = self;
  v9 = v7;
  dispatch_sync(serialQueue, &v11);
  v10 = [MRDeviceInfo dataFromDeviceInfos:v9, v11, v12, v13, v14];
  sub_10001673C(v5, "MRXPC_PAIRED_EXTERNAL_DEVICES_DATA", v10, 0);
}

- (void)_handleDeletePairedDeviceMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = [NSString stringWithCString:xpc_dictionary_get_string(v5 encoding:"MRXPC_PAIRED_EXTERNAL_DEVICE"), 4];
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

  sub_10000F9E4(v5, v9);
}

- (void)_handleSetMessageLogging:(id)a3 fromClient:(id)a4
{
  v4 = xpc_dictionary_get_BOOL(a3, "MRXPC_EXTERNAL_DEVICE_LOGGING_KEY");
  v5 = +[MRProtocolMessageLogger sharedLogger];
  [v5 setShouldVerboselyLog:v4];
}

- (void)_handleTelevisionEndpointAvailableMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_BOOL(a3, "MRXPC_TELEVISION_ENDPOINT_AVAILABLE_KEY");
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10010EBAC;
  block[3] = &unk_1004B8870;
  v13 = v7;
  v11 = v6;
  v12 = self;
  v9 = v6;
  dispatch_sync(serialQueue, block);
}

- (void)_handleSendTelevisionCustomDataMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
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

- (void)_handleDeviceInfoRequest:(id)a3 fromClient:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10010EEB8;
  v7[3] = &unk_1004BCEA0;
  v8 = a3;
  v9 = self;
  v6 = v8;
  [a4 requestConnectedDestinationEndpoint:v7];
}

- (void)_handleReceivedCommand:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 playerPath];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10010F11C;
  v14 = &unk_1004BCEC8;
  v15 = v6;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  [v9 localizeDestinationPlayerPath:v8 completion:&v11];

  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v9, v11, v12, v13, v14];
}

- (void)_handleRegisterHIDDeviceMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 deviceDescriptor];
    v17 = 138543362;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Registering HID device with descriptor: %{public}@", &v17, 0xCu);
  }

  v9 = [MRDVirtualTouchDevice alloc];
  v10 = [v5 deviceDescriptor];
  v11 = [(MRDVirtualTouchDevice *)v9 initWithDeviceDescriptor:v10];

  if (v11)
  {
    v12 = [v6 addVirtualTouchDevice:v11];
    v13 = _MRLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(MRDVirtualTouchDevice *)v11 uniqueIdentifier];
      v17 = 134217984;
      v18 = v14;
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
  [v5 replyWithMessage:v16];
}

- (void)_handleTouchEvent:(_MRHIDTouchEvent *)a3 withDeviceID:(unint64_t)a4 fromClient:(id)a5
{
  v7 = a5;
  v8 = [v7 virtualTouchDeviceWithID:a4];
  v9 = v8;
  if (v8)
  {
    v10 = *&a3->var2;
    v14[0] = *&a3->var0.var0.var0;
    v14[1] = v10;
    [v8 handleTouchEvent:v14];
  }

  v11 = [v7 gameControllerWithID:a4];
  if (v11)
  {
    v12 = MRGameControllerDigitizerCreateWithHIDTouchEvent();
    v13 = MRGameControllerEventCreateWithDigitizer();
    [v11 sendGameControllerEvent:v13];
  }
}

- (void)_handleRegisterGameControllerMessage:(id)a3 client:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [MREmulatedGameController alloc];
  v8 = [v6 properties];
  v11 = [v7 initWithProperties:v8];

  v9 = [v5 addGameController:v11];
  v10 = [[MRRegisterGameControllerResponseMessage alloc] initWithControllerID:v9];
  [v6 replyWithMessage:v10];
}

- (void)_handleClientUpdatesConfigMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 registeredToNowPlayingUpdates];
  v9 = [v7 registeredToVolumeUpdates];
  v10 = [v7 registeredToOutputDeviceUpdates];
  v11 = [v7 subscribedPlayerPaths];
  v12 = [v7 registeredToNowPlayingUpdates];
  if (v12 != [v6 nowPlayingUpdates])
  {
    [v7 setRegisteredToNowPlayingUpdates:{objc_msgSend(v6, "nowPlayingUpdates")}];
    v13 = [v6 nowPlayingUpdates];
    stateObserver = self->_stateObserver;
    if (v13)
    {
      [(MRDNowPlayingStateObserver *)stateObserver beginReceivingUpdatesForSource:1];
    }

    else
    {
      [(MRDNowPlayingStateObserver *)stateObserver stopReceivingUpdatesForSource:1];
    }
  }

  v15 = [v7 registeredToVolumeUpdates];
  if (v15 != [v6 volumeUpdates])
  {
    [v7 setRegisteredToVolumeUpdates:{objc_msgSend(v6, "volumeUpdates")}];
    v16 = [v6 volumeUpdates];
    v17 = self->_stateObserver;
    if (v16)
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
  v22 = v6;
  v23 = v7;
  v26 = v10;
  v27 = v9;
  v24 = self;
  v25 = v11;
  v28 = v8;
  v18 = v11;
  v19 = v7;
  v20 = v6;
  [v19 requestConnectedDestinationEndpoint:v21];
}

- (void)_syncStateToClient:(id)a3
{
  v7 = a3;
  if ([v7 isDestinationLocal])
  {
    v4 = objc_alloc_init(MRCompositeMessage);
    if (self->_gameControllerInputMode)
    {
      v5 = [[MRRegisterForGameControllerEventsMessage alloc] initWithInputMode:self->_gameControllerInputMode];
      [v4 addMessage:v5];
    }

    [v7 sendMessage:v4];
    v6 = +[MRDMediaRemoteServer server];
    [v6 postClientNotificationNamed:kMRTelevisionServicePairedDevicesDidChangeNotification];
  }
}

- (void)_addOutputDevicesToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 outputDevicesForEndpoint:v8];
  v15 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v11 redactVolume:1 forClient:v9 endpoint:v8];

  v12 = [MRSyncOutputDevicesMessage alloc];
  v13 = [v9 deviceInfo];

  v14 = [v12 initWithOutputDevices:v15 forClientWithDeviceInfo:v13];
  [v10 addMessage:v14];
}

- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5 completion:(id)a6
{
  v44 = a3;
  v9 = a4;
  v45 = a5;
  v10 = a6;
  v11 = +[MRUserSettings currentSettings];
  if (![v11 supportOutputContextSync])
  {
    goto LABEL_6;
  }

  v12 = [v45 deviceInfo];
  if (([v12 supportsOutputContextSync] & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [v9 deviceInfo];
  v14 = [v13 supportsOutputContextSync];

  if (v14)
  {
    [(MRDExternalDeviceRemoteServer *)self _addVolumeToMessage:v44 forClient:v9 withEndpoint:v45];
    v10[2](v10);
    goto LABEL_21;
  }

LABEL_7:
  group = dispatch_group_create();
  v15 = +[MRDMediaRemoteServer server];
  v16 = [v15 nowPlayingServer];
  v17 = [v45 origin];
  v18 = [v16 originClientForOrigin:v17];

  v19 = [v18 volumeControlCapabilities];
  if (v19)
  {
    v20 = [[MRLegacyVolumeControlCapabilitiesDidChangeMessage alloc] initWithCapabilities:v19];
    [v44 addMessage:v20];
  }

  v39 = v10;
  v21 = "v52@0:8Q16@24@32B40@44" + 19;
  if (([v9 registeredToOutputDeviceUpdates] & 1) != 0 || (objc_msgSend(v9, "supportedMessages"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isSupported:", 65), v22, (v23 & 1) == 0))
  {
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    v55 = 0u;
    obj = [v45 outputDevices];
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
          v34 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevice:v33 redactVolume:0 forClient:v9 endpoint:v45];
          dispatch_group_enter(group);
          [v33 uid];
          v36 = v35 = v9;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_100110408;
          v48[3] = &unk_1004BCF90;
          v49 = v44;
          v50 = v34;
          v51 = self;
          v52 = v33;
          v53 = group;
          v37 = v45;
          v54 = v37;
          v38 = v34;
          [v37 outputDeviceVolumeControlCapabilities:v36 queue:&_dispatch_main_q completion:v48];

          v9 = v35;
        }

        v31 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v31);
    }

    v21 = "@44";
  }

  else
  {
    [v45 outputDevices];
    v25 = v24 = v9;
    v26 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v25 redactVolume:0 forClient:v24 endpoint:v45];

    v27 = [MRSyncOutputDevicesMessage alloc];
    v28 = [v24 deviceInfo];
    v29 = [v27 initWithOutputDevices:v26 forClientWithDeviceInfo:v28];
    [v44 addMessage:v29];

    v9 = v24;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = *(v21 + 230);
  block[2] = sub_10011085C;
  block[3] = &unk_1004B79A0;
  v10 = v39;
  v47 = v39;
  dispatch_group_notify(group, &_dispatch_main_q, block);

LABEL_21:
}

- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 nowPlayingServer];
  v13 = [v10 origin];
  v14 = [v12 originClientForOrigin:v13];

  v15 = [v14 volumeControlCapabilities];
  if (v15)
  {
    v16 = [[MRLegacyVolumeControlCapabilitiesDidChangeMessage alloc] initWithCapabilities:v15];
    [v8 addMessage:v16];
  }

  v17 = [v9 outputDevicesForEndpoint:v10];
  v18 = [(MRDExternalDeviceRemoteServer *)self _createLocalizedOutputDevices:v17 redactVolume:0 forClient:v9 endpoint:v10];

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

        [(MRDExternalDeviceRemoteServer *)self _addVolumeToMessage:v8 forClient:v9 outputDevice:*(*(&v24 + 1) + 8 * v23) withEndpoint:v10, v24];
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v21);
  }
}

- (void)_addVolumeToMessage:(id)a3 forClient:(id)a4 outputDevice:(id)a5 withEndpoint:(id)a6
{
  v21 = a3;
  v7 = a5;
  v8 = [v7 volumeCapabilities];
  if (v8)
  {
    v9 = v8;
    v10 = [MRVolumeControlCapabilitiesDidChangeMessage alloc];
    v11 = [v7 groupID];
    v12 = [v7 uid];
    v13 = [v10 initWithCapabilities:v9 endpointUID:v11 outputDeviceUID:v12];
    [v21 addMessage:v13];

    if ((v9 & 2) != 0)
    {
      [v7 volume];
      v15 = v14;
      v16 = [MRVolumeDidChangeMessage alloc];
      v17 = [v7 groupID];
      v18 = [v7 uid];
      LODWORD(v19) = v15;
      v20 = [v16 initWithVolume:v17 endpointUID:v18 outputDeviceUID:v19];
      [v21 addMessage:v20];
    }
  }
}

- (BOOL)_origin:(id)a3 matchesSubscribedPlayerPath:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 origin];
  v8 = v7;
  if (v7 == v5)
  {
    v13 = 1;
LABEL_10:

    goto LABEL_11;
  }

  v9 = [v7 isEqual:v5];

  if ((v9 & 1) == 0)
  {
    v10 = [v6 origin];
    v11 = +[MROrigin anyOrigin];
    v12 = [v10 isEqual:v11];

    if ((v12 & 1) == 0)
    {
      v14 = +[MRDMediaRemoteServer server];
      v8 = [v14 nowPlayingServer];

      v15 = [v6 origin];
      if (v15)
      {
        v13 = 0;
      }

      else
      {
        v16 = [v8 activeOriginClient];
        v17 = [v16 origin];
        v13 = [v5 isEqual:v17];
      }

      goto LABEL_10;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

- (BOOL)_origin:(id)a3 client:(id)a4 matchesSubscribedPlayerPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = +[MRDMediaRemoteServer server];
  v11 = [v10 nowPlayingServer];

  v12 = [v11 originClientForOrigin:v9];

  v13 = [v8 client];

  v14 = [v13 copy];
  if ([v14 hasPlaceholder])
  {
    v15 = [v12 deviceInfo];
    [v14 resolvePlaceholdersForDeviceInfo:v15];
  }

  if (v14 == v7 || ([v14 isEqual:v7] & 1) != 0 || (+[MRClient anyClient](MRClient, "anyClient"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v14, "isEqual:", v16), v16, (v17 & 1) != 0))
  {
    v18 = 1;
  }

  else if (v14)
  {
    v18 = 0;
  }

  else
  {
    v20 = [v12 activeNowPlayingClient];
    v21 = [v20 client];
    v18 = [v7 isEqual:v21];
  }

  return v18;
}

- (BOOL)_origin:(id)a3 client:(id)a4 player:(id)a5 matchesSubscribedPlayerPath:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v12 player];
  v14 = v13;
  if (v13 == v11)
  {
    v19 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v15 = [v13 isEqual:v11];

  if ((v15 & 1) == 0)
  {
    v16 = [v12 player];
    v17 = +[MRPlayer anyPlayer];
    v18 = [v16 isEqual:v17];

    if ((v18 & 1) == 0)
    {
      v20 = +[MRDMediaRemoteServer server];
      v14 = [v20 nowPlayingServer];

      v21 = [v14 originClientForOrigin:v9];
      v22 = [v21 existingNowPlayingClientForClient:v10];
      v23 = [v22 activePlayerClient];
      v24 = [v23 player];

      v25 = [v12 player];
      if (v25)
      {
      }

      else if (!v24 || ([v11 isEqual:v24] & 1) != 0)
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

- (BOOL)_playerPath:(id)a3 matchesSubscribedPlayerPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 origin];
  v9 = [(MRDExternalDeviceRemoteServer *)self _origin:v8 matchesSubscribedPlayerPath:v7];

  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = [v6 origin];
  v11 = [v6 client];
  v12 = [(MRDExternalDeviceRemoteServer *)self _origin:v10 client:v11 matchesSubscribedPlayerPath:v7];

  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = [v6 origin];
  v14 = [v6 client];
  v15 = [v6 player];
  v16 = [(MRDExternalDeviceRemoteServer *)self _origin:v13 client:v14 player:v15 matchesSubscribedPlayerPath:v7];

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

- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 originClient:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 playerPath];
  v12 = [v11 origin];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:v9 canReceiveUpdatesForOrigin:v12];

  if (self)
  {
    v13 = [v9 deviceInfo];
    v14 = [v13 supportsSharedQueue];

    if (v14)
    {
      v15 = [v10 origin];
      if ([v15 isHosted])
      {
        v16 = +[MRDMediaRemoteServer server];
        v17 = [v16 nowPlayingServer];
        v18 = [v17 localOriginClient];
      }

      else
      {
        v18 = v10;
      }

      v19 = [v18 defaultSupportedCommands];
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_1001113E0;
      v35 = &unk_1004BCFB8;
      v20 = v8;
      v36 = v20;
      v37 = v9;
      [v19 enumerateKeysAndObjectsUsingBlock:&v32];

      v21 = [MROriginClientPropertiesMessage alloc];
      [v10 timeSincePlaying];
      v23 = [NSDate dateWithTimeIntervalSinceNow:-v22];
      v24 = [v10 devicePlaybackSessionID];
      v25 = [v21 initWithLastPlayingDate:v23 devicePlaybackSessionID:v24];
      [v20 addMessage:v25];
    }

    v26 = [v10 activeNowPlayingClient];
    if (v26)
    {
      v27 = [v9 deviceInfo];
      v28 = [v27 supportsSharedQueue];

      if (v28)
      {
        v29 = [MRSetNowPlayingClientMessage alloc];
        v30 = [v26 client];
        v31 = [v29 initWithClient:v30];

        [v8 addMessage:v31];
      }
    }
  }
}

- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 nowPlayingClient:(id)a5
{
  v21 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v8 playerPath];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:v9 canReceiveUpdatesForPlayerPath:v10];

  if (self)
  {
    v11 = [v8 client];
    if ([v11 hasAuxiliaryProperties])
    {
      v12 = [[MRUpdateClientMessage alloc] initWithClient:v11];
      [v21 addMessage:v12];
    }

    v13 = [v8 activePlayerClient];
    v14 = [v13 player];
    v15 = +[MRPlayer defaultPlayer];
    v16 = [v14 isEqual:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [MRSetNowPlayingPlayerMessage alloc];
      v18 = [v8 activePlayerClient];
      v19 = [v18 playerPath];
      v20 = [v17 initWithPlayerPath:v19];

      [v21 addMessage:v20];
    }
  }
}

- (void)_addSubscribedStateToMessage:(id)a3 forClient:(id)a4 playerClient:(id)a5
{
  v44 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 playerPath];
  LODWORD(self) = [(MRDExternalDeviceRemoteServer *)self _connection:v8 canReceiveUpdatesForPlayerPath:v10];

  if (self)
  {
    v11 = [v9 nowPlayingState];
    v12 = [v9 playerPath];
    v13 = [v8 exportNowPlayingState:v11 forPlayerPath:v12];

    v14 = [MRSetStateMessage alloc];
    v15 = [v8 deviceInfo];
    v16 = [v14 initWithNowPlayingState:v13 encoding:{objc_msgSend(v15, "preferredEncoding")}];

    [v44 addMessage:v16];
    v17 = +[MRPlaybackQueueRequest defaultPlaybackQueueRequest];
    v18 = [v8 playbackQueueRequests];
    v19 = [v16 state];
    v20 = [v19 playerPath];
    v21 = [v18 subscriptionControllerForPlayerPath:v20];

    v22 = [v16 state];
    v23 = [v22 playbackQueue];
    [v21 subscribeToPlaybackQueue:v23 forRequest:v17];

    v24 = [MRPlayerClientPropertiesMessage alloc];
    v25 = [v9 playerPath];
    v26 = [v9 lastPlayingDate];
    v27 = [v24 initWithPlayerPath:v25 lastPlayingDate:v26];
    [v44 addMessage:v27];

    v28 = [v9 player];
    if ([v28 hasAuxiliaryProperties])
    {
      v29 = [MRUpdatePlayerMessage alloc];
      v30 = [v9 playerPath];
      v31 = [v29 initWithPlayerPath:v30];

      [v44 addMessage:v31];
    }

    v32 = [v9 participantDataSource];

    if (v32)
    {
      v33 = [MRPlayerClientParticipantsUpdateMessage alloc];
      v34 = [v9 playerPath];
      v35 = [v9 participantDataSource];
      [v35 participants];
      v43 = v8;
      v36 = v28;
      v37 = v16;
      v38 = v21;
      v39 = v17;
      v41 = v40 = v13;
      v42 = [v33 initWithPlayerPath:v34 participants:v41];

      v13 = v40;
      v17 = v39;
      v21 = v38;
      v16 = v37;
      v28 = v36;
      v8 = v43;

      [v44 addMessage:v42];
    }
  }
}

- (void)_addNowPlayingStateToMessage:(id)a3 forClient:(id)a4 withEndpoint:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 nowPlayingServer];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v28 = v10;
  obj = [v10 originClients];
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
        [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:v7 forClient:v8 originClient:v15];
        v16 = [v8 deviceInfo];
        v17 = [v16 supportsSharedQueue];

        if (v17)
        {
          v32 = v14;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v33 = [v15 nowPlayingClients];
          v18 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
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
                  objc_enumerationMutation(v33);
                }

                v22 = *(*(&v38 + 1) + 8 * i);
                [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:v7 forClient:v8 nowPlayingClient:v22];
                v36 = 0u;
                v37 = 0u;
                v34 = 0u;
                v35 = 0u;
                v23 = [v22 playerClients];
                v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
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
                        objc_enumerationMutation(v23);
                      }

                      [(MRDExternalDeviceRemoteServer *)self _addSubscribedStateToMessage:v7 forClient:v8 playerClient:*(*(&v34 + 1) + 8 * j)];
                    }

                    v25 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
                  }

                  while (v25);
                }
              }

              v19 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
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

- (void)_handleRegisterVoiceInputDeviceMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 descriptor];
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Registering new virtual voice input device with descriptor: %{public}@", buf, 0xCu);
  }

  v11 = v6;
  v12 = v5;
  v9 = v5;
  v10 = v6;
  MRVirtualVoiceInputRegisterDevice();
}

- (void)_handleReceivedVoiceInputMessage:(id)a3 fromClient:(id)a4
{
  v8 = a3;
  v5 = [a4 registeredVirtualVoiceInputDevices];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    [v6 unsignedIntValue];

    v7 = [v8 buffer];
    [v8 time];
    [v8 gain];
    MRVirtualVoiceInputProcessAudioData();
  }
}

- (void)_handlePlaybackQueueRequestMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 playerPath];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1001120D4;
  v10[3] = &unk_1004BCEC8;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v9 localizeDestinationPlayerPath:v7 completion:v10];
}

- (void)_handleDeviceInfoUpdateMessage:(id)a3 fromClient:(id)a4
{
  v5 = [a3 deviceInfo];
  [(MRDExternalDeviceRemoteServer *)self _handleRemoteDeviceInfo:v5];
}

- (void)_handleSetConnectionStateMessage:(id)a3 fromClient:(id)a4
{
  v11 = a4;
  v6 = [a3 state];
  if (v6 == 3)
  {
    v8 = [v11 deviceInfo];
    v9 = [v8 identifier];
    v10 = [(MRDExternalDeviceRemoteServer *)self _unpair:v9];
  }

  else
  {
    v7 = v11;
    if (v6 != 2)
    {
      goto LABEL_6;
    }

    [(MRDExternalDeviceRemoteServer *)self _syncStateToClient:v11];
  }

  v7 = v11;
LABEL_6:
}

- (void)_handleGenericMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  if ([a4 isDestinationLocal])
  {
    v7 = [v6 key];
    if ([v7 isEqualToString:MRGenericMessageSetNameKey])
    {
      v8 = [v6 data];
      v9 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v8 bytes]);

      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Changing name to %{public}@", buf, 0xCu);
      }

      if ((MCLockdownSetDeviceName() & 1) == 0)
      {
        v11 = _MRLogForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v9;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Could not set device name to %{public}@", buf, 0xCu);
        }
      }
    }

    else if (v7)
    {
      v9 = [(MRDExternalDeviceRemoteServer *)self endpoints];
      if ([v9 count])
      {
        v25 = v7;
        v12 = MRCreateXPCMessage();
        [v6 key];
        MRAddPropertyListToXPCMessage();
        v13 = v6;
        [v6 data];
        MRAddPropertyListToXPCMessage();
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = v9;
        v14 = v9;
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

              v22 = [v19 connection];
              v23 = [v22 connection];
              xpc_connection_send_message(v23, v12);
            }

            v16 = [v14 countByEnumeratingWithState:&v26 objects:v34 count:16];
          }

          while (v16);
        }

        v6 = v13;
        v9 = v24;
        v7 = v25;
      }
    }

    else
    {
      v9 = [[MRProtocolMessage alloc] initWithUnderlyingCodableMessage:0 error:0];
      [v6 replyWithMessage:v9];
    }
  }
}

- (void)_handleLyricsEventMessage:(id)a3 fromClient:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100112988;
  v7[3] = &unk_1004BD030;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  [v5 localizeDestinationOrigin:0 completion:v7];
}

- (void)addAuthorizationCallbackForOutputDeviceUID:(id)a3 client:(id)a4
{
  v6 = a3;
  v7 = a4;
  routingDataSource = self->_routingDataSource;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100112AE4;
  v11[3] = &unk_1004BD080;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(MRDAVRoutingDataSource *)routingDataSource addAuthorizationCallbackForRouteID:v10 requestCallback:v11];
}

- (void)requestRouteAuthorizationStatusForDeviceUID:(id)a3 client:(id)a4
{
  v5 = a4;
  v6 = dispatch_get_global_queue(0, 0);
  v7 = a3;
  v8 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100112E54;
  v10[3] = &unk_1004BD0A8;
  v11 = v5;
  v9 = v5;
  [v8 searchForOutputDeviceUID:v7 timeout:@"authorization status" reason:v6 queue:v10 completion:7.0];
}

- (void)_handleModifyOutputContextRequestMessage:(id)a3 fromClient:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100112FA4;
  v8[3] = &unk_1004BCE78;
  v9 = a3;
  v10 = self;
  v11 = a4;
  v6 = v11;
  v7 = v9;
  [v6 requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v6];
}

- (void)_handleGetVolumeMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001134B4;
  v6[3] = &unk_1004B9CA8;
  v7 = a3;
  v5 = v7;
  [a4 requestDestinationEndpoint:v6];
}

- (void)_handleGetVolumeControlCapabilitiesMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100113678;
  v6[3] = &unk_1004B9CA8;
  v7 = a3;
  v5 = v7;
  [a4 requestDestinationEndpoint:v6];
}

- (void)_handleSetVolumeMessage:(id)a3 fromClient:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100113854;
  v8[3] = &unk_1004B9CA8;
  v9 = a3;
  v6 = v9;
  v7 = a4;
  [v7 requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v7];
}

- (void)_handlePlaybackSessionRequestMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"GetPlaybackSession" role:2];
  v9 = [v5 playerPath];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100113AD0;
  v12[3] = &unk_1004BD188;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v10 = v7;
  v11 = v5;
  [v6 localizeDestinationPlayerPath:v9 completion:v12];
}

- (void)_handlePlaybackSessionMigrateRequestMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 request];
  v9 = [v8 startEvent:@"SendPlaybackSession" role:3];

  v10 = [v6 playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100113E30;
  v13[3] = &unk_1004BD188;
  v16 = v9;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v11 localizeDestinationPlayerPath:v10 completion:v13];

  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v11];
}

- (void)_handlePlaybackSessionMigrateBeginMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"Prepare" role:2];
  v9 = [v5 playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100114928;
  v13[3] = &unk_1004BD2B8;
  v17 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  [v10 localizeDestinationPlayerPath:v9 completion:v13];
}

- (void)_handlePlaybackSessionMigratePostMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 request];
  v8 = [v7 startEvent:@"Post" role:2];

  v9 = [v5 playerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100114EE0;
  v11[3] = &unk_1004BD330;
  v13 = v8;
  v12 = v5;
  v10 = v5;
  [v6 localizeDestinationPlayerPath:v9 completion:v11];
}

- (void)_clearPlaybackQueueForPlayerPath:(id)a3
{
  v3 = a3;
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[ExternalDeviceServer] Clearing playback queue for %@", buf, 0xCu);
  }

  MRSystemAppPlaybackQueueCreate();
  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v11 = kMRMediaRemoteOptionSystemAppPlaybackQueueData;
  v12 = ExternalRepresentation;
  v6 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:0];
  v8 = [[MRDRemoteControlCommand alloc] initWithCommandType:122 playerPath:v3 unresolvedPlayerPath:v3 senderAppDisplayID:@"mediaremoted" optionsData:v7];
  v9 = +[MRDMediaRemoteServer server];
  v10 = [v9 remoteControlServer];
  [v10 sendRemoteControlCommand:v8 completion:&stru_1004BD370];
}

- (void)_handlePlaybackSessionMigrateEndMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v8 = [v7 startEvent:@"Finalize" role:2];
  v9 = [v5 playerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100115644;
  v13[3] = &unk_1004BD2B8;
  v17 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v7;
  [v10 localizeDestinationPlayerPath:v9 completion:v13];
}

- (void)_handleTriggerAudioFadeMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 nowPlayingServer];
  v7 = [v4 playerPath];
  v8 = [v6 resolveExistingPlayerPath:v7];

  v9 = [v4 fadeType];
  v10 = [[MRNowPlayingRequest alloc] initWithPlayerPath:v8];
  if (v9)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100115D58;
    v14[3] = &unk_1004B6FC0;
    v11 = &v15;
    v15 = v4;
    v12 = v4;
    [v10 triggerAudioFadeInWithReplyQueue:&_dispatch_main_q completion:v14];
  }

  else
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100115CD8;
    v16[3] = &unk_1004BD398;
    v11 = &v17;
    v17 = v4;
    v13 = v4;
    [v10 triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue:&_dispatch_main_q completion:v16];
  }
}

- (void)_handleSetDiscoveryModeMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 configuration];
  [v7 setDiscoveryMode:objc_msgSend(v6 forConfiguration:{"mode"), v8}];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10003511C;
  v21 = sub_100035A44;
  v22 = 0;
  v9 = self->_discoverySessions;
  objc_sync_enter(v9);
  v10 = [(NSMutableDictionary *)self->_discoverySessions objectForKeyedSubscript:v8];
  v11 = v18[5];
  v18[5] = v10;

  objc_sync_exit(v9);
  if (v18[5])
  {
    if ([v6 mode])
    {
      v12 = [v18[5] availableOutputDevices];

      if (v12)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100115FCC;
        v13[3] = &unk_1004BD3C0;
        v16 = &v17;
        v14 = v8;
        v15 = v7;
        [v15 requestDestinationEndpoint:v13];
      }
    }
  }

  [(MRDExternalDeviceRemoteServer *)self setServerDiscoveryMode:[(MRDExternalDeviceRemoteServer *)self serverDiscoveryModeForConfiguration:v8] forConfiguration:v8];
  _Block_object_dispose(&v17, 8);
}

- (void)_handleSetListeningModeMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001161D4;
  v6[3] = &unk_1004B9CA8;
  v7 = a3;
  v5 = v7;
  [a4 requestDestinationEndpoint:v6];
}

- (void)_handleSetConversationDetectionEnabledMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001163C0;
  v6[3] = &unk_1004B9CA8;
  v7 = a3;
  v5 = v7;
  [a4 requestDestinationEndpoint:v6];
}

- (void)_handleCreateHostedEndpointRequestMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MRRequestDetails alloc];
  v8 = [v6 deviceInfo];

  v9 = [v8 name];
  v10 = [v7 initWithName:@"_handleCreateHostedEndpointRequestMessage" requestID:0 reason:v9];

  v11 = [v5 outputDeviceUIDs];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100116648;
  v13[3] = &unk_1004BD3E8;
  v14 = v5;
  v12 = v5;
  [MRDCreateHostedEndpointRequest createHostedEndpointWithOutputDeviceUIDs:v11 timeout:v10 details:v13 groupUIDCompletion:30.0];
}

- (void)_handleAdjustVolumeMessage:(id)a3 fromClient:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116800;
  v8[3] = &unk_1004B9CA8;
  v9 = a3;
  v6 = v9;
  v7 = a4;
  [v7 requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v7];
}

- (void)_handleGetVolumeMutedMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116A04;
  v6[3] = &unk_1004B9CA8;
  v7 = a3;
  v5 = v7;
  [a4 requestDestinationEndpoint:v6];
}

- (void)_handleMuteVolumeMessage:(id)a3 fromClient:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100116C0C;
  v8[3] = &unk_1004B9CA8;
  v9 = a3;
  v6 = v9;
  v7 = a4;
  [v7 requestDestinationEndpoint:v8];
  [(MRDExternalDeviceRemoteServer *)self _promoteClient:v7];
}

- (void)_handleRequestGroupSessionMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116E10;
  v6[3] = &unk_1004BD478;
  v7 = a3;
  v5 = v7;
  [a4 requestConnectedDestinationEndpoint:v6];
}

- (void)_handleRequestMicrophoneConnectionMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
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

  [v4 replyWithMessage:v9];
}

- (void)_handleCreateApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 context];
  objc_initWeak(&location, v7);
  v9 = [v8 destinationPlayerPath];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001171A0;
  v13[3] = &unk_1004BD518;
  v10 = v8;
  v14 = v10;
  v11 = v6;
  v15 = v11;
  objc_copyWeak(&v18, &location);
  v16 = self;
  v12 = v7;
  v17 = v12;
  [v12 localizeDestinationPlayerPath:v9 completion:v13];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)_handleApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 context];
  v8 = [v7 destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100117820;
  v11[3] = &unk_1004BCEC8;
  v12 = v7;
  v13 = v5;
  v9 = v5;
  v10 = v7;
  [v6 localizeDestinationPlayerPath:v8 completion:v11];
}

- (void)_handleInvalidateApplicationConnectionMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 context];
  v8 = [v7 destinationPlayerPath];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100117A1C;
  v11[3] = &unk_1004BCEC8;
  v12 = v7;
  v13 = v5;
  v9 = v5;
  v10 = v7;
  [v6 localizeDestinationPlayerPath:v8 completion:v11];
}

- (void)updateASEAssertionForRemoteDeviceID:(id)a3 isAsserting:(BOOL)a4
{
  v6 = a3;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117BE0;
  block[3] = &unk_1004B8870;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(serialQueue, block);
}

- (void)_promoteClient:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100117E8C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

@end