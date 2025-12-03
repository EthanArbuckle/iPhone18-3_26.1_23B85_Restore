@interface MRDIDSCompanionRemoteControlService
- (MRDIDSCompanionRemoteControlService)initWithRoutingDataSource:(id)source;
- (MRDIDSCompanionRemoteControlServiceDelegate)delegate;
- (MRDIDSServerClientConnection)discoveryChannel;
- (NSString)description;
- (void)_addAuthorizationCallbackForOutputDevice:(id)device destination:(id)destination session:(id)session;
- (void)_handleCompanionDeviceConnectedNotification:(id)notification;
- (void)_handleCompanionDeviceDisconnectedNotification:(id)notification;
- (void)_handleDeviceInfoDidChangeNotification:(id)notification;
- (void)_handleOutputDevicesDidChangeNotification:(id)notification;
- (void)_onWorkerQueue_connectDiscoveryChannelWithReason:(id)reason;
- (void)_onWorkerQueue_connectRemoteControlChannelForDestination:(id)destination session:(id)session userInfo:(id)info completion:(id)completion;
- (void)_onWorkerQueue_disconnectAllRemoteControlChannelsWithError:(id)error;
- (void)_onWorkerQueue_disconnectDiscoveryChannel;
- (void)_onWorkerQueue_disconnectRemoteControlChannelsForDestination:(id)destination error:(id)error;
- (void)_onWorkerQueue_initializeDiscoveryChannel;
- (void)_onWorkerQueue_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options;
- (void)_removeAuthorizationCallbackForOutputDevice:(id)device;
- (void)_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options;
- (void)clientConnection:(id)connection didReceiveMessage:(id)message;
- (void)handleSetConnectionStateMessage:(id)message forClient:(id)client;
- (void)handleSetDiscoveryModeMessage:(id)message forClient:(id)client;
- (void)start;
- (void)stop;
@end

@implementation MRDIDSCompanionRemoteControlService

- (MRDIDSServerClientConnection)discoveryChannel
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

- (MRDIDSCompanionRemoteControlService)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v36.receiver = self;
  v36.super_class = MRDIDSCompanionRemoteControlService;
  v6 = [(MRDIDSCompanionRemoteControlService *)&v36 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.mediaremote.MRDIDSCompanionRemoteControlServiceConnection.workerQueue", v7);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v8;

    v10 = [[MRAVRoutingDiscoverySessionConfiguration alloc] initWithEndpointFeatures:16];
    configuration = v6->_configuration;
    v6->_configuration = v10;

    objc_storeStrong(&v6->_routingDataSource, source);
    v12 = +[MRIDSCompanionConnection sharedManager];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_1000D15E8;
    v34[3] = &unk_1004BB8B8;
    v13 = v6;
    v35 = v13;
    [v12 setMessageHandler:v34 forType:MRIDSServiceMessageTypeConnectRemoteControl];

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = MRIDSCompanionConnectionDeviceDidConnect;
    v16 = +[MRIDSCompanionConnection sharedManager];
    [v14 addObserver:v13 selector:"_handleCompanionDeviceConnectedNotification:" name:v15 object:v16];

    v17 = +[NSNotificationCenter defaultCenter];
    v18 = MRIDSCompanionConnectionDeviceDidDisconnect;
    v19 = +[MRIDSCompanionConnection sharedManager];
    [v17 addObserver:v13 selector:"_handleCompanionDeviceDisconnectedNotification:" name:v18 object:v19];

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v13 selector:"_handleDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = MRAVEndpointDidAddOutputDeviceNotification;
    v23 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v21 addObserver:v13 selector:"_handleOutputDevicesDidChangeNotification:" name:v22 object:v23];

    v24 = +[NSNotificationCenter defaultCenter];
    v25 = MRAVEndpointDidChangeOutputDeviceNotification;
    v26 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v24 addObserver:v13 selector:"_handleOutputDevicesDidChangeNotification:" name:v25 object:v26];

    v27 = +[NSNotificationCenter defaultCenter];
    v28 = MRAVEndpointDidRemoveOutputDeviceNotification;
    v29 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    [v27 addObserver:v13 selector:"_handleOutputDevicesDidChangeNotification:" name:v28 object:v29];

    v30 = v6->_workerQueue;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000D1868;
    v32[3] = &unk_1004B6D08;
    v33 = v13;
    dispatch_async(v30, v32);
  }

  return v6;
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"%@ %p", v5, self];

  v7 = +[MRIDSCompanionConnection sharedManager];
  [v6 appendFormat:@"IDSWatch: %@\n", v7];

  [(MRDIDSServerClientConnection *)self->_discoveryChannel discoveryMode];
  v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  [v6 appendFormat:@"DiscoveryChannelMode: %@\n", v8];

  [v6 appendFormat:@"Connections: %@\n", self->_remoteControlConnections];
  lastSentEndpoint = self->_lastSentEndpoint;
  [(NSDate *)self->_lastSentEndpointDate timeIntervalSinceNow];
  [v6 appendFormat:@"lastSentEndpoint: %@ (%.1fs ago)\n", lastSentEndpoint, -v10];

  return v6;
}

