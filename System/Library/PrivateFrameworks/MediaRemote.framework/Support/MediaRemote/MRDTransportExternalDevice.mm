@interface MRDTransportExternalDevice
- (BOOL)_maybeBatchRequest:(id)a3;
- (MRDTransportExternalDevice)initWithTransport:(id)a3;
- (MRDeviceInfo)deviceInfo;
- (MRExternalClientConnection)clientConnection;
- (MROrigin)customOrigin;
- (NSString)debugDescription;
- (NSString)description;
- (id)_onSerialQueue_deviceInfo;
- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)a3;
- (id)_onWorkerQueue_loadDeviceInfoWithUserInfo:(id)a3;
- (id)_onWorkerQueue_reRegisterCustomOriginWithUserInfo:(id)a3;
- (id)_onWorkerQueue_registerCustomOriginWithUserInfo:(id)a3;
- (id)_onWorkerQueue_syncClientStateWithUserInfo:(id)a3;
- (id)currentClientUpdatesConfigMessage;
- (id)errorForCurrentState;
- (id)externalOutputContext;
- (id)groupSessionToken;
- (id)lastConnectionError;
- (id)name;
- (id)shortDescription;
- (id)subscribedPlayerPaths;
- (id)supportedMessages;
- (unsigned)connectionState;
- (void)_activeSystemEndpointDidChangeNotification:(id)a3;
- (void)_callAllPendingCompletionsWithError:(id)a3;
- (void)_callClientConnectionStateCallback:(unsigned int)a3 previousConnectionState:(unsigned int)a4 error:(id)a5;
- (void)_callClientCustomDataCallback:(id)a3 name:(id)a4;
- (void)_callDeviceInfoCallback:(id)a3 oldDeviceInfo:(id)a4;
- (void)_cleanUpStreamsWithReason:(int64_t)a3 error:(id)a4;
- (void)_cleanUpWithReason:(int64_t)a3 error:(id)a4;
- (void)_handleApplicationConnectionProtocolMessage:(id)a3;
- (void)_handleDeviceInfoChange:(id)a3 oldDevice:(id)a4;
- (void)_handleDeviceInfoUpdateMessage:(id)a3;
- (void)_handleDiscoveryUpdateOutputDevicesMessage:(id)a3;
- (void)_handleGenericMessage:(id)a3;
- (void)_handleInvalidateApplicationConnectionMessage:(id)a3;
- (void)_handleLegacyVolumeControlCapabilitiesDidChangeMessage:(id)a3;
- (void)_handleNotificationMessage:(id)a3;
- (void)_handleOutputDevicesRemovedMessage:(id)a3;
- (void)_handleOutputDevicesUpdatedMessage:(id)a3;
- (void)_handlePlaybackQueueRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handlePlaybackSessionMigrateBeginRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handlePlaybackSessionMigrateEndRequest:(id)a3 setPlaybackSessionCommandStatus:(id)a4 error:(id)a5 forPlayerPath:(id)a6 completion:(id)a7;
- (void)_handlePlaybackSessionMigratePostRequest:(id)a3 setPlaybackSessionCommandID:(id)a4 forPlayerPath:(id)a5 completion:(id)a6;
- (void)_handlePlaybackSessionMigrateRequest:(id)a3 request:(id)a4 forPlayerPath:(id)a5 completion:(id)a6;
- (void)_handlePlaybackSessionRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5;
- (void)_handlePlayerClientParticipantsUpdateMessage:(id)a3;
- (void)_handlePresentRouteAuthorizationStatusMessage:(id)a3;
- (void)_handlePromptForRouteAuthorizationMessage:(id)a3;
- (void)_handleRemoveClientMessage:(id)a3;
- (void)_handleRemovePlayerMessage:(id)a3;
- (void)_handleSetConnectionStateMessage:(id)a3;
- (void)_handleSetDefaultSupportedCommandsMessage:(id)a3;
- (void)_handleSetNowPlayingClientMessage:(id)a3;
- (void)_handleSetNowPlayingPlayerMessage:(id)a3;
- (void)_handleSetOriginClientPropertiesMessage:(id)a3;
- (void)_handleSetPlayerClientPropertiesMessage:(id)a3;
- (void)_handleSetStateMessage:(id)a3;
- (void)_handleUpdateActiveSystemEndpoint:(id)a3;
- (void)_handleUpdateClientMessage:(id)a3;
- (void)_handleUpdateContentItemsMessage:(id)a3;
- (void)_handleUpdatePlayerMessage:(id)a3;
- (void)_handleVolumeControlCapabilitiesDidChangeMessage:(id)a3;
- (void)_handleVolumeDidChangeMessage:(id)a3;
- (void)_handleVolumeMutedDidChangeMessage:(id)a3;
- (void)_localDeviceInfoDidChangeNotification:(id)a3;
- (void)_onSerialQueue_completeGroupSessionRequestsWithIdentifier:(id)a3 error:(id)a4;
- (void)_onSerialQueue_prepareToConnectWithOptions:(unsigned int)a3 userInfo:(id)a4 connectionAttemptDetails:(id)a5 connectionHandler:(id)a6;
- (void)_onSerialQueue_prepareToDisconnect:(id)a3 userInfo:(id)a4 completion:(id)a5;
- (void)_onSerialQueue_registerOriginCallbacks;
- (void)_onWorkerQueue_disconnect:(id)a3;
- (void)_onWorkerQueue_sendBatchedMessages;
- (void)_sendClientMessage:(id)a3 completion:(id)a4;
- (void)_transportDeviceInfoDidChangeNotification:(id)a3;
- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)disconnect:(id)a3;
- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5;
- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5;
- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5;
- (void)sendButtonEvent:(_MRHIDButtonEvent)a3;
- (void)sendClientUpdatesConfigMessageWithCompletion:(id)a3;
- (void)sendCustomData:(id)a3 withName:(id)a4;
- (void)setClientConnection:(id)a3;
- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4;
- (void)setCustomOrigin:(id)a3;
- (void)setDeviceInfo:(id)a3;
- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)setName:(id)a3;
- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)setSubscribedPlayerPaths:(id)a3;
- (void)setWantsEndpointChangeNotifications:(BOOL)a3;
- (void)setWantsNowPlayingArtworkNotifications:(BOOL)a3;
- (void)setWantsNowPlayingNotifications:(BOOL)a3;
- (void)setWantsOutputDeviceNotifications:(BOOL)a3;
- (void)setWantsSystemEndpointNotifications:(BOOL)a3;
- (void)setWantsVolumeNotifications:(BOOL)a3;
- (void)verifyConnectionStatusAndMaybeDisconnect:(id)a3 completion:(id)a4;
@end

@implementation MRDTransportExternalDevice

- (unsigned)connectionState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v3;
}

- (id)name
{
  transport = [(MRDTransportExternalDevice *)self deviceInfo];
  v4 = transport;
  if (!transport)
  {
    transport = self->_transport;
  }

  v5 = [transport name];

  return v5;
}

- (id)externalOutputContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350DC;
  v10 = sub_100035A24;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C310;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)errorForCurrentState
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350DC;
  v9 = sub_100035A24;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(MRDTransportExternalDevice *)self name];
  v5 = [(MRDTransportExternalDevice *)self transport];
  v6 = [NSString stringWithFormat:@"<%@:%p %@ transport=%@>", v3, self, v4, v5];

  return v6;
}

- (MRDeviceInfo)deviceInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350DC;
  v9 = sub_100035A24;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (id)_onSerialQueue_deviceInfo
{
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    v3 = deviceInfo;
  }

  else
  {
    v3 = [(MRExternalDeviceTransport *)self->_transport deviceInfo];
  }

  return v3;
}

- (MRDTransportExternalDevice)initWithTransport:(id)a3
{
  v5 = a3;
  v30.receiver = self;
  v30.super_class = MRDTransportExternalDevice;
  v6 = [(MRDTransportExternalDevice *)&v30 _init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transport, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.SerialQueue", v8);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.WorkerQueue", v11);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.NotificationQueue", v14);
    notificationQueue = v7->_notificationQueue;
    v7->_notificationQueue = v15;

    v7->_connectionState = 3;
    v7->_reconnectionAttemptCount = 0;
    v7->_connectionOptions = 0;
    v7->_forceReconnectOnConnectionFailure = 0;
    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];
    connectionUID = v7->_connectionUID;
    v7->_connectionUID = v18;

    v20 = [MRExternalOutputContextDataSource alloc];
    v21 = [NSString alloc];
    v22 = [(MRDTransportExternalDevice *)v7 uid];
    v23 = [(MRDTransportExternalDevice *)v7 name];
    v24 = [v21 initWithFormat:@"%@-%@", v22, v23];
    v25 = [v20 initWithUniqueIdentifier:v24];
    externalOutputContext = v7->_externalOutputContext;
    v7->_externalOutputContext = v25;

    [(MRExternalOutputContextDataSource *)v7->_externalOutputContext setShouldLog:1];
    [(MRExternalOutputContextDataSource *)v7->_externalOutputContext setNotificationQueue:v7->_notificationQueue];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v7 selector:"_localDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
    [v27 addObserver:v7 selector:"_transportDeviceInfoDidChangeNotification:" name:MRExternalDeviceTransportDeviceInfoDidChangeNotification object:v7->_transport];
    [v27 addObserver:v7 selector:"_activeSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
    v28 = [(MRExternalDeviceTransport *)v7->_transport deviceInfo];
    [(MRDTransportExternalDevice *)v7 _handleDeviceInfoChange:v28 oldDevice:0];
  }

  return v7;
}

- (void)dealloc
{
  [(MRDTransportExternalDevice *)self _cleanUpWithReason:1 error:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MRExternalClientConnection *)self->_clientConnection setDelegate:0];
  v4.receiver = self;
  v4.super_class = MRDTransportExternalDevice;
  [(MRDTransportExternalDevice *)&v4 dealloc];
}

- (id)shortDescription
{
  v2 = [[NSString alloc] initWithFormat:@"%@:%p", objc_opt_class(), self];

  return v2;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(MRDTransportExternalDevice *)self name];
  v5 = [(MRDTransportExternalDevice *)self customOrigin];
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  v7 = [(MRDTransportExternalDevice *)self transport];
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  v9 = [(MRDTransportExternalDevice *)self clientConnection];
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  v11 = [NSString stringWithFormat:@"<%@:%p {\n    device=%@\n    origin=%@\n    transport=%@\n    connection=%@\n}>", v3, self, v4, v6, v8, v10];

  return v11;
}

