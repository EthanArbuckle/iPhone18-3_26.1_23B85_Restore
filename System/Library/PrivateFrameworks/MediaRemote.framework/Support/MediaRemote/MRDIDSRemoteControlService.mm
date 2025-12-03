@interface MRDIDSRemoteControlService
- (MRDIDSRemoteControlService)initWithRoutingDataSource:(id)source;
- (MRDIDSRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (id)_createDiscoveryChannelForIDSConnection:(id)connection deviceInfo:(id)info;
- (id)_createRemoteControlChannelForIDSConnection:(id)connection deviceInfo:(id)info destination:(id)destination session:(id)session userInfo:(id)userInfo;
- (void)_addAuthorizationCallbackForOutputDevice:(id)device destination:(id)destination session:(id)session;
- (void)_handleConnectRemoteControlMessage:(id)message fromDevice:(id)device destination:(id)destination session:(id)session;
- (void)_handleDiscoveryMessage:(id)message fromDevice:(id)device;
- (void)_intializeClient:(id)client forRemoteControlChannel:(id)channel authCallback:(id)callback completion:(id)completion;
- (void)_onWorkerQueue_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options;
- (void)_removeAuthorizationCallbackForOutputDevice:(id)device;
- (void)clientConnection:(id)connection didReceiveMessage:(id)message;
- (void)clientDidDisconnect:(id)disconnect error:(id)error;
- (void)handleSetDiscoveryModeMessage:(id)message forClient:(id)client;
- (void)start;
- (void)stop;
@end

@implementation MRDIDSRemoteControlService

- (MRDIDSRemoteControlService)initWithRoutingDataSource:(id)source
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = MRDIDSRemoteControlService;
  v6 = [(MRDIDSRemoteControlService *)&v13 init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.%@", objc_opt_class()];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(uTF8String, v9);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v10;

    objc_storeStrong(&v6->_routingDataSource, source);
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  service = self->_service;
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" Service = %@\n", v5];

  allValues = [(NSMutableDictionary *)self->_discoveryChannels allValues];
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@" DiscoveryChannels = %@\n", v7];

  allValues2 = [(NSMutableDictionary *)self->_remoteControlChannels allValues];
  v9 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@" RemoteControlChannels = %@\n", v9];

  [v3 appendFormat:@"}>"];

  return v3;
}

- (void)start
{
  if (!self->_service)
  {
    v3 = +[MRDIDSService sharedService];
    service = self->_service;
    self->_service = v3;

    objc_initWeak(&location, self);
    v5 = self->_service;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000ABC84;
    v8[3] = &unk_1004BA1E0;
    objc_copyWeak(&v9, &location);
    v6 = [(MRDIDSService *)v5 addMessageHandler:v8];
    serviceToken = self->_serviceToken;
    self->_serviceToken = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)stop
{
  [(MRDIDSService *)self->_service removeHandler:self->_serviceToken];
  serviceToken = self->_serviceToken;
  self->_serviceToken = 0;

  service = self->_service;
  self->_service = 0;
}

- (void)clientConnection:(id)connection didReceiveMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = connectionCopy;
  type = [messageCopy type];
  if (type == 101)
  {
    [(MRDIDSRemoteControlService *)self handleSetDiscoveryModeMessage:messageCopy forClient:v9];
  }

  else if (type == 38)
  {
    [(MRDIDSRemoteControlService *)self handleSetConnectionStateMessage:messageCopy forClient:v9];
  }
}

- (void)clientDidDisconnect:(id)disconnect error:(id)error
{
  disconnectCopy = disconnect;
  errorCopy = error;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC028;
  block[3] = &unk_1004B69D0;
  v12 = disconnectCopy;
  v13 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  v10 = disconnectCopy;
  dispatch_async(workerQueue, block);
}

- (void)handleSetDiscoveryModeMessage:(id)message forClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC210;
  block[3] = &unk_1004B69D0;
  v12 = messageCopy;
  v13 = clientCopy;
  selfCopy = self;
  v9 = clientCopy;
  v10 = messageCopy;
  dispatch_async(workerQueue, block);
}

