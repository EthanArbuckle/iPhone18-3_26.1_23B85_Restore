@interface MRDAirPlayRemoteControlService
- (MRDAirPlayRemoteControlService)init;
- (MRDAirPlayRemoteControlServiceDelegate)delegate;
- (NSString)debugDescription;
- (void)_didCloseCommunicationChannel:(id)a3 error:(id)a4;
- (void)_didReceiveData:(id)a3 fromCommunicationChannel:(id)a4 connectionFactory:(id)a5;
- (void)_handleNewConnection:(id)a3 forServiceType:(int64_t)a4;
- (void)_startImmediately;
- (void)dealloc;
- (void)didCloseCommunicationChannel:(id)a3;
- (void)didReceiveData:(id)a3 fromCommunicationChannel:(id)a4;
- (void)outputContext:(id)a3 didCloseCommunicationChannel:(id)a4;
- (void)outputContext:(id)a3 didReceiveData:(id)a4 fromCommunicationChannel:(id)a5;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMapTable *)v2->_connections objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v8 = [NSString alloc];
  v9 = objc_opt_class();
  if (v2->_started)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = MRCreateIndentedDebugDescriptionFromArray();
  mrRelayConnectionManager = v2->_mrRelayConnectionManager;
  v13 = MRCreateIndentedDebugDescriptionFromObject();
  v14 = [v8 initWithFormat:@"<%@:%p {\n  started = %@\n  connections = %@\n  relayConnectionManager = %@\n}>", v9, v2, v10, v11, v13];

  objc_sync_exit(v2);

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

- (void)outputContext:(id)a3 didReceiveData:(id)a4 fromCommunicationChannel:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  workerQueue = self->_workerQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100142350;
  v15[3] = &unk_1004B7310;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(workerQueue, v15);
}

- (void)outputContext:(id)a3 didCloseCommunicationChannel:(id)a4
{
  v5 = a4;
  workerQueue = self->_workerQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001424E4;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(workerQueue, v8);
}

- (void)didReceiveData:(id)a3 fromCommunicationChannel:(id)a4
{
  v6 = a3;
  v7 = a4;
  workerQueue = self->_workerQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100142610;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(workerQueue, block);
}

- (void)didCloseCommunicationChannel:(id)a3
{
  v4 = a3;
  workerQueue = self->_workerQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100142780;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(workerQueue, v7);
}

- (void)_didReceiveData:(id)a3 fromCommunicationChannel:(id)a4 connectionFactory:(id)a5
{
  v34 = a3;
  v8 = a4;
  v9 = a5;
  dispatch_assert_queue_V2(self->_workerQueue);
  if (self->_started)
  {
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(NSMapTable *)v10->_connections objectForKey:v8];
    if (v11 || (v9[2](v9), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      objc_sync_exit(v10);
      v12 = v11;
    }

    else
    {
      [(NSMapTable *)v10->_connections setObject:v12 forKey:v8];
      objc_sync_exit(v10);

      v13 = objc_alloc_init(MRDeviceInfo);
      v14 = [MRProtocolMessage protocolMessageWithProtobufData:v34 error:0];
      v15 = v14;
      if (v14 && [v14 type] == 133)
      {
        v16 = v15;
        v17 = [v16 serviceType];
        v33 = v17;
        if ([v17 isEqualToString:@"RemoteControl"])
        {
          v18 = 0;
          v19 = 0;
        }

        else
        {
          v18 = [v17 isEqualToString:@"MRRelay"];
          v19 = v18;
        }

        v21 = [v16 destinationGroupUID];
        [v12 setDestinationGroupUID:v21];

        v22 = [v16 destinationOutputDeviceUID];
        [v12 setDestinationOutputDeviceUID:v22];

        v23 = [v16 sourceOutputDeviceUID];
        [(MRDAirPlayRemoteControlService *)v13 setDeviceUID:v23];

        v24 = [v16 sourceOutputDeviceName];
        [(MRDAirPlayRemoteControlService *)v13 setName:v24];

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
          v28 = [v16 replyIdentifier];
          [v27 setReplyIdentifier:v28];

          v29 = [v27 protobufData];
          [v12 sendTransportData:v29 options:0];

          v30 = +[MRProtocolMessageLogger sharedLogger];
          [v30 logMessage:@"Message Sent:" label:v25 deviceInfo:v13 protocolMessage:v27];
        }

        v31 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v12 deviceInfo:v13];
        [(MRDAirPlayRemoteControlService *)v10 _handleNewConnection:v31 forServiceType:v32];

        goto LABEL_5;
      }

      v20 = [[MRExternalDeviceTransportConnectionHandle alloc] initWithConnection:v12 deviceInfo:v13];
      [(MRDAirPlayRemoteControlService *)v10 _handleNewConnection:v20 forServiceType:0];

      v10 = v13;
      v11 = v12;
    }

    [v11 ingestData:v34];
LABEL_5:
  }
}

- (void)_didCloseCommunicationChannel:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_workerQueue);
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMapTable *)v7->_connections objectForKey:v9];
  objc_sync_exit(v7);

  [v8 closeWithError:v6];
}

- (void)_handleNewConnection:(id)a3 forServiceType:(int64_t)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v9 = v6;
    [(MRDMRRelayConnectionManager *)self->_mrRelayConnectionManager ingestConnection:v6];
  }

  else
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v9 = v6;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [v9 connection];
    [WeakRetained airPlayRemoteControlService:self didAcceptConnection:v8];
  }

  v6 = v9;
LABEL_6:
}

- (MRDAirPlayRemoteControlServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end