- (void)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_started)
  {
    selfCopy->_started = 1;
    workerQueue = selfCopy->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D1A24;
    block[3] = &unk_1004B6D08;
    block[4] = selfCopy;
    dispatch_async(workerQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)stop
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_started)
  {
    selfCopy->_started = 0;
    workerQueue = selfCopy->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D1AD4;
    block[3] = &unk_1004B6D08;
    block[4] = selfCopy;
    dispatch_async(workerQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleCompanionDeviceConnectedNotification:(id)notification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_started)
  {
    workerQueue = selfCopy->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D1B78;
    block[3] = &unk_1004B6D08;
    block[4] = selfCopy;
    dispatch_async(workerQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleCompanionDeviceDisconnectedNotification:(id)notification
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1BFC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)_handleDeviceInfoDidChangeNotification:(id)notification
{
  playerPath = [notification playerPath];
  origin = [playerPath origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    discoveryChannel = [(MRDIDSCompanionRemoteControlService *)self discoveryChannel];
    [(MRDIDSCompanionRemoteControlService *)self _sendEndpoint:v8 toClient:discoveryChannel options:0];
  }
}

- (void)_handleOutputDevicesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_sendEndpointScheduled)
  {
    selfCopy->_sendEndpointScheduled = 1;
    object = [notificationCopy object];
    v7 = dispatch_time(0, 300000000);
    workerQueue = selfCopy->_workerQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000D1E44;
    v10[3] = &unk_1004B68F0;
    v10[4] = selfCopy;
    v11 = object;
    v9 = object;
    dispatch_after(v7, workerQueue, v10);
  }

  objc_sync_exit(selfCopy);
}

- (void)clientConnection:(id)connection didReceiveMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = connectionCopy;
  type = [messageCopy type];
  if (type == 101)
  {
    [(MRDIDSCompanionRemoteControlService *)self handleSetDiscoveryModeMessage:messageCopy forClient:v9];
  }

  else if (type == 38)
  {
    [(MRDIDSCompanionRemoteControlService *)self handleSetConnectionStateMessage:messageCopy forClient:v9];
  }
}

- (void)handleSetConnectionStateMessage:(id)message forClient:(id)client
{
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D1FE8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(workerQueue, block);
}

- (void)handleSetDiscoveryModeMessage:(id)message forClient:(id)client
{
  clientCopy = client;
  mode = [message mode];
  [clientCopy setDiscoveryMode:mode];

  if (mode)
  {
    v10 = objc_alloc_init(MRProtocolMessageOptions);
    [v10 setPriority:5];
    [v10 setWaking:1];
    v8 = +[MRAVLocalEndpoint sharedLocalEndpoint];
    discoveryChannel = [(MRDIDSCompanionRemoteControlService *)self discoveryChannel];
    [(MRDIDSCompanionRemoteControlService *)self _sendEndpoint:v8 toClient:discoveryChannel options:v10];
  }
}

- (void)_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options
{
  endpointCopy = endpoint;
  clientCopy = client;
  optionsCopy = options;
  workerQueue = self->_workerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D221C;
  v15[3] = &unk_1004B7310;
  v15[4] = self;
  v16 = endpointCopy;
  v17 = clientCopy;
  v18 = optionsCopy;
  v12 = optionsCopy;
  v13 = clientCopy;
  v14 = endpointCopy;
  dispatch_async(workerQueue, v15);
}

- (void)_onWorkerQueue_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options
{
  endpointCopy = endpoint;
  clientCopy = client;
  optionsCopy = options;
  if ([clientCopy discoveryMode])
  {
    connection = [clientCopy connection];
    v11 = [connection exportEndpoint:endpointCopy];

    if (v11)
    {
      v12 = [MRDiscoveryUpdateOutputDevicesMessage alloc];
      outputDevices = [v11 outputDevices];
      v14 = [v12 initWithOutputDevices:outputDevices configuration:self->_configuration];

      [v14 setTransportOptions:optionsCopy];
      [clientCopy sendMessage:v14];
      lastSentEndpoint = self->_lastSentEndpoint;
      self->_lastSentEndpoint = v11;
      v16 = v11;

      v17 = +[NSDate date];
      lastSentEndpointDate = self->_lastSentEndpointDate;
      self->_lastSentEndpointDate = v17;
    }
  }
}