- (id)groupSessionToken
{
  v3 = [(MRDTransportExternalDevice *)self deviceInfo];
  v4 = [v3 groupSessionToken];
  v5 = [v4 equivalentMediaIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = +[MRSharedSettings currentSettings];
    v8 = [v7 supportGroupSessionHome];

    if (!v8)
    {
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [(MRDTransportExternalDevice *)self deviceInfo];
  v9 = [v10 groupSessionToken];

LABEL_6:

  return v9;
}

- (void)setWantsNowPlayingNotifications:(BOOL)a3
{
  if (self->_wantsNowPlayingNotifications != a3)
  {
    self->_wantsNowPlayingNotifications = a3;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsNowPlayingArtworkNotifications:(BOOL)a3
{
  if (self->_wantsNowPlayingArtworkNotifications != a3)
  {
    self->_wantsNowPlayingArtworkNotifications = a3;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsVolumeNotifications:(BOOL)a3
{
  if (self->_wantsVolumeNotifications != a3)
  {
    self->_wantsVolumeNotifications = a3;
    MRMediaRemoteSetWantsVolumeControlNotifications();

    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsOutputDeviceNotifications:(BOOL)a3
{
  if (self->_wantsOutputDeviceNotifications != a3)
  {
    self->_wantsOutputDeviceNotifications = a3;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsEndpointChangeNotifications:(BOOL)a3
{
  if (self->_wantsEndpointChangeNotifications != a3)
  {
    self->_wantsEndpointChangeNotifications = a3;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsSystemEndpointNotifications:(BOOL)a3
{
  if (self->_wantsSystemEndpointNotifications != a3)
  {
    self->_wantsSystemEndpointNotifications = a3;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (id)subscribedPlayerPaths
{
  v3 = [(MRExternalDeviceTransport *)self->_transport subscribedPlayerPaths];
  v4 = [v3 copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NSArray *)self->_subscribedPlayerPaths copy];
  }

  v7 = v6;

  return v7;
}

- (void)setSubscribedPlayerPaths:(id)a3
{
  v4 = a3;
  subscribedPlayerPaths = self->_subscribedPlayerPaths;
  if (subscribedPlayerPaths != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)subscribedPlayerPaths isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_subscribedPlayerPaths;
      self->_subscribedPlayerPaths = v7;

      [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
      v4 = v9;
    }
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  v6 = a3;
  v7 = [v6 UTF8String];
  v8 = [v6 length];

  v12 = [NSData dataWithBytes:v7 length:v8];
  v9 = [(MRDTransportExternalDevice *)self clientConnection];
  v10 = [MRGenericMessage alloc];
  v11 = [v10 initWithKey:MRGenericMessageSetNameKey data:v12];
  [v9 sendMessage:v11];
}

- (void)setClientConnection:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (MRExternalClientConnection)clientConnection
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350DC;
  v9 = sub_100035A24;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setCustomOrigin:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (MROrigin)customOrigin
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000350DC;
  v9 = sub_100035A24;
  v10 = 0;
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (void)setDeviceInfo:(id)a3
{
  v4 = [a3 copy];
  serialQueue = self->_serialQueue;
  v7 = v4;
  v6 = v4;
  msv_dispatch_sync_on_queue();
}

- (id)supportedMessages
{
  v2 = [(MRDTransportExternalDevice *)self clientConnection];
  v3 = [v2 supportedMessages];

  return v3;
}

- (void)sendButtonEvent:(_MRHIDButtonEvent)a3
{
  v3 = *&a3.down;
  v4 = *&a3.usagePage;
  v6 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (!v6)
  {
    v7 = [[MRSendButtonEventMessage alloc] initWithButtonEvent:{v4, v3}];
    v8 = [(MRDTransportExternalDevice *)self clientConnection];
    [v8 sendMessage:v7];

    v6 = 0;
  }
}

- (id)lastConnectionError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350DC;
  v10 = sub_100035A24;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D4DB8;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onSerialQueue_prepareToConnectWithOptions:(unsigned int)a3 userInfo:(id)a4 connectionAttemptDetails:(id)a5 connectionHandler:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MRBlockGuard alloc];
  v14 = [NSString alloc];
  v15 = [v11 requestID];
  v16 = [v11 reason];
  v17 = [v14 initWithFormat:@"%@<%@:%@>", @"TransportExternalDevice.connectWithOptions", v15, v16];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000D6A94;
  v38[3] = &unk_1004B6FE8;
  v18 = v12;
  v39 = v18;
  v19 = [v13 initWithTimeout:v17 reason:v38 handler:30.0];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000D6AA4;
  v35[3] = &unk_1004B9BE0;
  v20 = v19;
  v36 = v20;
  v21 = v18;
  v37 = v21;
  v22 = objc_retainBlock(v35);
  connectionState = self->_connectionState;
  if (connectionState == 1)
  {
    v26 = [[NSString alloc] initWithFormat:@"Connection already in progress, batching connection attempt %@", self->_pendingConnectCompletionHandlers];
    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v11 requestID];
      *buf = 138543874;
      v41 = @"TransportExternalDevice.connectWithOptions";
      v42 = 2114;
      v43 = v28;
      v44 = 2112;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    if ((a3 & 1) != 0 && (self->_connectionOptions & 1) == 0)
    {
      v29 = _MRLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v11 requestID];
        *buf = 138543874;
        v41 = @"TransportExternalDevice.connectWithOptions";
        v42 = 2114;
        v43 = v32;
        v44 = 2112;
        v45 = @"AuthUpgrade required";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      self->_forceReconnectOnConnectionFailure = 1;
      self->_connectionOptions = a3;
    }

    [v20 disarm];
  }

  else if (connectionState == 2)
  {
    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v11 requestID];
      *buf = 138543874;
      v41 = @"TransportExternalDevice.connectWithOptions";
      v42 = 2114;
      v43 = v25;
      v44 = 2112;
      v45 = @"Already Connected";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    (v22[2])(v22, 0);
  }

  else
  {
    self->_connectionOptions = a3;
    [(MRDTransportExternalDevice *)self setConnectionState:1 error:0];
    workerQueue = self->_workerQueue;
    v33 = v10;
    v34 = v22;
    v31 = MRCreateDonatedQosBlock();
    dispatch_async(workerQueue, v31);
  }
}

- (void)_onWorkerQueue_disconnect:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workerQueue);
  [(MRDTransportExternalDevice *)self _onWorkerQueue_sendBatchedMessages];
  [(MRExternalDeviceTransport *)self->_transport resetWithError:v4];
  [(MRDTransportExternalDevice *)self _cleanUpWithReason:3 error:v4];
  if (self->_connectionState != 3)
  {
    [(MRDTransportExternalDevice *)self setConnectionState:3 error:v4];
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D74E8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_onSerialQueue_prepareToDisconnect:(id)a3 userInfo:(id)a4 completion:(id)a5
{
  v8 = a3;
  v59 = a5;
  serialQueue = self->_serialQueue;
  v10 = a4;
  dispatch_assert_queue_V2(serialQueue);
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1003A811C();
  }

  v12 = [v10 objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
  v13 = [v10 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v14 = [v10 objectForKeyedSubscript:MRExternalDeviceConnectionClientBundleIDUserInfoKey];

  v15 = [v8 domain];
  v16 = [v15 isEqualToString:kMRMediaRemoteFrameworkErrorDomain];

  if (v16)
  {
    v17 = [v8 code];
  }

  else
  {
    v17 = 1;
  }

  v61 = v12;
  v18 = v13;
  v19 = v14;
  if (qword_100529368 != -1)
  {
    sub_1003A818C();
  }

  v20 = qword_100529360;
  v21 = [NSNumber numberWithUnsignedInt:v17];
  LOBYTE(v20) = [v20 containsObject:v21];

  v22 = v19;
  v60 = v18;
  v23 = v18;
  v24 = v61;
  if ((v20 & 1) == 0)
  {
    if (self->_forceReconnectOnConnectionFailure)
    {
      v25 = 1;
      v26 = v18;
    }

    else
    {
      v26 = v18;
      v25 = v17 != 119 && self->_connectionRecoveryBehavior == 1 && [(MRExternalDeviceTransport *)self->_transport supportsReconnection]&& self->_reconnectionAttemptCount == 0;
    }

    v23 = v26;
    if (!v26)
    {
      v27 = [NSString alloc];
      if (self->_forceReconnectOnConnectionFailure)
      {
        v28 = @"authUpgrade";
      }

      else
      {
        connectionRecoveryBehavior = self->_connectionRecoveryBehavior;
        v30 = @"?";
        if (connectionRecoveryBehavior == 1)
        {
          v30 = @"AutoRetry";
        }

        if (connectionRecoveryBehavior)
        {
          v28 = v30;
        }

        else
        {
          v28 = @"None";
        }
      }

      v23 = [v27 initWithFormat:@"attemptReconnection due to <%@>", v28];
    }

    v24 = v61;
    if (!v61)
    {
      v31 = +[NSUUID UUID];
      v24 = [v31 UUIDString];
    }

    v22 = v19;
    if (!v19)
    {
      v32 = +[MRDMediaRemoteServer server];
      v33 = [v32 daemonClient];
      v22 = [v33 bundleIdentifier];
    }

    [(NSDate *)self->_connectionStateTimestamp timeIntervalSinceNow];
    reconnectionAttemptCount = self->_reconnectionAttemptCount;
    v73 = _NSConcreteStackBlock;
    v74 = 3221225472;
    v75 = sub_1000D7DCC;
    v76 = &unk_1004BBAB0;
    v77 = -v35;
    v78 = reconnectionAttemptCount;
    v79 = v25;
    MRAnalyticsSendEvent();
    v36 = _MRLogForCategory();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v37)
      {
        v38 = self->_reconnectionAttemptCount + 1;
        *buf = 138543874;
        v81 = self;
        v82 = 2048;
        v83 = v38;
        v84 = 2048;
        v85 = 1;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to external device %{public}@ (retry %llu out of %llu)", buf, 0x20u);
      }

      ++self->_reconnectionAttemptCount;
      self->_forceReconnectOnConnectionFailure = 0;
      v39 = +[NSDate now];
      v40 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.attemptReconnection", v24];
      v41 = [(MRDTransportExternalDevice *)self shortDescription];

      if (v41)
      {
        v42 = [(MRDTransportExternalDevice *)self shortDescription];
        [(MRDTransportExternalDevice *)v40 appendFormat:@" for %@", v42];
      }

      v43 = _MRLogForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v81 = v40;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
      }

      [(MRDTransportExternalDevice *)self setConnectionState:1 error:0];
      v44 = [[NSMutableArray alloc] initWithArray:self->_batchedRequestsDuringReconnectionAttempt];
      batchedRequestsDuringReconnectionAttempt = self->_batchedRequestsDuringReconnectionAttempt;
      self->_batchedRequestsDuringReconnectionAttempt = v44;

      v46 = dispatch_time(0, 3500000000);
      workerQueue = self->_workerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D7EE4;
      block[3] = &unk_1004BBAD8;
      v23 = v23;
      v67 = v23;
      v24 = v24;
      v68 = v24;
      v22 = v22;
      v69 = v22;
      v70 = self;
      v71 = v39;
      v72 = v59;
      v48 = v59;
      v49 = v39;
      dispatch_after(v46, workerQueue, block);

      goto LABEL_46;
    }

    if (v37)
    {
      v50 = self->_connectionRecoveryBehavior;
      v51 = self->_reconnectionAttemptCount;
      *buf = 138544130;
      if (v50 == 1)
      {
        v52 = "retry";
      }

      else
      {
        v52 = "none";
      }

      v81 = self;
      v82 = 2114;
      v83 = v8;
      v84 = 2082;
      v85 = v52;
      v86 = 2048;
      v87 = v51;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not attempting reconnect of external device %{public}@ (error = %{public}@, recovery behavior = %{public}s, attempt count = %llu)", buf, 0x2Au);
    }
  }

  powerLogIntervalTimer = self->_powerLogIntervalTimer;
  self->_powerLogIntervalTimer = 0;

  if (self->_originalConnectionStartDate)
  {
    v54 = +[NSMutableDictionary dictionary];
    [v54 setObject:self->_connectionUID forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionID];
    [v54 setObject:&__kCFBooleanFalse forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionIsActive];
    v55 = +[MRPowerLogger sharedLogger];
    [v55 logEvent:MRPowerLogEventRemoteControlSession withInfo:v54];
  }

  v56 = [(MRExternalClientConnection *)self->_clientConnection cryptoSession];
  [v56 close];

  self->_disconnecting = 1;
  objc_initWeak(buf, self);
  v57 = self->_workerQueue;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000D82AC;
  v62[3] = &unk_1004BBB00;
  objc_copyWeak(&v65, buf);
  v63 = v8;
  v64 = v59;
  v58 = v59;
  dispatch_async(v57, v62);

  objc_destroyWeak(&v65);
  objc_destroyWeak(buf);
LABEL_46:
  [(MRDTransportExternalDevice *)self _onSerialQueue_completeGroupSessionRequestsWithIdentifier:0 error:v8];
}

- (void)_callAllPendingCompletionsWithError:(id)a3
{
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000350DC;
  v30 = sub_100035A24;
  v31 = 0;
  serialQueue = self->_serialQueue;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000D860C;
  v23 = &unk_1004B6D30;
  v24 = self;
  v25 = &v26;
  msv_dispatch_sync_on_queue();
  if ([v27[5] count] >= 2)
  {
    v6 = [NSString alloc];
    v7 = [v6 initWithFormat:@"Calling batched completions %@", v27[5]];
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v27[5] firstObject];
      v10 = [v9 requestID];
      *buf = 138543874;
      v34 = @"TransportExternalDevice.connectWithOptions";
      v35 = 2114;
      v36 = v10;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v27[5];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v32 count:16];
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [*(*(&v16 + 1) + 8 * v14) completion];
        (v15)[2](v15, v4);

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v32 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v26, 8);
}

- (void)disconnect:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D870C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)verifyConnectionStatusAndMaybeDisconnect:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D8824;
  v9[3] = &unk_1004BBB28;
  v8 = v7;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(MRDTransportExternalDevice *)self ping:v9 callback:self->_workerQueue withQueue:7.0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)sendCustomData:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v8)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8274();
    }
  }

  else
  {
    v10 = [[MRGenericMessage alloc] initWithKey:v7 data:v6];
    v11 = [(MRDTransportExternalDevice *)self clientConnection];
    [v11 sendMessage:v10];
  }
}

