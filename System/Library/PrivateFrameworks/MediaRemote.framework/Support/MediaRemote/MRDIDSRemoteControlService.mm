@interface MRDIDSRemoteControlService
- (MRDIDSRemoteControlService)initWithRoutingDataSource:(id)a3;
- (MRDIDSRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (id)_createDiscoveryChannelForIDSConnection:(id)a3 deviceInfo:(id)a4;
- (id)_createRemoteControlChannelForIDSConnection:(id)a3 deviceInfo:(id)a4 destination:(id)a5 session:(id)a6 userInfo:(id)a7;
- (void)_addAuthorizationCallbackForOutputDevice:(id)a3 destination:(id)a4 session:(id)a5;
- (void)_handleConnectRemoteControlMessage:(id)a3 fromDevice:(id)a4 destination:(id)a5 session:(id)a6;
- (void)_handleDiscoveryMessage:(id)a3 fromDevice:(id)a4;
- (void)_intializeClient:(id)a3 forRemoteControlChannel:(id)a4 authCallback:(id)a5 completion:(id)a6;
- (void)_onWorkerQueue_sendEndpoint:(id)a3 toClient:(id)a4 options:(id)a5;
- (void)_removeAuthorizationCallbackForOutputDevice:(id)a3;
- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4;
- (void)clientDidDisconnect:(id)a3 error:(id)a4;
- (void)handleSetDiscoveryModeMessage:(id)a3 forClient:(id)a4;
- (void)start;
- (void)stop;
@end

@implementation MRDIDSRemoteControlService

- (MRDIDSRemoteControlService)initWithRoutingDataSource:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MRDIDSRemoteControlService;
  v6 = [(MRDIDSRemoteControlService *)&v13 init];
  if (v6)
  {
    v7 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.%@", objc_opt_class()];
    v8 = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create(v8, v9);
    workerQueue = v6->_workerQueue;
    v6->_workerQueue = v10;

    objc_storeStrong(&v6->_routingDataSource, a3);
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  service = self->_service;
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" Service = %@\n", v5];

  v6 = [(NSMutableDictionary *)self->_discoveryChannels allValues];
  v7 = MRCreateIndentedDebugDescriptionFromArray();
  [v3 appendFormat:@" DiscoveryChannels = %@\n", v7];

  v8 = [(NSMutableDictionary *)self->_remoteControlChannels allValues];
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

- (void)clientConnection:(id)a3 didReceiveMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v9 = v6;
  v8 = [v7 type];
  if (v8 == 101)
  {
    [(MRDIDSRemoteControlService *)self handleSetDiscoveryModeMessage:v7 forClient:v9];
  }

  else if (v8 == 38)
  {
    [(MRDIDSRemoteControlService *)self handleSetConnectionStateMessage:v7 forClient:v9];
  }
}

- (void)clientDidDisconnect:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC028;
  block[3] = &unk_1004B69D0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(workerQueue, block);
}

- (void)handleSetDiscoveryModeMessage:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC210;
  block[3] = &unk_1004B69D0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(workerQueue, block);
}

- (void)_handleDiscoveryMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workerQueue);
  v8 = [v7 mr_deviceInfo];
  v9 = [v8 deviceUID];
  v10 = [(NSMutableDictionary *)self->_discoveryChannels objectForKeyedSubscript:v9];
  if (!v10)
  {
    v11 = [[MRDIDSServiceConnection alloc] initWithDevice:v7];
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000AC4E8;
    v18[3] = &unk_1004B7608;
    objc_copyWeak(&v20, &location);
    v12 = v9;
    v19 = v12;
    [(MRDIDSServiceConnection *)v11 setInvalidationHandler:v18];
    v10 = [(MRDIDSRemoteControlService *)self _createDiscoveryChannelForIDSConnection:v11 deviceInfo:v8];
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

  v16 = [v10 transport];
  v17 = [v6 data];
  [v16 ingestData:v17];
}

- (void)_handleConnectRemoteControlMessage:(id)a3 fromDevice:(id)a4 destination:(id)a5 session:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_workerQueue);
  v14 = [v11 mr_deviceInfo];
  v36 = [v14 deviceUID];
  v15 = [v10 data];
  if (v15)
  {
    v16 = [v10 data];
    v43 = 0;
    v17 = [NSPropertyListSerialization propertyListWithData:v16 options:0 format:0 error:&v43];
    v31 = v43;
  }

  else
  {
    v17 = 0;
    v31 = 0;
  }

  v18 = [[MRDIDSServiceConnection alloc] initWithDevice:v11];
  v33 = v17;
  v19 = [(MRDIDSRemoteControlService *)self _createRemoteControlChannelForIDSConnection:v18 deviceInfo:v14 destination:v12 session:v13 userInfo:v17];
  remoteControlChannels = self->_remoteControlChannels;
  if (!remoteControlChannels)
  {
    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = self->_remoteControlChannels;
    self->_remoteControlChannels = v21;

    remoteControlChannels = self->_remoteControlChannels;
  }

  v34 = v14;
  v35 = v11;
  v23 = [(NSMutableDictionary *)remoteControlChannels objectForKeyedSubscript:v36, v31];
  if (!v23)
  {
    v23 = objc_alloc_init(MRDIDSRemoteControlServiceRemoteControlChannels);
    [(NSMutableDictionary *)self->_remoteControlChannels setObject:v23 forKeyedSubscript:v36];
  }

  [(MRDIDSRemoteControlServiceRemoteControlChannels *)v23 addChannel:v19 forDestination:v12 session:v13];
  v24 = [(MRDIDSRemoteControlService *)self delegate];
  v25 = [v19 transport];
  v26 = [v24 idsRemoteControlService:self didAcceptConnection:v25];

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000AC958;
  v39[3] = &unk_1004BA250;
  v40 = v18;
  v41 = v12;
  v42 = v13;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000ACB58;
  v37[3] = &unk_1004B6FC0;
  v38 = v10;
  v27 = v10;
  v28 = v13;
  v29 = v12;
  v30 = v18;
  [(MRDIDSRemoteControlService *)self _intializeClient:v26 forRemoteControlChannel:v19 authCallback:v39 completion:v37];
}