- (void)_onWorkerQueue_connectDiscoveryChannelWithReason:(id)reason
{
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_workerQueue);
  [(MRDIDSCompanionRemoteControlService *)self _onWorkerQueue_disconnectDiscoveryChannel];
  v5 = +[MRIDSCompanionConnection sharedManager];
  isConnected = [v5 isConnected];

  v7 = MRLogCategoryConnections();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (isConnected)
  {
    if (v8)
    {
      v9 = +[MRIDSCompanionConnection sharedManager];
      deviceInfo = [v9 deviceInfo];
      name = [deviceInfo name];
      v14 = 138412546;
      v15 = name;
      v16 = 2112;
      v17 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[IDSCompanionRemoteControlService] Connecting discoveryChannel to <%@> for reason <%@>...", &v14, 0x16u);
    }

    v12 = +[MRIDSCompanionConnection sharedManager];
    [v12 resetConnection];

    v7 = +[MRIDSCompanionConnection sharedManager];
    deviceInfo2 = [v7 deviceInfo];
    [(MRDIDSServerClientConnection *)self->_discoveryChannel setDeviceInfo:deviceInfo2];
  }

  else if (v8)
  {
    v14 = 138412546;
    v15 = IDSDefaultPairedDevice;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[IDSCompanionRemoteControlService] No device avaiable to connect discoveryChannel to <%@> for reason <%@>", &v14, 0x16u);
  }
}

- (void)_onWorkerQueue_disconnectDiscoveryChannel
{
  dispatch_assert_queue_V2(self->_workerQueue);
  [(MRDIDSServerClientConnection *)self->_discoveryChannel setDeviceInfo:0];
  [(MRDIDSServerClientConnection *)self->_discoveryChannel setDiscoveryMode:0];
  lastSentEndpoint = self->_lastSentEndpoint;
  self->_lastSentEndpoint = 0;

  lastSentEndpointDate = self->_lastSentEndpointDate;
  self->_lastSentEndpointDate = 0;
}

- (void)_onWorkerQueue_initializeDiscoveryChannel
{
  dispatch_assert_queue_V2(self->_workerQueue);
  if (qword_100529358 != -1)
  {
    sub_1003A7F90();
  }

  v3 = [MRIDSCompanionTransportConnection alloc];
  v4 = +[MRIDSCompanionConnection sharedManager];
  v9 = [v3 initWithConnection:v4 type:MRIDSServiceMessageTypeDiscovery destination:0 session:0];

  v5 = [MRDIDSServerClientConnection alloc];
  v6 = [(MRDIDSServerClientConnection *)v5 initWithConnection:v9 replyQueue:qword_100529350];
  discoveryChannel = self->_discoveryChannel;
  self->_discoveryChannel = v6;

  [(MRDIDSServerClientConnection *)self->_discoveryChannel setDelegate:self];
  [(MRDIDSServerClientConnection *)self->_discoveryChannel setLabel:@"IDSDiscoveryChannel"];
  initWithAllSupportedMessages = [[MRSupportedProtocolMessages alloc] initWithAllSupportedMessages];
  [(MRDIDSServerClientConnection *)self->_discoveryChannel setSupportedMessages:initWithAllSupportedMessages];
}