- (void)ping:(double)a3 callback:(id)a4 withQueue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D8BC0;
  v23[3] = &unk_1004BAD88;
  v10 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BBB48];
  v24 = v10;
  v11 = v8;
  v26 = v11;
  v12 = v9;
  v25 = v12;
  v13 = objc_retainBlock(v23);
  v14 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v14)
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1003A82DC();
    }

    (v13[2])(v13, v14);
  }

  else
  {
    v16 = [[MRBlockGuard alloc] initWithTimeout:@"ping" reason:v13 handler:a3];
    v17 = [[MRGenericMessage alloc] initWithKey:0 data:0];
    v18 = [(MRDTransportExternalDevice *)self clientConnection];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000D8C90;
    v20[3] = &unk_1004BBB70;
    v21 = v16;
    v22 = v13;
    v19 = v16;
    [v18 sendMessage:v17 reply:v20];
  }
}

- (id)currentClientUpdatesConfigMessage
{
  v3 = objc_alloc_init(MRProtocolMessageOptions);
  [v3 setPriority:5];
  [v3 setWaking:1];
  v4 = [MRClientUpdatesConfigMessage alloc];
  v5 = [(MRDTransportExternalDevice *)self wantsNowPlayingNotifications];
  v6 = [(MRDTransportExternalDevice *)self wantsNowPlayingArtworkNotifications];
  v7 = [(MRDTransportExternalDevice *)self wantsVolumeNotifications];
  v8 = [(MRDTransportExternalDevice *)self wantsOutputDeviceNotifications];
  v9 = [(MRDTransportExternalDevice *)self wantsSystemEndpointNotifications];
  v10 = [(MRDTransportExternalDevice *)self subscribedPlayerPaths];
  v11 = [v4 initWithNowPlayingUpdates:v5 artworkUpdates:v6 volumeUpdates:v7 keyboardUpdates:0 outputDeviceUpdates:v8 systemEndpointUpdates:v9 subscribedPlayerPaths:v10];

  [v11 setTransportOptions:v3];

  return v11;
}

- (void)sendClientUpdatesConfigMessageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRDTransportExternalDevice *)self deviceInfo];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D9064;
  v17[3] = &unk_1004B9498;
  objc_copyWeak(&v19, &location);
  v6 = v4;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  v8 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v8)
  {
    (v7[2])(v7, v8);
  }

  else
  {
    self->_isClientSyncActive = 1;
    SharedQueueVersion = MRPairedDeviceGetSharedQueueVersion();
    if (v6 && SharedQueueVersion >= 2)
    {
      v10 = [(MRDTransportExternalDevice *)self clientConnection];
      v11 = [(MRDTransportExternalDevice *)self currentClientUpdatesConfigMessage];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000D9170;
      v15[3] = &unk_1004BBBC0;
      v16 = v7;
      [v10 sendMessage:v11 reply:v15];

      Error = v16;
    }

    else
    {
      v13 = [(MRDTransportExternalDevice *)self clientConnection];
      v14 = [(MRDTransportExternalDevice *)self currentClientUpdatesConfigMessage];
      [v13 sendMessage:v14];

      Error = MRMediaRemoteCreateError();
      (v7[2])(v7, Error);
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setOutputDeviceVolume:(float)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000D9530;
  v33[3] = &unk_1004B9DE8;
  v15 = a7;
  v35 = v15;
  v16 = v14;
  v34 = v16;
  v17 = objc_retainBlock(v33);
  v18 = self;
  v19 = [(MRDTransportExternalDevice *)v18 errorForCurrentState];
  if (v19)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000D9658;
    v25[3] = &unk_1004BBBE8;
    v25[4] = v18;
    v30 = a3;
    v26 = v12;
    v27 = v13;
    v28 = v16;
    v29 = v15;
    if (![(MRDTransportExternalDevice *)v18 _maybeBatchRequest:v25])
    {
      (v17[2])(v17, v19);
    }
  }

  else
  {
    v20 = objc_alloc_init(MRProtocolMessageOptions);
    [v20 setPriority:4];
    [v20 setWaking:1];
    v21 = [MRSetVolumeMessage alloc];
    *&v22 = a3;
    v23 = [v21 initWithVolume:v12 outputDeviceUID:v13 details:v22];
    [v23 setTransportOptions:v20];
    v24 = [(MRDTransportExternalDevice *)v18 clientConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000D95F8;
    v31[3] = &unk_1004BBBC0;
    v32 = v17;
    [v24 sendMessage:v23 reply:v31];
  }
}

- (void)adjustOutputDeviceVolume:(int64_t)a3 outputDeviceUID:(id)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000D9CE0;
  v31[3] = &unk_1004B9DE8;
  v15 = a7;
  v33 = v15;
  v16 = v14;
  v32 = v16;
  v17 = objc_retainBlock(v31);
  v18 = self;
  v19 = [(MRDTransportExternalDevice *)v18 errorForCurrentState];
  if (v19)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D9E08;
    v23[3] = &unk_1004BBC10;
    v23[4] = v18;
    v28 = a3;
    v24 = v12;
    v25 = v13;
    v26 = v16;
    v27 = v15;
    if (![(MRDTransportExternalDevice *)v18 _maybeBatchRequest:v23])
    {
      (v17[2])(v17, v19);
    }
  }

  else
  {
    v20 = objc_alloc_init(MRProtocolMessageOptions);
    [v20 setPriority:4];
    [v20 setWaking:1];
    v21 = [[MRAdjustVolumeMessage alloc] initWithAdjustment:a3 outputDeviceUID:v12 details:v13];
    [v21 setTransportOptions:v20];
    v22 = [(MRDTransportExternalDevice *)v18 clientConnection];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000D9DA8;
    v29[3] = &unk_1004BBBC0;
    v30 = v17;
    [v22 sendMessage:v21 reply:v29];
  }
}

- (void)outputDeviceVolume:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D9FD0;
  v18[3] = &unk_1004BBC38;
  v10 = a5;
  v20 = v10;
  v11 = v9;
  v19 = v11;
  v12 = objc_retainBlock(v18);
  v13 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v13)
  {
    (v12[2])(v12, v13, 0.0);
  }

  else
  {
    v14 = [(MRDTransportExternalDevice *)self clientConnection];
    v15 = [[MRGetVolumeMessage alloc] initWithOutputDeviceUID:v8];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000DA138;
    v16[3] = &unk_1004BBBC0;
    v17 = v12;
    [v14 sendMessage:v15 timeout:v16 reply:63.0];
  }
}