- (id)_createDiscoveryChannelForIDSConnection:(id)a3 deviceInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_1005292C8 != -1)
  {
    sub_1003A6A04();
  }

  v8 = [MRDIDSTransportConnection alloc];
  v9 = [(MRDIDSTransportConnection *)v8 initWithConnection:v6 type:MRIDSServiceMessageTypeDiscovery destination:0 session:0];
  v10 = [MRDIDSServerClientConnection alloc];
  v11 = [(MRDIDSServerClientConnection *)v10 initWithConnection:v9 replyQueue:qword_1005292C0];
  [(MRDIDSServerClientConnection *)v11 setDeviceInfo:v7];
  v12 = [[MRSupportedProtocolMessages alloc] initWithAllSupportedMessages];
  [(MRDIDSServerClientConnection *)v11 setSupportedMessages:v12];

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
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[MRDIDSRemoteControlService] Created new DiscoveryChannel %@ for device=%@", &v16, 0x16u);
  }

  return v13;
}

- (id)_createRemoteControlChannelForIDSConnection:(id)a3 deviceInfo:(id)a4 destination:(id)a5 session:(id)a6 userInfo:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v37 = a7;
  v35 = v13;
  v16 = [v13 deviceUID];
  v36 = [(NSMutableDictionary *)self->_remoteControlChannels objectForKeyedSubscript:v16];
  [v36 removeChannelForDestination:v14];
  v17 = [MRDIDSTransportConnection alloc];
  v18 = [(MRDIDSTransportConnection *)v17 initWithConnection:v12 type:MRIDSServiceMessageTypeRemoteControl destination:v14 session:v15];
  v19 = [[NSString alloc] initWithFormat:@"IDSRemoteControlChannel-<%@/%@>", v14, v15];
  [(MRDIDSTransportConnection *)v18 setLabel:v19];

  v20 = IDSCopyLocalDeviceUniqueID();
  if ([v14 isEqualToString:v20])
  {
    v21 = 0;
  }

  else
  {
    v21 = v14;
  }

  [(MRDIDSTransportConnection *)v18 setDestinationOutputDeviceUID:v21];

  [(MRDIDSTransportConnection *)v18 setConnectUserInfo:v37];
  v22 = objc_alloc_init(MRDIDSRemoteControlServiceRemoteControlChannel);
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setDestination:v14];
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setSession:v15];
  v23 = +[NSDate now];
  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setConnectionAttemptDate:v23];

  [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 setTransport:v18];
  objc_initWeak(&location, self);
  v24 = +[NSNotificationCenter defaultCenter];
  v25 = [(MRDIDSRemoteControlServiceRemoteControlChannel *)v22 transport];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000AD1F8;
  v38[3] = &unk_1004B9060;
  objc_copyWeak(&v43, &location);
  v26 = v16;
  v39 = v26;
  v27 = v14;
  v40 = v27;
  v28 = v15;
  v41 = v28;
  v29 = v12;
  v42 = v29;
  v30 = [v24 addObserverForName:@"MRDMediaRemoteExternalDeviceServerClientInvalidatedNotification" object:v25 queue:0 usingBlock:v38];
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
    v54 = v37;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[MRDIDSRemoteControlService] Created new RemoteControlChannel %@ for device=%@ destination=%@ session=%@ with userInfo=%@", buf, 0x34u);
  }

  v32 = v42;
  v33 = v22;

  objc_destroyWeak(&v43);
  objc_destroyWeak(&location);

  return v33;
}

- (void)_intializeClient:(id)a3 forRemoteControlChannel:(id)a4 authCallback:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000AD520;
  v18[3] = &unk_1004BA2E8;
  v19 = v11;
  v20 = v10;
  v24 = [v10 connectOptions] & 1;
  v21 = self;
  v22 = v13;
  v23 = v12;
  v14 = v12;
  v15 = v10;
  v16 = v13;
  v17 = v11;
  [v15 requestDestinationEndpoint:v18];
}

- (void)_onWorkerQueue_sendEndpoint:(id)a3 toClient:(id)a4 options:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  if ([v7 discoveryMode])
  {
    v9 = [v7 connection];
    v10 = [v9 exportEndpoint:v15];

    if (v10)
    {
      v11 = [MRDiscoveryUpdateOutputDevicesMessage alloc];
      v12 = [v10 outputDevices];
      v13 = [v7 configuration];
      v14 = [v11 initWithOutputDevices:v12 configuration:v13];

      [v14 setTransportOptions:v8];
      [v7 sendMessage:v14];
    }
  }
}

- (void)_addAuthorizationCallbackForOutputDevice:(id)a3 destination:(id)a4 session:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  routingDataSource = self->_routingDataSource;
  v12 = [v8 primaryID];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000ADA84;
  v16[3] = &unk_1004BA338;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [(MRDAVRoutingDataSource *)routingDataSource addAuthorizationCallbackForRouteID:v12 requestCallback:v16];
}

- (void)_removeAuthorizationCallbackForOutputDevice:(id)a3
{
  routingDataSource = self->_routingDataSource;
  v4 = [a3 primaryID];
  [(MRDAVRoutingDataSource *)routingDataSource removeAuthorizationCallbackForRouteID:v4];
}

- (MRDIDSRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end