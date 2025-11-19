@interface MRIDSCompanionDiscoverySession
- (BOOL)devicePresenceDetected;
- (MRIDSCompanionDiscoverySession)initWithConfiguration:(id)a3;
- (MRProtocolClientConnection)discoveryChannel;
- (NSString)debugDescription;
- (unsigned)discoveryMode;
- (unsigned)endpointFeatures;
- (void)_handleCompanionDeviceDidConnectNotification:(id)a3;
- (void)_handleCompanionDeviceDisconnectedNotification:(id)a3;
- (void)_onIDSQueue_connectDiscoveryChannel:(id)a3;
- (void)_onIDSQueue_disconnectDiscoveryChannel:(id)a3;
- (void)_onIDSQueue_initializeDiscoveryChannel;
- (void)_syncClientStateToConnection:(id)a3;
- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)handleUpdateOutputDevicesMessage:(id)a3 forClient:(id)a4;
@end

@implementation MRIDSCompanionDiscoverySession

- (MRIDSCompanionDiscoverySession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MRIDSCompanionDiscoverySession;
  v5 = [(MRIDSCompanionDiscoverySession *)&v19 initWithConfiguration:v4];
  if (v5)
  {
    v5->_endpointFeatures = [v4 features];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.mediaremote.MRExternalRoutingDiscoverySession.idsQueue", v6);
    idsQueue = v5->_idsQueue;
    v5->_idsQueue = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    v10 = MRIDSCompanionConnectionDeviceDidDisconnect;
    v11 = +[MRIDSCompanionConnection sharedManager];
    [v9 addObserver:v5 selector:"_handleCompanionDeviceDisconnectedNotification:" name:v10 object:v11];

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = MRIDSCompanionConnectionDeviceDidConnect;
    v14 = +[MRIDSCompanionConnection sharedManager];
    [v12 addObserver:v5 selector:"_handleCompanionDeviceDidConnectNotification:" name:v13 object:v14];

    v15 = v5->_idsQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10018E1E4;
    block[3] = &unk_1004B6D08;
    v18 = v5;
    dispatch_async(v15, block);
  }

  return v5;
}

- (NSString)debugDescription
{
  v3 = [NSString alloc];
  v9.receiver = self;
  v9.super_class = MRIDSCompanionDiscoverySession;
  v4 = [(MRIDSCompanionDiscoverySession *)&v9 debugDescription];
  v5 = +[MRIDSCompanionConnection sharedManager];
  v6 = [(MRIDSCompanionDiscoverySession *)self availableOutputDevices];
  v7 = [v3 initWithFormat:@"%@\nIDSCompanion: %@\navailableDevices = %@\n", v4, v5, v6];

  return v7;
}

- (unsigned)discoveryMode
{
  v2 = self;
  objc_sync_enter(v2);
  discoveryMode = v2->_discoveryMode;
  objc_sync_exit(v2);

  return discoveryMode;
}

- (unsigned)endpointFeatures
{
  v2 = self;
  objc_sync_enter(v2);
  endpointFeatures = v2->_endpointFeatures;
  objc_sync_exit(v2);

  return endpointFeatures;
}

- (MRProtocolClientConnection)discoveryChannel
{
  v3 = +[MRIDSCompanionConnection sharedManager];
  if ([v3 isConnected])
  {
    discoveryChannel = self->_discoveryChannel;
  }

  else
  {
    discoveryChannel = 0;
  }

  v5 = discoveryChannel;

  return discoveryChannel;
}

- (BOOL)devicePresenceDetected
{
  v2 = [(MRIDSCompanionDiscoverySession *)self availableOutputDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_handleCompanionDeviceDisconnectedNotification:(id)a3
{
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E744;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(idsQueue, block);
}

- (void)_handleCompanionDeviceDidConnectNotification:(id)a3
{
  idsQueue = self->_idsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10018E7D4;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(idsQueue, block);
}

- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v6 type] == 109)
  {
    [(MRIDSCompanionDiscoverySession *)self handleUpdateOutputDevicesMessage:v6 forClient:v7];
  }
}