- (void)outputDeviceVolumeControlCapabilities:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DA44C;
  v25[3] = &unk_1004BBC60;
  v10 = a5;
  v27 = v10;
  v11 = v9;
  v26 = v11;
  v12 = objc_retainBlock(v25);
  v13 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v13)
  {
    (v12[2])(v12, 0, v13);
  }

  else
  {
    v14 = [(MRDTransportExternalDevice *)self clientConnection];
    v15 = [v14 supportedMessages];
    v16 = [v15 isSupported:62];

    if (v16)
    {
      v17 = [(MRDTransportExternalDevice *)self clientConnection];
      v18 = [[MRGetVolumeControlCapabilitiesMessage alloc] initWithOutputDeviceUID:v8];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000DA5AC;
      v23[3] = &unk_1004BBBC0;
      v24 = v12;
      [v17 sendMessage:v18 timeout:v23 reply:63.0];

      v19 = v24;
    }

    else
    {
      v20 = [(MRDTransportExternalDevice *)self customOrigin];
      v21 = dispatch_get_global_queue(0, 0);
      v22 = v12;
      MRMediaRemoteGetPickedRoutedVolumeControlCapabilities();

      v19 = v22;
    }
  }
}

- (void)setListeningMode:(id)a3 outputDeviceUID:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DA820;
  v21[3] = &unk_1004B9DE8;
  v13 = a6;
  v23 = v13;
  v14 = v12;
  v22 = v14;
  v15 = objc_retainBlock(v21);
  v16 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v16)
  {
    (v15[2])(v15, v16);
  }

  else
  {
    v17 = [[MRSetListeningModeMessage alloc] initWithListeningMode:v10 outputDeviceUID:v11];
    v18 = [(MRDTransportExternalDevice *)self clientConnection];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DA974;
    v19[3] = &unk_1004BBBC0;
    v20 = v15;
    [v18 sendMessage:v17 reply:v19];
  }
}

- (void)modifyTopologyWithRequest:(id)a3 withReplyQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000DAFF0;
  v28[3] = &unk_1004B9DE8;
  v10 = a5;
  v30 = v10;
  v11 = v9;
  v29 = v11;
  v12 = objc_retainBlock(v28);
  v13 = self;
  v14 = [(MRDTransportExternalDevice *)v13 errorForCurrentState];
  if (v14)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000DB118;
    v22[3] = &unk_1004B6BB0;
    v22[4] = v13;
    v23 = v8;
    v24 = v11;
    v25 = v10;
    if (![(MRDTransportExternalDevice *)v13 _maybeBatchRequest:v22])
    {
      (v12[2])(v12, v14);
    }
  }

  else
  {
    if ([v8 type] == 1)
    {
      v15 = +[MRDeviceInfoRequest localDeviceInfo];
      v16 = [v8 outputDeviceUIDs];
      v17 = [v15 deviceUID];
      v18 = [v16 containsObject:v17];

      if (v18)
      {
        v19 = MRMediaRemoteAirPlayReceiverCopyAuthorizationString();
        [v8 setPassword:v19];
      }
    }

    v20 = [[MRModifyOutputContextRequestMessage alloc] initWithRequest:v8];
    v21 = [(MRDTransportExternalDevice *)v13 clientConnection];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000DB0B8;
    v26[3] = &unk_1004BBBC0;
    v27 = v12;
    [v21 sendMessage:v20 reply:v26];
  }
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)a3 details:(id)a4 queue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000DB384;
  v27[3] = &unk_1004BBCB0;
  v13 = a6;
  v29 = v13;
  v14 = v12;
  v28 = v14;
  v15 = objc_retainBlock(v27);
  v16 = self;
  v17 = [(MRDTransportExternalDevice *)v16 errorForCurrentState];
  if (v17)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DB598;
    v20[3] = &unk_1004BBCD8;
    v20[4] = v16;
    v21 = v10;
    v22 = v11;
    v23 = v14;
    v24 = v13;
    if (![(MRDTransportExternalDevice *)v16 _maybeBatchRequest:v20])
    {
      (v15[2])(v15, 0, v17);
    }
  }

  else
  {
    v18 = [[MRCreateHostedEndpointRequestMessage alloc] initWithOutputDeviceUIDs:v10];
    v19 = [(MRDTransportExternalDevice *)v16 clientConnection];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000DB478;
    v25[3] = &unk_1004BBBC0;
    v26 = v15;
    [v19 sendMessage:v18 reply:v25];
  }
}

- (void)removeFromParentGroup:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB800;
  v23[3] = &unk_1004B9DE8;
  v10 = a5;
  v25 = v10;
  v11 = v9;
  v24 = v11;
  v12 = objc_retainBlock(v23);
  v13 = self;
  v14 = [(MRDTransportExternalDevice *)v13 errorForCurrentState];
  if (v14)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DB954;
    v19[3] = &unk_1004B6BB0;
    v19[4] = v13;
    v20 = v8;
    v21 = v11;
    v22 = v10;
    if (![(MRDTransportExternalDevice *)v13 _maybeBatchRequest:v19])
    {
      (v12[2])(v12, v14);
    }
  }

  else
  {
    v15 = [(MRDTransportExternalDevice *)v13 clientConnection];
    v16 = [MRRemoveFromParentGroupMessage alloc];
    v26 = v8;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
    v18 = [v16 initWithOutputDeviceUIDs:v17];
    [v15 sendMessage:v18];

    (v12[2])(v12, 0);
  }
}

- (void)requestGroupSessionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DBB7C;
  v25[3] = &unk_1004BAD10;
  v11 = v9;
  v26 = v11;
  v12 = v10;
  v27 = v12;
  v13 = objc_retainBlock(v25);
  v14 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v14)
  {
    (v13[2])(v13, 0, v14);
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DBC68;
    block[3] = &unk_1004BBD00;
    block[4] = self;
    v20 = &v21;
    v19 = v13;
    dispatch_sync(serialQueue, block);
    if (*(v22 + 24) == 1)
    {
      v16 = [[MRRequestGroupSessionMessage alloc] initWithDetails:v8];
      v17 = [(MRDTransportExternalDevice *)self clientConnection];
      [v17 sendMessage:v16];
    }

    _Block_object_dispose(&v21, 8);
  }
}

- (void)requestMicrophoneConnectionWithDetails:(id)a3 queue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000DC318;
  v39[3] = &unk_1004BBD50;
  v11 = v9;
  v40 = v11;
  v12 = v10;
  v41 = v12;
  v13 = objc_retainBlock(v39);
  v14 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v14)
  {
    (v13[2])(v13, 0, v14);
  }

  else if (_os_feature_enabled_impl())
  {
    v31 = v8;
    v15 = +[MRDMediaRemoteServer server];
    [v15 loadLocalRapportDeviceInfo];

    v16 = +[MRDMediaRemoteServer server];
    v17 = [v16 sharedCompanionLinkClient];
    v18 = [v17 localDevice];
    v19 = [v18 idsDeviceIdentifier];

    if (v19)
    {
      v20 = [MRBlockGuard alloc];
      serialQueue = self->_serialQueue;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000DC3E8;
      v37[3] = &unk_1004B6FE8;
      v22 = v13;
      v38 = v22;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000DC400;
      v34[3] = &unk_1004BBD50;
      v35 = [v20 initWithTimeout:@"requestMicrophoneConnection" reason:serialQueue queue:v37 handler:30.0];
      v36 = v22;
      v23 = v35;
      v24 = objc_retainBlock(v34);
      v25 = [[MRMicrophoneConnectionRequestMessage alloc] initWithDetails:v31 rapportIdentifier:v19];
      v26 = [(MRDTransportExternalDevice *)self clientConnection];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000DC46C;
      v32[3] = &unk_1004BBBC0;
      v33 = v24;
      v27 = v24;
      [v26 sendMessage:v25 reply:v32];

      v28 = v38;
    }

    else
    {
      v28 = [[NSError alloc] initWithMRError:100 format:@"rapport identifier was nil"];
      (v13[2])(v13, 0, v28);
    }

    v8 = v31;
  }

  else
  {
    v29 = _MRLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1003A834C(v29);
    }

    v30 = [[NSError alloc] initWithMRError:100 format:@"Feature flag disabled"];
    (v13[2])(v13, 0, v30);
  }
}

- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4
{
  v5 = a4;
  v6 = [v5 type];
  v7 = v6;
  if (v6 > 103)
  {
    if (v6 <= 128)
    {
      switch(v6)
      {
        case 'h':
          [(MRDTransportExternalDevice *)self _handleSetPlayerClientPropertiesMessage:v5];
          break;
        case 'i':
          [(MRDTransportExternalDevice *)self _handleSetOriginClientPropertiesMessage:v5];
          break;
        case 'm':
          [(MRDTransportExternalDevice *)self _handleDiscoveryUpdateOutputDevicesMessage:v5];
          break;
      }
    }

    else if (v6 > 134)
    {
      if (v6 == 135)
      {
        [(MRDTransportExternalDevice *)self _handleApplicationConnectionProtocolMessage:v5];
      }

      else if (v6 == 136)
      {
        [(MRDTransportExternalDevice *)self _handleInvalidateApplicationConnectionMessage:v5];
      }
    }

    else if (v6 == 129)
    {
      [(MRDTransportExternalDevice *)self _handleVolumeMutedDidChangeMessage:v5];
    }

    else if (v6 == 131)
    {
      [(MRDTransportExternalDevice *)self _handlePlayerClientParticipantsUpdateMessage:v5];
    }
  }

  else if (v6 <= 16)
  {
    if (v6)
    {
      if (v6 == 4)
      {
        [(MRDTransportExternalDevice *)self _handleSetStateMessage:v5];
      }

      else if (v6 == 11)
      {
        [(MRDTransportExternalDevice *)self _handleNotificationMessage:v5];
      }
    }

    else
    {
LABEL_14:
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [v5 uniqueIdentifier];
        v10 = [v5 replyIdentifier];
        v11 = 134218754;
        v12 = v7;
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2114;
        v18 = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown message type=%ld identifier=%@ replyIdentifier=%@ attempting to be handled for device %{public}@", &v11, 0x2Au);
      }
    }
  }

  else
  {
    switch(v6)
    {
      case '!':
      case '""':
      case '9':
        goto LABEL_14;
      case '#':
      case '$':
      case '\'':
      case '(':
      case ')':
      case '+':
      case ',':
      case '-':
      case '0':
      case '1':
      case '2':
      case '3':
      case '<':
      case '>':
      case '?':
      case 'C':
      case 'D':
      case 'E':
      case 'F':
      case 'G':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
        break;
      case '%':
        [(MRDTransportExternalDevice *)self _handleDeviceInfoUpdateMessage:v5];
        break;
      case '&':
        [(MRDTransportExternalDevice *)self _handleSetConnectionStateMessage:v5];
        break;
      case '*':
        [(MRDTransportExternalDevice *)self _handleGenericMessage:v5];
        break;
      case '.':
        [(MRDTransportExternalDevice *)self _handleSetNowPlayingClientMessage:v5];
        break;
      case '/':
        [(MRDTransportExternalDevice *)self _handleSetNowPlayingPlayerMessage:v5];
        break;
      case '4':
        [(MRDTransportExternalDevice *)self _handleVolumeDidChangeMessage:v5];
        break;
      case '5':
        [(MRDTransportExternalDevice *)self _handleRemoveClientMessage:v5];
        break;
      case '6':
        [(MRDTransportExternalDevice *)self _handleRemovePlayerMessage:v5];
        break;
      case '7':
        [(MRDTransportExternalDevice *)self _handleUpdateClientMessage:v5];
        break;
      case '8':
        [(MRDTransportExternalDevice *)self _handleUpdateContentItemsMessage:v5];
        break;
      case ':':
        [(MRDTransportExternalDevice *)self _handleUpdatePlayerMessage:v5];
        break;
      case ';':
        [(MRDTransportExternalDevice *)self _handlePromptForRouteAuthorizationMessage:v5];
        break;
      case '=':
        [(MRDTransportExternalDevice *)self _handlePresentRouteAuthorizationStatusMessage:v5];
        break;
      case '@':
        [(MRDTransportExternalDevice *)self _handleVolumeControlCapabilitiesDidChangeMessage:v5];
        break;
      case 'A':
        [(MRDTransportExternalDevice *)self _handleOutputDevicesUpdatedMessage:v5];
        break;
      case 'B':
        [(MRDTransportExternalDevice *)self _handleOutputDevicesRemovedMessage:v5];
        break;
      case 'H':
        [(MRDTransportExternalDevice *)self _handleSetDefaultSupportedCommandsMessage:v5];
        break;
      case 'M':
        [(MRDTransportExternalDevice *)self _handleUpdateActiveSystemEndpoint:v5];
        break;
      default:
        if (v6 == 17)
        {
          [(MRDTransportExternalDevice *)self _handleLegacyVolumeControlCapabilitiesDidChangeMessage:v5];
        }

        break;
    }
  }
}