- (void)_onWorkerQueue_connectRemoteControlChannelForDestination:(id)destination session:(id)session userInfo:(id)info completion:(id)completion
{
  destinationCopy = destination;
  sessionCopy = session;
  infoCopy = info;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_workerQueue);
  v13 = [(NSMutableDictionary *)self->_remoteControlConnections objectForKeyedSubscript:destinationCopy];
  v14 = [v13 objectForKeyedSubscript:sessionCopy];

  v15 = [[NSError alloc] initWithMRError:121 format:{@"New replacement connection %@-%@ established", destinationCopy, sessionCopy}];
  [(MRDIDSCompanionRemoteControlService *)self _onWorkerQueue_disconnectRemoteControlChannelsForDestination:destinationCopy error:v15];

  v16 = MRLogCategoryConnections();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v56 = destinationCopy;
    v57 = 2112;
    v58 = sessionCopy;
    v59 = 2112;
    v60 = infoCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[IDSCompanionRemoteControlService] Connecting remoteControlChannel to <%@-%@> with userInfo %@...", buf, 0x20u);
  }

  v17 = [MRIDSCompanionTransportConnection alloc];
  v18 = +[MRIDSCompanionConnection sharedManager];
  v19 = [v17 initWithConnection:v18 type:MRIDSServiceMessageTypeRemoteControl destination:destinationCopy session:sessionCopy];

  sessionCopy = [[NSString alloc] initWithFormat:@"IDSRemoteControlChannel-<%@/%@>", destinationCopy, sessionCopy];
  [v19 setLabel:sessionCopy];

  [v19 setDestinationOutputDeviceUID:destinationCopy];
  [v19 setConnectUserInfo:infoCopy];
  v21 = objc_alloc_init(MRDIDSCompanionRemoteControlServiceConnection);

  [(MRDIDSCompanionRemoteControlServiceConnection *)v21 setDestination:destinationCopy];
  v22 = +[NSDate now];
  [(MRDIDSCompanionRemoteControlServiceConnection *)v21 setConnectionAttemptDate:v22];

  [(MRDIDSCompanionRemoteControlServiceConnection *)v21 setConnection:v19];
  objc_initWeak(buf, self);
  v23 = +[NSNotificationCenter defaultCenter];
  connection = [(MRDIDSCompanionRemoteControlServiceConnection *)v21 connection];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000D2C4C;
  v51[3] = &unk_1004BB900;
  objc_copyWeak(&v54, buf);
  v25 = destinationCopy;
  v52 = v25;
  v42 = sessionCopy;
  v53 = v42;
  v26 = [v23 addObserverForName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:connection queue:0 usingBlock:v51];
  [(MRDIDSCompanionRemoteControlServiceConnection *)v21 setNotificationToken:v26];

  remoteControlConnections = self->_remoteControlConnections;
  if (!remoteControlConnections)
  {
    v28 = objc_alloc_init(NSMutableDictionary);
    v29 = self->_remoteControlConnections;
    self->_remoteControlConnections = v28;

    remoteControlConnections = self->_remoteControlConnections;
  }

  v30 = [(NSMutableDictionary *)remoteControlConnections objectForKeyedSubscript:v25];
  if (!v30)
  {
    v30 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)self->_remoteControlConnections setObject:v30 forKeyedSubscript:v25];
  }

  [v30 setObject:v21 forKeyedSubscript:v42];
  delegate = [(MRDIDSCompanionRemoteControlService *)self delegate];
  connection2 = [(MRDIDSCompanionRemoteControlServiceConnection *)v21 connection];
  v33 = [delegate idsCompanionRemoteControlService:self didAcceptConnection:connection2];

  v34 = infoCopy;
  v35 = [v33 connectOptions] & 1;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000D2E64;
  v43[3] = &unk_1004BB928;
  v36 = v19;
  v44 = v36;
  v37 = v25;
  v45 = v37;
  v38 = completionCopy;
  v49 = v38;
  v39 = v33;
  v50 = v35;
  v46 = v39;
  selfCopy = self;
  v40 = v42;
  v48 = v40;
  [v39 requestDestinationEndpoint:v43];

  objc_destroyWeak(&v54);
  objc_destroyWeak(buf);
}

- (void)_addAuthorizationCallbackForOutputDevice:(id)device destination:(id)destination session:(id)session
{
  deviceCopy = device;
  destinationCopy = destination;
  sessionCopy = session;
  routingDataSource = self->_routingDataSource;
  primaryID = [deviceCopy primaryID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D31F8;
  v16[3] = &unk_1004BA338;
  v17 = deviceCopy;
  v18 = destinationCopy;
  v19 = sessionCopy;
  v13 = sessionCopy;
  v14 = destinationCopy;
  v15 = deviceCopy;
  [(MRDAVRoutingDataSource *)routingDataSource addAuthorizationCallbackForRouteID:primaryID requestCallback:v16];
}

- (void)_removeAuthorizationCallbackForOutputDevice:(id)device
{
  routingDataSource = self->_routingDataSource;
  primaryID = [device primaryID];
  [(MRDAVRoutingDataSource *)routingDataSource removeAuthorizationCallbackForRouteID:primaryID];
}

- (void)_onWorkerQueue_disconnectRemoteControlChannelsForDestination:(id)destination error:(id)error
{
  destinationCopy = destination;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_workerQueue);
  v8 = [(NSMutableDictionary *)self->_remoteControlConnections objectForKeyedSubscript:destinationCopy];
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000D3558;
  v14 = &unk_1004BB950;
  v15 = destinationCopy;
  v16 = errorCopy;
  v9 = errorCopy;
  v10 = destinationCopy;
  [v8 enumerateKeysAndObjectsUsingBlock:&v11];
  [(NSMutableDictionary *)self->_remoteControlConnections setObject:0 forKeyedSubscript:v10, v11, v12, v13, v14];
}

- (void)_onWorkerQueue_disconnectAllRemoteControlChannelsWithError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_workerQueue);
  v5 = [(NSMutableDictionary *)self->_remoteControlConnections copy];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D3708;
  v7[3] = &unk_1004BB978;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (MRDIDSCompanionRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end