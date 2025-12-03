@interface MRDAirPlayRemoteControlService
- (MRDAirPlayRemoteControlService)init;
- (MRDAirPlayRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (void)_didCloseCommunicationChannel:(id)channel error:(id)error;
- (void)_didReceiveData:(id)data fromCommunicationChannel:(id)channel connectionFactory:(id)factory;
- (void)_handleNewConnection:(id)connection forServiceType:(int64_t)type;
- (void)_startImmediately;
- (void)dealloc;
- (void)didCloseCommunicationChannel:(id)channel;
- (void)didReceiveData:(id)data fromCommunicationChannel:(id)channel;
- (void)outputContext:(id)context didCloseCommunicationChannel:(id)channel;
- (void)outputContext:(id)context didReceiveData:(id)data fromCommunicationChannel:(id)channel;
- (void)start;
- (void)stop;
@end

@implementation MRDAirPlayRemoteControlService

- (MRDAirPlayRemoteControlService)init
{
  v11.receiver = self;
  v11.super_class = MRDAirPlayRemoteControlService;
  v2 = [(MRDAirPlayRemoteControlService *)&v11 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToWeakObjectsMapTable];
    connections = v2->_connections;
    v2->_connections = v3;

    v2->_started = 0;
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mediaremote.MRDAirPlayRemoteControlService.workerQueue", v5);
    workerQueue = v2->_workerQueue;
    v2->_workerQueue = v6;

    v8 = +[MRDMRRelayConnectionManager sharedManager];
    mrRelayConnectionManager = v2->_mrRelayConnectionManager;
    v2->_mrRelayConnectionManager = v8;
  }

  return v2;
}

- (void)dealloc
{
  [(MRDAirPlayRemoteControlService *)self stop];
  v3.receiver = self;
  v3.super_class = MRDAirPlayRemoteControlService;
  [(MRDAirPlayRemoteControlService *)&v3 dealloc];
}

- (NSString)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  objectEnumerator = [(NSMapTable *)selfCopy->_connections objectEnumerator];
  v5 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [v3 addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v8 = [NSString alloc];
  v9 = objc_opt_class();
  if (selfCopy->_started)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = MRCreateIndentedDebugDescriptionFromArray();
  mrRelayConnectionManager = selfCopy->_mrRelayConnectionManager;
  v13 = MRCreateIndentedDebugDescriptionFromObject();
  v14 = [v8 initWithFormat:@"<%@:%p {\n  started = %@\n  connections = %@\n  relayConnectionManager = %@\n}>", v9, selfCopy, v10, v11, v13];

  objc_sync_exit(selfCopy);

  return v14;
}

- (void)_startImmediately
{
  v4 = MRSupportsMediaControlReceiver();
  if (v4)
  {
    if (!sub_100141ED8())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = +[MRUserSettings currentSettings];
    if (([v2 supportUGL] & 1) == 0 || !sub_100141ED8())
    {

      goto LABEL_13;
    }
  }

  v5 = sub_100141ED8();
  v6 = dlsym(v5, "APReceiverMediaRemoteXPCClient_SetDelegate");
  if ((v4 & 1) == 0)
  {
  }

  if (v6)
  {
    v7 = MRLogCategoryConnections();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AirPlayRemoteControlService] Starting AirPlay remote control service", v11, 2u);
    }

    sub_100141FD8(self);
  }

LABEL_13:
  if (!self->_systemMusicContext)
  {
    v8 = +[AVOutputContext sharedAudioPresentationOutputContext];
    [v8 setCommunicationChannelDelegate:self];
    systemMusicContext = self->_systemMusicContext;
    self->_systemMusicContext = v8;
  }

  v10 = +[MRDAVOutputContextManager sharedManager];
  [v10 registerCommunicationsChannels];

  self->_started = 1;
}

- (void)start
{
  workerQueue = self->_workerQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100142158;
  v3[3] = &unk_1004B6D08;
  v3[4] = self;
  sub_10019FEE8(workerQueue, v3);
}

- (void)stop
{
  v4 = MRSupportsMediaControlReceiver();
  if (v4)
  {
    if (!sub_100141ED8())
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = +[MRUserSettings currentSettings];
    if (([v2 supportUGL] & 1) == 0 || !sub_100141ED8())
    {

      goto LABEL_13;
    }
  }

  v5 = sub_100141ED8();
  v6 = dlsym(v5, "APReceiverMediaRemoteXPCClient_SetDelegate");
  if ((v4 & 1) == 0)
  {
  }

  if (v6)
  {
    v7 = MRLogCategoryConnections();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[AirPlayRemoteControlService] Stopping AirPlay remote control service", v8, 2u);
    }

    sub_100141FD8(0);
  }

LABEL_13:
  [(AVOutputContext *)self->_systemMusicContext setCommunicationChannelDelegate:0];
  self->_started = 0;
}

- (void)outputContext:(id)context didReceiveData:(id)data fromCommunicationChannel:(id)channel
{
  contextCopy = context;
  dataCopy = data;
  channelCopy = channel;
  workerQueue = self->_workerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100142350;
  v15[3] = &unk_1004B7310;
  v15[4] = self;
  v16 = dataCopy;
  v17 = channelCopy;
  v18 = contextCopy;
  v12 = contextCopy;
  v13 = channelCopy;
  v14 = dataCopy;
  dispatch_async(workerQueue, v15);
}