- (void)_handleDiscoveryUpdateOutputDevicesMessage:(id)a3
{
  v4 = a3;
  v6 = [v4 outputDevices];
  v5 = [v4 configuration];

  [(MRDTransportExternalDevice *)self notifyDiscoveryOutputDevicesChanged:v6 forConfiguration:v5];
}

- (void)_localDeviceInfoDidChangeNotification:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = MRGetOriginFromUserInfo();
  if ([v5 isLocal])
  {
    v6 = [v10 userInfo];
    v7 = MRGetDeviceInfoFromUserInfo();

    if (v7)
    {
      v8 = [(MRDTransportExternalDevice *)self clientConnection];
      v9 = [[MRDeviceInfoUpdateMessage alloc] initWithDeviceInfo:v7];
      [v8 sendMessage:v9];
    }
  }
}

- (void)_transportDeviceInfoDidChangeNotification:(id)a3
{
  v10 = a3;
  v4 = [v10 userInfo];
  v5 = [v4 objectForKey:MRExternalDeviceTransportNewDeviceInfoUserInfoKey];

  v6 = [(MRDTransportExternalDevice *)self clientConnection];

  if (v6)
  {
    if (!self->_deviceInfo)
    {
      goto LABEL_7;
    }

    v7 = [v5 bluetoothAddress];
    if (v7)
    {
      deviceInfo = self->_deviceInfo;
      MRPairedDeviceSetBluetoothAddress();
    }
  }

  else
  {
    v9 = [v10 userInfo];
    v7 = [v9 objectForKey:MRExternalDeviceTransportOldDeviceInfoUserInfoKey];

    [(MRDTransportExternalDevice *)self _handleDeviceInfoChange:v5 oldDevice:v7];
  }

LABEL_7:
}

- (void)_activeSystemEndpointDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];

  v6 = [v5 type];
  v7 = [v5 outputDeviceUID];
  if (v7)
  {
    v8 = [v5 outputDeviceUID];
    v9 = +[MRAVOutputDevice localDeviceUID];
    v10 = [v8 isEqualToString:v9];
  }

  else
  {
    v10 = 1;
  }

  if (!v6)
  {
    v11 = [(MRDTransportExternalDevice *)self clientConnection];
    v12 = [v11 deviceInfo];
    if ([v12 isCompanion] && !objc_msgSend(v5, "isPairedDeviceSync"))
    {
      v13 = [v5 suppressPairedDeviceSync] | v10;

      if ((v13 & 1) == 0)
      {
        v14 = objc_alloc_init(MRProtocolMessageOptions);
        [v14 setPriority:4];
        if ([v5 demoteWhenSyncingToCompanion])
        {
          [v5 setType:2];
          v15 = _MRLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412290;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Demoted Gizmo's %@ to RSE", &v18, 0xCu);
          }
        }

        v16 = [[MRUpdateActiveSystemEndpointMessage alloc] initWithRequest:v5];
        [v16 setTransportOptions:v14];
        v17 = [(MRDTransportExternalDevice *)self clientConnection];
        [v17 sendMessage:v16];
      }
    }

    else
    {
    }
  }
}

- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)a3
{
  v3 = qword_100529378;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1003A83F8();
  }

  v5 = [MRExternalClientConnection alloc];
  v6 = [v5 initWithConnection:v4 replyQueue:qword_100529370];

  return v6;
}

