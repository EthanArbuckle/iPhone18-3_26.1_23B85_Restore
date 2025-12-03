@interface MRIDSCompanionTransport
- (MRIDSCompanionTransport)initWithOutputDevice:(id)device;
- (id)_generateSessionUID;
- (id)createConnectionWithUserInfo:(id)info;
- (id)error;
- (id)name;
- (id)uid;
- (void)_handleDeviceConnected:(id)connected;
- (void)_handleDeviceDisconnected:(id)disconnected;
- (void)_synchronized_setSessionUID:(id)d;
- (void)resetWithError:(id)error;
- (void)setSessionUID:(id)d;
@end

@implementation MRIDSCompanionTransport

- (MRIDSCompanionTransport)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = MRIDSCompanionTransport;
  v6 = [(MRIDSCompanionTransport *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, device);
    v8 = objc_alloc_init(MRDeviceInfo);
    name = [deviceCopy name];
    [(MRDeviceInfo *)v8 setName:name];

    primaryID = [deviceCopy primaryID];
    [(MRDeviceInfo *)v8 setDeviceUID:primaryID];

    deviceInfo = v7->_deviceInfo;
    v7->_deviceInfo = v8;
    v12 = v8;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v14 = +[MRIDSCompanionConnection sharedManager];
    [defaultCenter addObserver:v7 selector:sel__handleDeviceConnected_ name:@"MRIDSCompanionConnectionDeviceDidConnect" object:v14];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v16 = +[MRIDSCompanionConnection sharedManager];
    [defaultCenter2 addObserver:v7 selector:sel__handleDeviceDisconnected_ name:@"MRIDSCompanionConnectionDeviceDidDisconnect" object:v16];
  }

  return v7;
}

- (id)name
{
  deviceInfo = [(MRIDSCompanionTransport *)self deviceInfo];
  name = [deviceInfo name];

  return name;
}

- (id)uid
{
  deviceInfo = [(MRIDSCompanionTransport *)self deviceInfo];
  wHAIdentifier = [deviceInfo WHAIdentifier];

  return wHAIdentifier;
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_error;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)createConnectionWithUserInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sessionUID = [(MRIDSCompanionTransport *)selfCopy sessionUID];

  if (sessionUID)
  {
    goto LABEL_2;
  }

  _generateSessionUID = [(MRIDSCompanionTransport *)selfCopy _generateSessionUID];
  [(MRIDSCompanionTransport *)selfCopy setSessionUID:_generateSessionUID];

  v9 = +[MRIDSCompanionConnection sharedManager];
  isConnected = [v9 isConnected];

  if (isConnected)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__20;
    v40 = __Block_byref_object_dispose__20;
    v41 = 0;
    v11 = +[MRIDSCompanionConnection sharedManager];
    v12 = [(MRIDSCompanionTransport *)selfCopy uid];
    sessionUID2 = [(MRIDSCompanionTransport *)selfCopy sessionUID];
    [v11 setMessageHandler:&__block_literal_global_47 forType:@"Protobuf" destination:v12 session:sessionUID2];

    v14 = dispatch_semaphore_create(0);
    v35 = 0;
    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:infoCopy format:200 options:0 error:&v35];
    v31 = v35;
    v16 = +[MRIDSCompanionConnection sharedManager];
    v17 = [(MRIDSCompanionTransport *)selfCopy uid];
    sessionUID3 = [(MRIDSCompanionTransport *)selfCopy sessionUID];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__MRIDSCompanionTransport_createConnectionWithUserInfo___block_invoke_3;
    v32[3] = &unk_1E769F070;
    v34 = &v36;
    v19 = v14;
    v33 = v19;
    [v16 sendMessage:v15 type:@"ConnectRemoteControl" destination:v17 session:sessionUID3 options:0 priority:300 response:v32];

    if (selfCopy->_shouldUseSystemAuthenticationPrompt)
    {
      v20 = 90000000000;
    }

    else
    {
      v20 = 14000000000;
    }

    v21 = dispatch_time(0, v20);
    v22 = dispatch_semaphore_wait(v19, v21);
    v23 = v37[5];
    if (!v22 && !v23)
    {

      _Block_object_dispose(&v36, 8);
      v24 = [MRIDSCompanionTransportConnection alloc];
      v25 = +[MRIDSCompanionConnection sharedManager];
      v26 = [(MRIDSCompanionTransport *)selfCopy uid];
      sessionUID4 = [(MRIDSCompanionTransport *)selfCopy sessionUID];
      v28 = [(MRIDSCompanionTransportConnection *)v24 initWithConnection:v25 type:@"RemoteControl" destination:v26 session:sessionUID4];
      connection = selfCopy->_connection;
      selfCopy->_connection = v28;

LABEL_2:
      objc_sync_exit(selfCopy);

      v7 = selfCopy->_connection;
      goto LABEL_12;
    }

    objc_storeStrong(&selfCopy->_error, v23);

    _Block_object_dispose(&v36, 8);
  }

  objc_sync_exit(selfCopy);

  v7 = 0;