- (void)_handleDiscoveryMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_workerQueue);
  mr_deviceInfo = [deviceCopy mr_deviceInfo];
  deviceUID = [mr_deviceInfo deviceUID];
  v10 = [(NSMutableDictionary *)self->_discoveryChannels objectForKeyedSubscript:deviceUID];
  if (!v10)
  {
    v11 = [[MRDIDSServiceConnection alloc] initWithDevice:deviceCopy];
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AC4E8;
    v18[3] = &unk_1004B7608;
    objc_copyWeak(&v20, &location);
    v12 = deviceUID;
    v19 = v12;
    [(MRDIDSServiceConnection *)v11 setInvalidationHandler:v18];
    v10 = [(MRDIDSRemoteControlService *)self _createDiscoveryChannelForIDSConnection:v11 deviceInfo:mr_deviceInfo];
    discoveryChannels = self->_discoveryChannels;
    if (!discoveryChannels)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = self->_discoveryChannels;
      self->_discoveryChannels = v14;

      discoveryChannels = self->_discoveryChannels;
    }

    [(NSMutableDictionary *)discoveryChannels setObject:v10 forKeyedSubscript:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  transport = [v10 transport];
  data = [messageCopy data];
  [transport ingestData:data];
}

- (void)_handleConnectRemoteControlMessage:(id)message fromDevice:(id)device destination:(id)destination session:(id)session
{
  messageCopy = message;
  deviceCopy = device;
  destinationCopy = destination;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_workerQueue);
  mr_deviceInfo = [deviceCopy mr_deviceInfo];
  deviceUID = [mr_deviceInfo deviceUID];
  data = [messageCopy data];
  if (data)
  {
    data2 = [messageCopy data];
    v43 = 0;
    v17 = [NSPropertyListSerialization propertyListWithData:data2 options:0 format:0 error:&v43];
    v31 = v43;
  }

  else
  {
    v17 = 0;
    v31 = 0;
  }

  v18 = [[MRDIDSServiceConnection alloc] initWithDevice:deviceCopy];
  v33 = v17;
  v19 = [(MRDIDSRemoteControlService *)self _createRemoteControlChannelForIDSConnection:v18 deviceInfo:mr_deviceInfo destination:destinationCopy session:sessionCopy userInfo:v17];
  remoteControlChannels = self->_remoteControlChannels;
  if (!remoteControlChannels)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = self->_remoteControlChannels;
    self->_remoteControlChannels = v21;

    remoteControlChannels = self->_remoteControlChannels;
  }

  v34 = mr_deviceInfo;
  v35 = deviceCopy;
  v23 = [(NSMutableDictionary *)remoteControlChannels objectForKeyedSubscript:deviceUID, v31];
  if (!v23)
  {
    v23 = objc_alloc_init(MRDIDSRemoteControlServiceRemoteControlChannels);
    [(NSMutableDictionary *)self->_remoteControlChannels setObject:v23 forKeyedSubscript:deviceUID];
  }

  [(MRDIDSRemoteControlServiceRemoteControlChannels *)v23 addChannel:v19 forDestination:destinationCopy session:sessionCopy];
  delegate = [(MRDIDSRemoteControlService *)self delegate];
  transport = [v19 transport];
  v26 = [delegate idsRemoteControlService:self didAcceptConnection:transport];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000AC958;
  v39[3] = &unk_1004BA250;
  v40 = v18;
  v41 = destinationCopy;
  v42 = sessionCopy;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000ACB58;
  v37[3] = &unk_1004B6FC0;
  v38 = messageCopy;
  v27 = messageCopy;
  v28 = sessionCopy;
  v29 = destinationCopy;
  v30 = v18;
  [(MRDIDSRemoteControlService *)self _intializeClient:v26 forRemoteControlChannel:v19 authCallback:v39 completion:v37];
}

- (id)_createDiscoveryChannelForIDSConnection:(id)connection deviceInfo:(id)info
{
  connectionCopy = connection;
  infoCopy = info;
  if (qword_1005292C8 != -1)
  {
    sub_1003A6A04();
  }

  v8 = [MRDIDSTransportConnection alloc];
  v9 = [(MRDIDSTransportConnection *)v8 initWithConnection:connectionCopy type:MRIDSServiceMessageTypeDiscovery destination:0 session:0];
  v10 = [MRDIDSServerClientConnection alloc];
  v11 = [(MRDIDSServerClientConnection *)v10 initWithConnection:v9 replyQueue:qword_1005292C0];
  [(MRDIDSServerClientConnection *)v11 setDeviceInfo:infoCopy];
  initWithAllSupportedMessages = [[MRSupportedProtocolMessages alloc] initWithAllSupportedMessages];
  [(MRDIDSServerClientConnection *)v11 setSupportedMessages:initWithAllSupportedMessages];

  [(MRDIDSServerClientConnection *)v11 setDelegate:self];
  v13 = objc_alloc_init(MRDIDSRemoteControlServiceDiscoveryChannel);
  [(MRDIDSRemoteControlServiceDiscoveryChannel *)v13 setTransport:v9];
  [(MRDIDSRemoteControlServiceDiscoveryChannel *)v13 setClient:v11];
  v14 = _MRLogForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v13;
    v18 = 2112;
    v19 = infoCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDIDSRemoteControlService] Created new DiscoveryChannel %@ for device=%@", &v16, 0x16u);
  }

  return v13;
}