- (id)_onWorkerQueue_loadDeviceInfoWithUserInfo:(id)a3
{
  v44 = a3;
  dispatch_assert_queue_V2(self->_workerQueue);
  v43 = +[NSDate date];
  v4 = [v44 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v5 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.loadDeviceInfo", v4];
  v6 = [(MRDTransportExternalDevice *)self shortDescription];

  if (v6)
  {
    v7 = [(MRDTransportExternalDevice *)self shortDescription];
    [v5 appendFormat:@" for %@", v7];
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v9 = [(MRDTransportExternalDevice *)self clientConnection];
  if (v9)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = objc_alloc_init(MRProtocolMessageOptions);
    [v11 setPriority:5];
    [v11 setWaking:1];
    v12 = [MRDeviceInfoMessage alloc];
    v13 = +[MRDMediaRemoteServer server];
    v14 = [v13 deviceInfo];
    v15 = [v12 initWithDeviceInfo:v14];

    [v15 setTransportOptions:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_1000350DC;
    *v54 = sub_100035A24;
    *&v54[8] = 0;
    objc_initWeak(&location, self);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000DDEE4;
    v47[3] = &unk_1004BBD98;
    objc_copyWeak(&v50, &location);
    v49 = buf;
    v16 = v10;
    v48 = v16;
    v17 = objc_retainBlock(v47);
    v18 = +[MRUserSettings currentSettings];
    [v18 externalDeviceTimeoutDuration];
    v20 = v19;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000DE11C;
    v45[3] = &unk_1004BBBC0;
    v21 = v17;
    v46 = v21;
    [v9 sendMessage:v15 timeout:v45 reply:v20];

    v22 = +[MRUserSettings currentSettings];
    [v22 externalDeviceTimeoutDuration];
    v24 = dispatch_time(0, (v23 * 1000000000.0));

    if (dispatch_semaphore_wait(v16, v24))
    {
      v25 = [[NSError alloc] initWithMRError:113];
    }

    else
    {
      v25 = *(*&buf[8] + 40);
    }

    v26 = v25;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = [[NSError alloc] initWithMRError:100];
  }

  v27 = [(MRDTransportExternalDevice *)self shortDescription];

  v28 = _MRLogForCategory();
  v29 = v28;
  if (v26)
  {
    v30 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v30)
      {
        v31 = [(MRDTransportExternalDevice *)self shortDescription];
        v32 = +[NSDate date];
        [v32 timeIntervalSinceDate:v43];
        *buf = 138544386;
        *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v53 = v26;
        *v54 = 2114;
        *&v54[2] = v31;
        *&v54[10] = 2048;
        *&v54[12] = v33;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      }
    }

    else if (v30)
    {
      v38 = +[NSDate date];
      [v38 timeIntervalSinceDate:v43];
      *buf = 138544130;
      *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      v53 = v26;
      *v54 = 2048;
      *&v54[2] = v39;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  else
  {
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (v27)
    {
      if (v34)
      {
        v35 = [(MRDTransportExternalDevice *)self shortDescription];
        v36 = +[NSDate date];
        [v36 timeIntervalSinceDate:v43];
        *buf = 138544130;
        *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v53 = v35;
        *v54 = 2048;
        *&v54[2] = v37;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
      }
    }

    else if (v34)
    {
      v40 = +[NSDate date];
      [v40 timeIntervalSinceDate:v43];
      *buf = 138543874;
      *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

  return v26;
}

- (id)_onWorkerQueue_registerCustomOriginWithUserInfo:(id)a3
{
  workerQueue = self->_workerQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  v7 = [(MRDTransportExternalDevice *)self deviceInfo];
  if ([v7 isCompanion])
  {
    v8 = 1129140302;
  }

  else
  {
    v9 = MSVNanoIDCreateWithCharacters();
    v10 = [v9 UTF8String];
    v8 = (v10[1] << 16) | (*v10 << 24) | (v10[2] << 8) | v10[3];
  }

  v11 = [(MRDTransportExternalDevice *)self name];
  v12 = [v5 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v13 = [[MROrigin alloc] initWithIdentifier:v8 type:1 displayName:v11];
  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.registerCustomOrigin", v12];
  v15 = [(MRDTransportExternalDevice *)self shortDescription];

  if (v15)
  {
    v16 = [(MRDTransportExternalDevice *)self shortDescription];
    [(__CFString *)v14 appendFormat:@" for %@", v16];
  }

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = +[MRDMediaRemoteServer server];
  v19 = [v18 nowPlayingServer];
  [v19 registerOrigin:v13 deviceInfo:v7];

  [(MRDTransportExternalDevice *)self setCustomOrigin:v13];
  v20 = [(MRDTransportExternalDevice *)self shortDescription];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v20)
    {
      if (v22)
      {
        v23 = [(MRDTransportExternalDevice *)self shortDescription];
        v24 = +[NSDate date];
        [v24 timeIntervalSinceDate:v6];
        *buf = 138544386;
        v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
        v38 = 2114;
        v39 = v12;
        v40 = 2112;
        v41 = v13;
        v42 = 2114;
        v43 = v23;
        v44 = 2048;
        v45 = v25;
        v26 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v27 = v21;
        v28 = 52;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);

LABEL_21:
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if (!v22)
    {
      goto LABEL_22;
    }

    v23 = +[NSDate date];
    [v23 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2048;
    v43 = v30;
    v31 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v32 = v21;
    v33 = 42;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    goto LABEL_21;
  }

  if (!v20)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    v23 = +[NSDate date];
    [v23 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2048;
    v41 = v34;
    v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v32 = v21;
    v33 = 32;
    goto LABEL_20;
  }

  if (v22)
  {
    v23 = [(MRDTransportExternalDevice *)self shortDescription];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = v23;
    v42 = 2048;
    v43 = v29;
    v26 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v27 = v21;
    v28 = 42;
    goto LABEL_15;
  }

LABEL_22:

  return 0;
}

- (id)_onWorkerQueue_reRegisterCustomOriginWithUserInfo:(id)a3
{
  workerQueue = self->_workerQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  v7 = [v5 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin", v7];
  v9 = [(MRDTransportExternalDevice *)self customOrigin];

  if (v9)
  {
    v10 = [(MRDTransportExternalDevice *)self customOrigin];
    [(__CFString *)v8 appendFormat:@" for %@", v10];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = +[MRDMediaRemoteServer server];
  v13 = [v12 nowPlayingServer];
  v14 = [(MRDTransportExternalDevice *)self customOrigin];
  v15 = [(MRDTransportExternalDevice *)self deviceInfo];
  [v13 reregisterOrigin:v14 deviceInfo:v15];

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DEA18;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  v17 = [(MRDTransportExternalDevice *)self shortDescription];

  v18 = _MRLogForCategory();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v19)
    {
      v20 = [(MRDTransportExternalDevice *)self shortDescription];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:v6];
      *buf = 138544130;
      v27 = @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin";
      v28 = 2114;
      v29 = v7;
      v30 = 2114;
      v31 = v20;
      v32 = 2048;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);

LABEL_10:
    }
  }

  else if (v19)
  {
    v20 = +[NSDate date];
    [v20 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v27 = @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin";
    v28 = 2114;
    v29 = v7;
    v30 = 2048;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    goto LABEL_10;
  }

  return 0;
}

- (id)_onWorkerQueue_syncClientStateWithUserInfo:(id)a3
{
  workerQueue = self->_workerQueue;
  v5 = a3;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  v7 = [v5 objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.syncClientState", v7];
  v9 = [(MRDTransportExternalDevice *)self shortDescription];

  if (v9)
  {
    v10 = [(MRDTransportExternalDevice *)self shortDescription];
    [(__CFString *)v8 appendFormat:@" for %@", v10];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = +[MRUserSettings currentSettings];
  [v12 externalDeviceTimeoutDuration];
  v14 = v13;
  v15 = objc_alloc_init(MRProtocolMessageOptions);
  [v15 setPriority:5];
  [v15 setWaking:1];
  v16 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:2];
  [v16 setTransportOptions:v15];
  v17 = [(MRDTransportExternalDevice *)self clientConnection];
  [v17 sendMessage:v16];

  if (-[MRDTransportExternalDevice wantsNowPlayingNotifications](self, "wantsNowPlayingNotifications") || -[MRDTransportExternalDevice wantsVolumeNotifications](self, "wantsVolumeNotifications") || -[MRDTransportExternalDevice wantsOutputDeviceNotifications](self, "wantsOutputDeviceNotifications") || -[MRDTransportExternalDevice wantsNowPlayingArtworkNotifications](self, "wantsNowPlayingArtworkNotifications") || -[MRDTransportExternalDevice wantsSystemEndpointNotifications](self, "wantsSystemEndpointNotifications") || (-[MRDTransportExternalDevice subscribedPlayerPaths](self, "subscribedPlayerPaths"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v19))
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000DEE98;
    v31[3] = &unk_1004BBDC0;
    v20 = dispatch_semaphore_create(0);
    v32 = v20;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessageWithCompletion:v31];
    v21 = dispatch_time(0, (v14 * 1000000000.0));
    if (dispatch_semaphore_wait(v20, v21))
    {
      Error = MRMediaRemoteCreateError();
    }

    else
    {
      Error = 0;
    }
  }

  else
  {
    Error = 0;
  }

  v23 = [(MRDTransportExternalDevice *)self shortDescription];

  v24 = _MRLogForCategory();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = [(MRDTransportExternalDevice *)self shortDescription];
    v27 = +[NSDate date];
    [v27 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v34 = @"TransportExternalDevice.connectWithOptions.syncClientState";
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = v26;
    v39 = 2048;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
  }

  else
  {
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = +[NSDate date];
    [v26 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v34 = @"TransportExternalDevice.connectWithOptions.syncClientState";
    v35 = 2114;
    v36 = v7;
    v37 = 2048;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

LABEL_21:

  return Error;
}

- (void)_onWorkerQueue_sendBatchedMessages
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000350DC;
  v19 = sub_100035A24;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF0D8;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(serialQueue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v16[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = _MRLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending batched request...", v9, 2u);
        }

        (*(v7 + 16))(v7);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_cleanUpStreamsWithReason:(int64_t)a3 error:(id)a4
{
  v14 = a4;
  v6 = [(MRDTransportExternalDevice *)self clientConnection];
  v7 = v6;
  if (v6)
  {
    [v6 setDelegate:0];
    if (a3)
    {
      if (a3 != 1)
      {
        v8 = 0;
        if (a3 != 3)
        {
LABEL_10:
          [v7 disconnectWithError:v8];

          goto LABEL_11;
        }

        v9 = v14;
LABEL_9:
        v8 = v9;
        goto LABEL_10;
      }

      v10 = [NSError alloc];
      v11 = 123;
    }

    else
    {
      v10 = [NSError alloc];
      v11 = 1;
    }

    v9 = [v10 initWithMRError:v11];
    goto LABEL_9;
  }

LABEL_11:
  v12 = [(MRDTransportExternalDevice *)self clientConnection];
  [v12 setDelegate:0];

  [(MRDTransportExternalDevice *)self setClientConnection:0];
  v13 = [(MRDTransportExternalDevice *)self transport];
  [v13 resetWithError:v14];
}

- (void)_cleanUpWithReason:(int64_t)a3 error:(id)a4
{
  [(MRDTransportExternalDevice *)self _cleanUpStreamsWithReason:a3 error:a4];
  serialQueue = self->_serialQueue;
  msv_dispatch_sync_on_queue();
}

- (void)_onSerialQueue_registerOriginCallbacks
{
  dispatch_assert_queue_V2(self->_serialQueue);
  objc_initWeak(&location, self);
  customOrigin = self->_customOrigin;
  v52[1] = _NSConcreteStackBlock;
  v52[2] = 3221225472;
  v52[3] = sub_1000DFA38;
  v52[4] = &unk_1004B8CC8;
  objc_copyWeak(&v53, &location);
  MRMediaRemoteSetCommandHandler();
  v4 = [(MRDTransportExternalDevice *)self clientConnection];
  v5 = [v4 supportedMessages];
  v6 = [v5 isSupported:32];

  if (v6)
  {
    v7 = self->_customOrigin;
    v51[1] = _NSConcreteStackBlock;
    v51[2] = 3221225472;
    v51[3] = sub_1000DFB64;
    v51[4] = &unk_1004B8D18;
    objc_copyWeak(v52, &location);
    MRMediaRemotePlaybackQueueDataSourceSetRequestCallback();
    objc_destroyWeak(v52);
  }

  v8 = [(MRDTransportExternalDevice *)self clientConnection];
  v9 = [v8 supportedMessages];
  v10 = [v9 isSupported:44];

  if (v10)
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_1000DFC74;
    v50[3] = &unk_1004BBE10;
    objc_copyWeak(v51, &location);
    v11 = objc_retainBlock(v50);
    v12 = self->_customOrigin;
    MRMediaRemoteSetBeginLyricsEventCallback();
    v13 = self->_customOrigin;
    MRMediaRemoteSetEndLyricsEventCallback();

    objc_destroyWeak(v51);
  }

  v14 = [(MRDTransportExternalDevice *)self clientConnection];
  v15 = [v14 supportedMessages];
  v16 = [v15 isSupported:73];

  if (v16)
  {
    v17 = self->_customOrigin;
    v48[1] = _NSConcreteStackBlock;
    v48[2] = 3221225472;
    v48[3] = sub_1000DFD2C;
    v48[4] = &unk_1004B8D68;
    objc_copyWeak(&v49, &location);
    MRMediaRemotePlaybackSessionSetRequestCallbackForOrigin();
    v18 = +[MRNowPlayingOriginClientManager sharedManager];
    v19 = [v18 originClientForOrigin:self->_customOrigin];

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000DFE48;
    v47[3] = &unk_1004B8DB8;
    objc_copyWeak(v48, &location);
    [v19 setPlaybackSessionMigrateRequestCallback:v47];
    objc_destroyWeak(v48);

    objc_destroyWeak(&v49);
  }

  v20 = [(MRDTransportExternalDevice *)self clientConnection];
  v21 = [v20 supportedMessages];
  v22 = [v21 isSupported:75];

  if (v22)
  {
    v23 = self->_customOrigin;
    v45[1] = _NSConcreteStackBlock;
    v45[2] = 3221225472;
    v45[3] = sub_1000DFF38;
    v45[4] = &unk_1004B8E08;
    objc_copyWeak(&v46, &location);
    MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin();
    objc_destroyWeak(&v46);
  }

  v24 = [(MRDTransportExternalDevice *)self clientConnection];
  v25 = [v24 supportedMessages];
  v26 = [v25 isSupported:76];

  if (v26)
  {
    v27 = self->_customOrigin;
    v44[1] = _NSConcreteStackBlock;
    v44[2] = 3221225472;
    v44[3] = sub_1000E000C;
    v44[4] = &unk_1004B8E58;
    objc_copyWeak(v45, &location);
    MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin();
    objc_destroyWeak(v45);
  }

  v28 = [(MRDTransportExternalDevice *)self clientConnection];
  v29 = [v28 supportedMessages];
  v30 = [v29 isSupported:78];

  if (v30)
  {
    v31 = self->_customOrigin;
    v43[1] = _NSConcreteStackBlock;
    v43[2] = 3221225472;
    v43[3] = sub_1000E0110;
    v43[4] = &unk_1004B8EA8;
    objc_copyWeak(v44, &location);
    MRMediaRemotePlaybackSessionSetMigratePostCallbackForOrigin();
    objc_destroyWeak(v44);
  }

  v32 = +[MRNowPlayingOriginClientManager sharedManager];
  v33 = [v32 originClientForOrigin:self->_customOrigin];

  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000E0200;
  v42[3] = &unk_1004BBE38;
  objc_copyWeak(v43, &location);
  [v33 setClientMessageCallback:v42];
  v34 = +[MRDMediaRemoteServer server];
  v35 = [v34 nowPlayingServer];
  v36 = [v35 originClientForOrigin:self->_customOrigin];

  v37 = [(MRDTransportExternalDevice *)self clientConnection];
  v38 = [v37 supportedMessages];
  LODWORD(v35) = [v38 isSupported:134];

  if (!v35)
  {
    v39 = &stru_1004BBEC0;
LABEL_18:
    [v36 registerCreateNewApplicationConnectionCallback:v39];
    goto LABEL_19;
  }

  if (!_os_feature_enabled_impl())
  {
    v39 = &stru_1004BBEA0;
    goto LABEL_18;
  }

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000E0278;
  v40[3] = &unk_1004BBE60;
  objc_copyWeak(&v41, &location);
  [v36 registerCreateNewApplicationConnectionCallback:v40];
  objc_destroyWeak(&v41);
LABEL_19:

  objc_destroyWeak(v43);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

- (void)_handlePlaybackQueueRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v11)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E0CF0;
    v18[3] = &unk_1004BBF10;
    objc_copyWeak(&v22, &location);
    v19 = v8;
    v20 = v9;
    v12 = v10;
    v21 = v12;
    if (![(MRDTransportExternalDevice *)self _maybeBatchRequest:v18])
    {
      (*(v12 + 2))(v12, 0, v11);
    }

    objc_destroyWeak(&v22);
  }

  else
  {
    v13 = [v8 copy];
    v14 = objc_alloc_init(MRProtocolMessageOptions);
    [v14 setPriority:4];
    [v14 setWaking:1];
    v15 = [[MRPlaybackQueueRequestMessage alloc] initWithRequest:v13 forPlayerPath:v9];
    [v15 setTransportOptions:v14];
    v16 = [(MRDTransportExternalDevice *)self clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E0950;
    v23[3] = &unk_1004BBEE8;
    objc_copyWeak(&v26, &location);
    v25 = v10;
    v17 = v13;
    v24 = v17;
    [v16 sendMessage:v15 timeout:v23 reply:63.0];

    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&location);
}

- (void)_handlePlaybackSessionRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v12 = [v11 startEvent:@"GetPlaybackSession" role:1];
  objc_initWeak(&location, self);
  v13 = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (v13)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E116C;
    v18[3] = &unk_1004BBF10;
    objc_copyWeak(&v22, &location);
    v19 = v8;
    v20 = v9;
    v14 = v10;
    v21 = v14;
    if (![(MRDTransportExternalDevice *)self _maybeBatchRequest:v18])
    {
      [v11 endEventWithID:v12 error:v13];
      v15 = [[MRPlaybackSessionResponseMessage alloc] initWithPlaybackSession:0 request:v11];
      (*(v14 + 2))(v14, v15, v13);
    }

    objc_destroyWeak(&v22);
  }

  else
  {
    v16 = [[MRPlaybackSessionRequestMessage alloc] initWithRequest:v8 forPlayerPath:v9];
    v17 = [(MRDTransportExternalDevice *)self clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E0FDC;
    v23[3] = &unk_1004BBF38;
    v24 = v11;
    v25 = 0;
    v27 = v12;
    v26 = v10;
    [v17 sendMessage:v16 timeout:v23 reply:63.0];
  }

  objc_destroyWeak(&location);
}

- (void)_handlePlaybackSessionMigrateRequest:(id)a3 request:(id)a4 forPlayerPath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 startEvent:@"SendPlaybackSession" role:1];
  v15 = self;
  v16 = [(MRDTransportExternalDevice *)v15 errorForCurrentState];
  if (v16)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000E14E4;
    v24 = &unk_1004BBCD8;
    v25 = v15;
    v26 = v10;
    v17 = v11;
    v27 = v17;
    v28 = v12;
    v18 = v13;
    v29 = v18;
    if (![(MRDTransportExternalDevice *)v15 _maybeBatchRequest:&v21])
    {
      [v17 endEventWithID:v14 error:{v16, v21, v22, v23, v24, v25, v26, v27, v28}];
      (*(v18 + 2))(v18, v17, v16);
    }
  }

  else
  {
    v19 = [[MRPlaybackSessionMigrateRequestMessage alloc] initWithPlaybackSession:v10 request:v11 forPlayerPath:v12];
    v20 = [(MRDTransportExternalDevice *)v15 clientConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E1400;
    v30[3] = &unk_1004BBF60;
    v31 = v11;
    v33 = v14;
    v32 = v13;
    [v20 sendMessage:v19 timeout:v30 reply:63.0];
  }
}

- (void)_handlePlaybackSessionMigrateBeginRequest:(id)a3 forPlayerPath:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v12 = [v11 startEvent:@"Prepare" role:1];
  v13 = self;
  v14 = [(MRDTransportExternalDevice *)v13 errorForCurrentState];
  if (v14)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000E1894;
    v19[3] = &unk_1004B6BB0;
    v19[4] = v13;
    v20 = v8;
    v21 = v9;
    v15 = v10;
    v22 = v15;
    if (![(MRDTransportExternalDevice *)v13 _maybeBatchRequest:v19])
    {
      [v11 endEventWithID:v12 error:v14];
      v16 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v11];
      (*(v15 + 2))(v15, v16, v14);
    }
  }

  else
  {
    v17 = [[MRPlaybackSessionMigrateBeginMessage alloc] initWithRequest:v8 playerPath:v9];
    v18 = [(MRDTransportExternalDevice *)v13 clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E1734;
    v23[3] = &unk_1004BBF60;
    v24 = v11;
    v26 = v12;
    v25 = v10;
    [v18 sendMessage:v17 reply:v23];
  }
}