LABEL_12:

  return v7;
}

void __56__MRIDSCompanionTransport_createConnectionWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 data];
  v12 = 0;
  v4 = [MRProtocolMessage protocolMessageWithProtobufData:v3 error:&v12];
  v5 = v12;

  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = +[MRMediaRemoteServiceClient sharedServiceClient];
      v7 = [v6 workerQueue];

      v8 = v4;
      v9 = MRGetSharedService();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __56__MRIDSCompanionTransport_createConnectionWithUserInfo___block_invoke_2;
      v10[3] = &unk_1E769C6E0;
      v11 = v2;
      MRMediaRemoteServicePromptRouteAuthorization(v9, v8, v7, v10);
    }
  }
}

void __56__MRIDSCompanionTransport_createConnectionWithUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 protobufData];
  [v2 replyWithData:v3 priority:300];
}

void __56__MRIDSCompanionTransport_createConnectionWithUserInfo___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 data];

  if (v4)
  {
    v5 = [v3 data];
    v11 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v11];
    v7 = v11;

    v8 = [v6 error];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)resetWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRIDSCompanionTransport *)selfCopy _synchronized_setSessionUID:0];
  [(MRIDSCompanionTransportConnection *)selfCopy->_connection closeWithError:errorCopy];
  objc_sync_exit(selfCopy);
}

- (void)setSessionUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRIDSCompanionTransport *)selfCopy _synchronized_setSessionUID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)_synchronized_setSessionUID:(id)d
{
  dCopy = d;
  if (self->_sessionUID)
  {
    v6 = +[MRIDSCompanionConnection sharedManager];
    v7 = [(MRIDSCompanionTransport *)self uid];
    [v6 removeMessageHandlerForType:@"DisconnectRemoteControl" destination:v7 session:self->_sessionUID];

    v8 = +[MRIDSCompanionConnection sharedManager];
    v9 = [(MRIDSCompanionTransport *)self uid];
    [v8 removeMessageHandlerForType:@"Protobuf" destination:v9 session:self->_sessionUID];
  }

  objc_storeStrong(&self->_sessionUID, d);
  if (self->_sessionUID)
  {
    objc_initWeak(&location, self);
    v10 = +[MRIDSCompanionConnection sharedManager];
    v12 = MEMORY[0x1E69E9820];
    objc_copyWeak(&v13, &location);
    v11 = [(MRIDSCompanionTransport *)self uid:v12];
    [v10 setMessageHandler:&v12 forType:@"DisconnectRemoteControl" destination:v11 session:self->_sessionUID];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __55__MRIDSCompanionTransport__synchronized_setSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 data];
    v8 = 0;
    v6 = [MRProtocolMessage protocolMessageWithProtobufData:v5 error:&v8];

    v7 = [v6 error];
    [WeakRetained resetWithError:v7];
  }
}

- (id)_generateSessionUID
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v5 = [v2 initWithFormat:@"%@-%d", uUIDString, ++_generateSessionUID_sessionUID_0];

  return v5;
}

- (void)_handleDeviceConnected:(id)connected
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"IDSConnection Reset"];
  [(MRIDSCompanionTransport *)self resetWithError:v4];
}

- (void)_handleDeviceDisconnected:(id)disconnected
{
  v4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:105 description:@"IDSConnection Disconnected"];
  [(MRIDSCompanionTransport *)self resetWithError:v4];
}

@end