- (id)_createRemoteControlChannelForIDSConnection:(id)connection deviceInfo:(id)info destination:(id)destination session:(id)session userInfo:(id)userInfo
{
  connectionCopy = connection;
  infoCopy = info;
  destinationCopy = destination;
  sessionCopy = session;
  userInfoCopy = userInfo;
  v35 = infoCopy;
  deviceUID = [infoCopy deviceUID];
  v36 = [(NSMutableDictionary *)self->_remoteControlChannels objectForKeyedSubscript:deviceUID];
  [v36 removeChannelForDestination:destinationCopy];
  v17 = [MRDIDSTransportConnection alloc];
  v18 = [(MRDIDSTransportConnection *)v17 initWithConnection:connectionCopy type:MRIDSServiceMessageTypeRemoteControl destination:destinationCopy session:sessionCopy];
  sessionCopy = [[NSString alloc] initWithFormat:@"IDSRemoteControlChannel-<%@/%@>", destinationCopy, sessionCopy];
  [(MRDIDSTransportConnection *)v18 setLabel:sessionCopy];

  v20 = IDSCopyLocalDeviceUniqueID();
  if ([destinationCopy isEqualToString:v20])
  {
    v21 = 0;
  }

  else
  {
    v21 = destinationCopy;
  }

  [(MRDIDSTransportConnection *)v18 setDestinationOutputDeviceUID:v21];

  [(MRDIDSTransportConnection *)v18 setConnectUserInfo:userInfoCopy];
  v22 = objc_alloc_init(MRDIDSRemoteControlServiceRemoteControlChannel);
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setDestination:destinationCopy];
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setSession:sessionCopy];
  v23 = +[NSDate now];
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setConnectionAttemptDate:v23];

  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setTransport:v18];
  objc_initWeak(&location, self);
  v24 = +[NSNotificationCenter defaultCenter];
  transport = [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 transport];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000AD1F8;
  v38[3] = &unk_1004B9060;
  objc_copyWeak(&v43, &location);
  v26 = deviceUID;
  v39 = v26;
  v27 = destinationCopy;
  v40 = v27;
  v28 = sessionCopy;
  v41 = v28;
  v29 = connectionCopy;
  v42 = v29;
  v30 = [v24 addObserverForName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:transport queue:0 usingBlock:v38];
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setNotificationToken:v30];

  v31 = _MRLogForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v46 = v22;
    v47 = 2112;
    v48 = v35;
    v49 = 2112;
    v50 = v27;
    v51 = 2112;
    v52 = v28;
    v53 = 2112;
    v54 = userInfoCopy;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[MRDIDSRemoteControlService] Created new RemoteControlChannel %@ for device=%@ destination=%@ session=%@ with userInfo=%@", buf, 0x34u);
  }

  v32 = v42;
  v33 = v22;

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  return v33;
}

- (void)_intializeClient:(id)client forRemoteControlChannel:(id)channel authCallback:(id)callback completion:(id)completion
{
  clientCopy = client;
  channelCopy = channel;
  callbackCopy = callback;
  completionCopy = completion;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AD520;
  v18[3] = &unk_1004BA2E8;
  v19 = channelCopy;
  v20 = clientCopy;
  v24 = [clientCopy connectOptions] & 1;
  selfCopy = self;
  v22 = completionCopy;
  v23 = callbackCopy;
  v14 = callbackCopy;
  v15 = clientCopy;
  v16 = completionCopy;
  v17 = channelCopy;
  [v15 requestDestinationEndpoint:v18];
}

- (void)_onWorkerQueue_sendEndpoint:(id)endpoint toClient:(id)client options:(id)options
{
  endpointCopy = endpoint;
  clientCopy = client;
  optionsCopy = options;
  if ([clientCopy discoveryMode])
  {
    connection = [clientCopy connection];
    v10 = [connection exportEndpoint:endpointCopy];

    if (v10)
    {
      v11 = [MRDiscoveryUpdateOutputDevicesMessage alloc];
      outputDevices = [v10 outputDevices];
      configuration = [clientCopy configuration];
      v14 = [v11 initWithOutputDevices:outputDevices configuration:configuration];

      [v14 setTransportOptions:optionsCopy];
      [clientCopy sendMessage:v14];
    }
  }
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
  v16[2] = sub_1000ADA84;
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

- (MRDIDSRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end