- (void)_handlePlaybackSessionMigrateEndRequest:(id)a3 setPlaybackSessionCommandStatus:(id)a4 error:(id)a5 forPlayerPath:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v18 = [v17 startEvent:@"Finalize" role:1];
  v19 = self;
  v20 = [(MRDTransportExternalDevice *)v19 errorForCurrentState];
  if (v20)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000E1CC8;
    v33[3] = &unk_1004BBAD8;
    v33[4] = v19;
    v34 = v12;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v21 = v16;
    v38 = v21;
    if (![(MRDTransportExternalDevice *)v19 _maybeBatchRequest:v33])
    {
      [v17 endEventWithID:v18 error:v20];
      v22 = v15;
      v23 = v14;
      v24 = v13;
      v25 = v12;
      v26 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v17];
      (*(v21 + 2))(v21, v26, v20);

      v12 = v25;
      v13 = v24;
      v14 = v23;
      v15 = v22;
    }
  }

  else
  {
    v27 = [[MRPlaybackSessionMigrateEndMessage alloc] initWithRequest:v12 error:v14 setPlaybackSessionCommandStatus:v13 playerPath:v15];
    [(MRDTransportExternalDevice *)v19 clientConnection];
    v32 = v15;
    v28 = v14;
    v29 = v13;
    v31 = v30 = v12;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000E1B68;
    v39[3] = &unk_1004BBF60;
    v40 = v17;
    v42 = v18;
    v41 = v16;
    [v31 sendMessage:v27 reply:v39];

    v12 = v30;
    v13 = v29;
    v14 = v28;
    v15 = v32;
  }
}

- (void)_handlePlaybackSessionMigratePostRequest:(id)a3 setPlaybackSessionCommandID:(id)a4 forPlayerPath:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 startEvent:@"Post" role:1];
  v15 = self;
  v16 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:v10 playerPath:v12 setPlaybackSessionCommandID:v11];
  v17 = [(MRDTransportExternalDevice *)v15 errorForCurrentState];
  if (v17)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000E2030;
    v25 = &unk_1004BBCD8;
    v26 = v15;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    v18 = v13;
    v30 = v18;
    if (![(MRDTransportExternalDevice *)v15 _maybeBatchRequest:&v22])
    {
      v19 = [v16 request];
      [v19 endEventWithID:v14 error:v17];

      (*(v18 + 2))(v18, v16, v17);
    }

    v20 = v27;
  }

  else
  {
    v21 = [(MRDTransportExternalDevice *)v15 clientConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E1F28;
    v31[3] = &unk_1004BBF88;
    v34 = v14;
    v33 = v13;
    v32 = v16;
    [v21 sendMessage:v32 timeout:v31 reply:63.0];

    v20 = v33;
  }
}

- (void)_callClientConnectionStateCallback:(unsigned int)a3 previousConnectionState:(unsigned int)a4 error:(id)a5
{
  v7 = a5;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E20F4;
  block[3] = &unk_1004B87F8;
  v13 = a3;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(notificationQueue, block);
}

- (void)_callClientCustomDataCallback:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  v11 = v7;
  v9 = v6;
  v10 = v7;
  msv_dispatch_sync_on_queue();
}

- (void)_callDeviceInfoCallback:(id)a3 oldDeviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E24F4;
  block[3] = &unk_1004B69D0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(notificationQueue, block);
}

- (void)setCustomDataCallback:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2680;
  block[3] = &unk_1004BB428;
  v13 = v7;
  v14 = v6;
  block[4] = self;
  v10 = v7;
  v11 = v6;
  dispatch_sync(serialQueue, block);
}

- (BOOL)_maybeBatchRequest:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  serialQueue = self->_serialQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2794;
  block[3] = &unk_1004BBFD8;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

- (void)_handleSetStateMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRDTransportExternalDevice *)self customOrigin];
  v6 = [v4 state];
  v7 = [v6 playerPath];
  v8 = [v7 copy];

  v9 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  v10 = [v6 supportedCommands];
  if (v10)
  {
    MRMediaRemoteSetSupportedCommandsForPlayer();
  }

  if ([v6 playbackState])
  {
    v11 = [v4 state];
    v12 = [v11 hasPlaybackStateTimestamp];

    if (v12)
    {
      v13 = [v4 state];
      [v13 playbackStateTimestamp];
    }

    else if (!self->_isClientSyncActive)
    {
      +[NSDate timeIntervalSinceReferenceDate];
    }

    [v6 playbackState];
    MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp();
  }

  v14 = [v6 playbackQueue];
  v15 = [v14 copy];

  if (v15)
  {
    v23 = v8;
    v24 = v5;
    v16 = [v15 contentItems];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v25 + 1) + 8 * v20) metadata];
          [v21 setDeviceSpecificUserInfo:0];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v22 = [v15 contentItems];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();

    MRMediaRemoteSetPlaybackQueue();
    v8 = v23;
    v5 = v24;
  }

  if ([v6 playbackQueueCapabilities])
  {
    [v6 playbackQueueCapabilities];
    MRMediaRemoteSetPlaybackQueueCapabilities();
  }

  CFRelease(v9);
}