- (void)outputContext:(id)context didCloseCommunicationChannel:(id)channel
{
  channelCopy = channel;
  workerQueue = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001424E4;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = channelCopy;
  v7 = channelCopy;
  dispatch_async(workerQueue, v8);
}

- (void)didReceiveData:(id)data fromCommunicationChannel:(id)channel
{
  dataCopy = data;
  channelCopy = channel;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142610;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = dataCopy;
  v13 = channelCopy;
  v9 = channelCopy;
  v10 = dataCopy;
  dispatch_async(workerQueue, block);
}

- (void)didCloseCommunicationChannel:(id)channel
{
  channelCopy = channel;
  workerQueue = self->_workerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100142780;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = channelCopy;
  v6 = channelCopy;
  dispatch_async(workerQueue, v7);
}

- (void)_didReceiveData:(id)data fromCommunicationChannel:(id)channel connectionFactory:(id)factory
{
  dataCopy = data;
  channelCopy = channel;
  factoryCopy = factory;
  dispatch_assert_queue_V2(self->_workerQueue);
  if (self->_started)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v11 = [(NSMapTable *)selfCopy->_connections objectForKey:channelCopy];
    if (v11 || (factoryCopy[2](factoryCopy), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      objc_sync_exit(selfCopy);
      v12 = v11;
    }

    else
    {
      [(NSMapTable *)selfCopy->_connections setObject:v12 forKey:channelCopy];
      objc_sync_exit(selfCopy);

      v13 = objc_alloc_init(MRDeviceInfo);
      v14 = [MRProtocolMessage protocolMessageWithProtobufData:dataCopy error:0];
      v15 = v14;
      if (v14 && [v14 type] == 133)
      {
        v16 = v15;
        serviceType = [v16 serviceType];
        v33 = serviceType;
        if ([serviceType isEqualToString:@"RemoteControl"])
        {
          v18 = 0;
          v19 = 0;
        }

        else
        {
          v18 = [serviceType isEqualToString:@"MRRelay"];
          v19 = v18;
        }

        destinationGroupUID = [v16 destinationGroupUID];
        [v12 setDestinationGroupUID:destinationGroupUID];

        destinationOutputDeviceUID = [v16 destinationOutputDeviceUID];
        [v12 setDestinationOutputDeviceUID:destinationOutputDeviceUID];

        sourceOutputDeviceUID = [v16 sourceOutputDeviceUID];
        [(MRDAirPlayRemoteControlService *)v13 setDeviceUID:sourceOutputDeviceUID];

        sourceOutputDeviceName = [v16 sourceOutputDeviceName];
        [(MRDAirPlayRemoteControlService *)v13 setName:sourceOutputDeviceName];

        v32 = v19;
        if (v19)
        {
          v25 = @"MRRelay";
        }

        else
        {
          v25 = @"RemoteControl";
        }

        v26 = +[MRProtocolMessageLogger sharedLogger];
        [v26 logMessage:@"Message Received:" label:v25 deviceInfo:v13 protocolMessage:v16];

        if (v18)
        {
          v27 = objc_alloc_init(MRProtocolMessage);
          replyIdentifier = [v16 replyIdentifier];
          [v27 setReplyIdentifier:replyIdentifier];

          protobufData = [v27 protobufData];
          [v12 sendTransportData:protobufData options:0];

          v30 = +[MRProtocolMessageLogger sharedLogger];
          [v30 logMessage:@"Message Sent:" label:v25 deviceInfo:v13 protocolMessage:v27];
        }

        v31 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v12 deviceInfo:v13];
        [(MRDAirPlayRemoteControlService *)selfCopy _handleNewConnection:v31 forServiceType:v32];

        goto LABEL_5;
      }

      v20 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v12 deviceInfo:v13];
      [(MRDAirPlayRemoteControlService *)selfCopy _handleNewConnection:v20 forServiceType:0];

      selfCopy = v13;
      v11 = v12;
    }

    [v11 ingestData:dataCopy];
LABEL_5:
  }
}

- (void)_didCloseCommunicationChannel:(id)channel error:(id)error
{
  channelCopy = channel;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_workerQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [(NSMapTable *)selfCopy->_connections objectForKey:channelCopy];
  objc_sync_exit(selfCopy);

  [v8 closeWithError:errorCopy];
}

- (void)_handleNewConnection:(id)connection forServiceType:(int64_t)type
{
  connectionCopy = connection;
  if (type == 1)
  {
    v9 = connectionCopy;
    [(MRDMRRelayConnectionManager *)self->_mrRelayConnectionManager ingestConnection:connectionCopy];
  }

  else
  {
    if (type)
    {
      goto LABEL_6;
    }

    v9 = connectionCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    connection = [v9 connection];
    [WeakRetained airPlayRemoteControlService:self didAcceptConnection:connection];
  }

  connectionCopy = v9;
LABEL_6:
}

- (MRDAirPlayRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end