- (void)handleUpdateOutputDevicesMessage:(id)a3 forClient:(id)a4
{
  v5 = [a3 outputDevices];
  v6 = [v5 msv_map:&stru_1004C0540];

  [(MRIDSCompanionDiscoverySession *)self notifyOutputDevicesChanged:v6];
}

- (void)_onIDSQueue_connectDiscoveryChannel:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_idsQueue);
  [(MRIDSCompanionDiscoverySession *)self _onIDSQueue_disconnectDiscoveryChannel:v4];
  v5 = _MRLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = +[MRIDSCompanionConnection sharedManager];
      v8 = [v7 deviceInfo];
      v9 = [v8 name];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRIDSDiscoverySession] Connecting discoveryChannel to <%@>...", &v12, 0xCu);
    }

    v10 = +[MRIDSCompanionConnection sharedManager];
    v11 = [v10 deviceInfo];
    [v4 setDeviceInfo:v11];

    [(MRIDSCompanionDiscoverySession *)self _syncClientStateToConnection:v4];
  }

  else
  {
    if (v6)
    {
      v12 = 138412290;
      v13 = IDSDefaultPairedDevice;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRIDSDiscoverySession] No device to connect discoveryChannel to <%@>...", &v12, 0xCu);
    }
  }
}

- (void)_syncClientStateToConnection:(id)a3
{
  v10 = a3;
  v4 = objc_alloc_init(MRProtocolMessageOptions);
  [v4 setPriority:5];
  [v4 setWaking:1];
  v5 = objc_alloc_init(MRCompositeMessage);
  [v5 setTransportOptions:v4];
  v6 = self;
  objc_sync_enter(v6);
  v7 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:2];
  [v5 addMessage:v7];

  v8 = [(MRIDSCompanionDiscoverySession *)v6 discoveryMode];
  if (v8)
  {
    v9 = [[MRSetDiscoveryModeMessage alloc] initWithMode:v8 features:{-[MRIDSCompanionDiscoverySession endpointFeatures](v6, "endpointFeatures")}];
    [v5 addMessage:v9];
  }

  objc_sync_exit(v6);

  [v10 sendMessage:v5];
}

- (void)_onIDSQueue_disconnectDiscoveryChannel:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_idsQueue);
  v5 = [v4 deviceInfo];

  if (v5)
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = IDSDefaultPairedDevice;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRIDSDiscoverySession] Disconnecting discoveryChannel for <%@>...", &v7, 0xCu);
    }

    [v4 setDeviceInfo:0];
    [(MRIDSCompanionDiscoverySession *)self notifyOutputDevicesChanged:0];
  }
}

- (void)_onIDSQueue_initializeDiscoveryChannel
{
  dispatch_assert_queue_V2(self->_idsQueue);
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = IDSDefaultPairedDevice;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRIDSDiscoverySession] Initializing discoveryChannel for <%@>", &v11, 0xCu);
  }

  v4 = [MRIDSCompanionTransportConnection alloc];
  v5 = +[MRIDSCompanionConnection sharedManager];
  v6 = [v4 initWithConnection:v5 type:MRIDSServiceMessageTypeDiscovery destination:0 session:0];

  if (qword_100529668 != -1)
  {
    sub_1003AC9A4();
  }

  v7 = [MRIDSClientConnection alloc];
  v8 = [v7 initWithConnection:v6 replyQueue:qword_100529660];
  discoveryChannel = self->_discoveryChannel;
  self->_discoveryChannel = v8;

  [(MRProtocolClientConnection *)self->_discoveryChannel setDelegate:self];
  [(MRProtocolClientConnection *)self->_discoveryChannel setLabel:@"IDSDiscoveryChannel"];
  v10 = [[MRSupportedProtocolMessages alloc] initWithAllSupportedMessages];
  [(MRProtocolClientConnection *)self->_discoveryChannel setSupportedMessages:v10];
}

@end