- (void)_handleSetNowPlayingClientMessage:(id)a3
{
  v4 = a3;
  v6 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 client];

  MRMediaRemoteSetNowPlayingClientForOrigin();
}

- (void)_handleSetNowPlayingPlayerMessage:(id)a3
{
  v4 = a3;
  v7 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteSetNowPlayingPlayer();
}

- (void)_handleRemoveClientMessage:(id)a3
{
  v4 = a3;
  v6 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 client];

  MRMediaRemoteRemoveClientForOrigin();
}

- (void)_handleRemovePlayerMessage:(id)a3
{
  v4 = a3;
  v7 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteRemovePlayer();
}

- (void)_handleUpdateClientMessage:(id)a3
{
  v4 = a3;
  v6 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 client];

  MRMediaRemoteUpdateClientProperties();
}

- (void)_handleUpdatePlayerMessage:(id)a3
{
  v4 = a3;
  v7 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteUpdatePlayerProperties();
}

- (void)_handleUpdateContentItemsMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRDTransportExternalDevice *)self customOrigin];
  v6 = [v4 playerPath];
  v7 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();

  v8 = [v4 contentItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) metadata];
        [v13 setDeviceSpecificUserInfo:0];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();
}

- (void)_handleNotificationMessage:(id)a3
{
  v4 = a3;
  v11 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 notification];
  v6 = [v4 userInfo];
  v7 = [v4 playerPath];

  v8 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  if ([v5 isEqualToString:kMRPlaybackQueueContentItemArtworkChangedNotification])
  {
    v9 = [[MRPlaybackQueueRequest alloc] initWithRange:{0, 1}];
    [v9 setArtworkWidth:600.0];
    [v9 setArtworkHeight:600.0];
    v10 = MRGetContentItemsFromUserInfo();
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer();

LABEL_5:
    goto LABEL_7;
  }

  if ([v5 isEqualToString:kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification])
  {
    v9 = [v6 objectForKey:kMRMediaRemotePickedRouteVolumeControlAvailabilityUserInfoKey];
    [v9 BOOLValue];
    MRMediaRemoteSetPickedRouteHasVolumeControlForOrigin();
    goto LABEL_5;
  }

  MRMediaRemotePostClientNotification();
LABEL_7:
}

- (void)_handleOutputDevicesUpdatedMessage:(id)a3
{
  v4 = [a3 outputDevices];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E3AA0;
  v6[3] = &unk_1004B9AF8;
  v6[4] = self;
  v5 = [v4 msv_map:v6];

  [(MRExternalOutputContextDataSource *)self->_externalOutputContext updateOutputDevices:v5];
}

- (void)_handleOutputDevicesRemovedMessage:(id)a3
{
  externalOutputContext = self->_externalOutputContext;
  v4 = [a3 outputDeviceUIDs];
  [(MRExternalOutputContextDataSource *)externalOutputContext removeOutputDevices:v4];
}

- (void)_handleVolumeDidChangeMessage:(id)a3
{
  externalOutputContext = self->_externalOutputContext;
  v4 = a3;
  [v4 volume];
  v6 = v5;
  v8 = [v4 outputDeviceUID];

  LODWORD(v7) = v6;
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolume:v8 outputDeviceUID:v7];
}

- (void)_handleVolumeControlCapabilitiesDidChangeMessage:(id)a3
{
  externalOutputContext = self->_externalOutputContext;
  v4 = a3;
  v5 = [v4 capabilities];
  v6 = [v4 outputDeviceUID];

  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeControlCapabilities:v5 outputDeviceUID:v6];
}

- (void)_handleVolumeMutedDidChangeMessage:(id)a3
{
  externalOutputContext = self->_externalOutputContext;
  v4 = a3;
  v5 = [v4 isMuted];
  v6 = [v4 outputDeviceUID];

  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeMuted:v5 outputDeviceUID:v6];
}

- (void)_handleLegacyVolumeControlCapabilitiesDidChangeMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRDTransportExternalDevice *)self customOrigin];
  [v4 capabilities];

  MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
}

- (void)_handleDeviceInfoUpdateMessage:(id)a3
{
  v4 = a3;
  v7 = [(MRDTransportExternalDevice *)self deviceInfo];
  v5 = [v7 copy];
  v6 = [v4 deviceInfo];

  [(MRDTransportExternalDevice *)self _handleDeviceInfoChange:v6 oldDevice:v5];
}

- (void)_handleDeviceInfoChange:(id)a3 oldDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  v11 = v6;
  v12 = v7;
  v9 = v7;
  v10 = v6;
  msv_dispatch_sync_on_queue();
}

- (void)_onSerialQueue_completeGroupSessionRequestsWithIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (v6 | v7)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_requestGroupSessionCompletions;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    requestGroupSessionCompletions = self->_requestGroupSessionCompletions;
    self->_requestGroupSessionCompletions = 0;
  }
}

- (void)_handleSetConnectionStateMessage:(id)a3
{
  v5 = a3;
  if ([v5 state] == 3)
  {
    v4 = [v5 error];
    [(MRDTransportExternalDevice *)self disconnect:v4];
  }
}

- (void)_handleGenericMessage:(id)a3
{
  v4 = a3;
  v6 = [v4 data];
  v5 = [v4 key];

  [(MRDTransportExternalDevice *)self _callClientCustomDataCallback:v6 name:v5];
}

- (void)_handlePromptForRouteAuthorizationMessage:(id)a3
{
  v3 = a3;
  MRGetSharedService();
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 workerQueue];
  v7 = v3;
  v6 = v3;
  MRMediaRemoteServicePromptRouteAuthorization();
}

- (void)_handlePresentRouteAuthorizationStatusMessage:(id)a3
{
  v3 = a3;
  MRGetSharedService();
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 workerQueue];
  v7 = v3;
  v6 = v3;
  MRMediaRemoteServicePresentRouteAuthorizationStatus();
}

- (void)_handleSetDefaultSupportedCommandsMessage:(id)a3
{
  v4 = a3;
  v5 = [MRClient alloc];
  v6 = [v4 bundleID];
  v9 = [v5 initWithProcessIdentifier:0 bundleIdentifier:v6];

  v7 = [(MRDTransportExternalDevice *)self customOrigin];
  v8 = [v4 supportedCommands];

  MRMediaRemoteSetDefaultSupportedCommandsForClient();
}

- (void)_handleUpdateActiveSystemEndpoint:(id)a3
{
  v3 = a3;
  v8 = +[MRDMediaRemoteServer server];
  v4 = [v8 nowPlayingServer];
  v5 = [v4 lockScreenRoutingController];
  v6 = [v3 request];

  v7 = [v6 outputDeviceUID];
  [v5 companionASEDidChangeToOutputDeviceUID:v7];
}

- (void)_handleSetPlayerClientPropertiesMessage:(id)a3
{
  v4 = a3;
  v7 = [(MRDTransportExternalDevice *)self customOrigin];
  v5 = [v4 playerPath];
  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();

  MRGetSharedService();
  MRMediaRemoteServiceSetPlayerClientProperties();
}

- (void)_handleSetOriginClientPropertiesMessage:(id)a3
{
  v4 = a3;
  v5 = [(MRDTransportExternalDevice *)self customOrigin];
  MRGetSharedService();
  MRMediaRemoteServiceSetOriginClientProperties();
}

- (void)_handlePlayerClientParticipantsUpdateMessage:(id)a3
{
  v4 = a3;
  v5 = [MRPlayerPath alloc];
  v6 = [(MRDTransportExternalDevice *)self customOrigin];
  v7 = [v4 playerPath];
  v8 = [v7 client];
  v9 = [v4 playerPath];
  v10 = [v9 player];
  v11 = [v5 initWithOrigin:v6 client:v8 player:v10];

  if ([v11 isResolved])
  {
    v12 = +[MRDMediaRemoteServer server];
    v13 = [v12 nowPlayingServer];
    v14 = +[MRDMediaRemoteServer server];
    v15 = [v14 daemonClient];
    v16 = [v13 queryPlayerPath:v11 forClient:v15];

    v17 = [v16 playerClient];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 remoteParticipantDataSource];

      if (v19)
      {
        v30 = v16;
        v20 = [v4 participants];
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v20 count]);

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v22 = [v4 participants];
        v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v32;
          do
          {
            v26 = 0;
            do
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = [[MRPlaybackQueueParticipant alloc] initWithProtobuf:*(*(&v31 + 1) + 8 * v26)];
              [v21 addObject:v27];

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v24);
        }

        v28 = [v18 remoteParticipantDataSource];
        v29 = [v21 copy];
        [v28 updateParticipants:v29];

        v16 = v30;
      }
    }
  }
}

- (void)_handleApplicationConnectionProtocolMessage:(id)a3
{
  v3 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v4 = [v5 remoteControlServer];
  [v4 handleClientBoundApplicationConnectionMessage:v3];
}

- (void)_handleInvalidateApplicationConnectionMessage:(id)a3
{
  v3 = a3;
  v5 = +[MRDMediaRemoteServer server];
  v4 = [v5 remoteControlServer];
  [v4 handleInvalidateApplicationConnectionMessage:v3];
}

- (void)_sendClientMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = [(MRDTransportExternalDevice *)v8 errorForCurrentState];
  if (v9)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000E4BD8;
    v18 = &unk_1004B71F8;
    v19 = v8;
    v20 = v6;
    v10 = v7;
    v21 = v10;
    if (![(MRDTransportExternalDevice *)v8 _maybeBatchRequest:&v15])
    {
      v11 = [MRProtocolMessage alloc];
      v12 = [v11 initWithUnderlyingCodableMessage:0 error:{v9, v15, v16, v17, v18, v19}];
      (*(v10 + 2))(v10, v12);
    }

    v13 = v20;
  }

  else
  {
    v14 = [(MRDTransportExternalDevice *)v8 clientConnection];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000E4BC8;
    v22[3] = &unk_1004BBBC0;
    v23 = v7;
    [v14 sendMessage:v6 reply:v22];

    v13 = v23;
  }
}

@end