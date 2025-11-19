@interface MRDIDSTransport
- (MRDIDSTransport)initWithOutputDevice:(id)a3;
- (id)_createConnectionWithUserInfo:(id)a3;
- (id)_generateSessionUID;
- (id)createConnectionWithUserInfo:(id)a3;
- (id)debugDescription;
- (id)error;
- (id)name;
- (id)uid;
- (void)_synchronized_setSessionUID:(id)a3;
- (void)resetWithError:(id)a3;
- (void)setSessionUID:(id)a3;
@end

@implementation MRDIDSTransport

- (MRDIDSTransport)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MRDIDSTransport;
  v6 = [(MRDIDSTransport *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, a3);
    v8 = objc_alloc_init(MRDeviceInfo);
    v9 = [v5 name];
    [v8 setName:v9];

    v10 = [v5 primaryID];
    [v8 setDeviceUID:v10];

    objc_storeStrong(&v7->_deviceInfo, v8);
    v11 = [MRDIDSServiceConnection alloc];
    v12 = [v8 deviceUID];
    v13 = [(MRDIDSServiceConnection *)v11 initWithDeviceUID:v12];
    idsConnection = v7->_idsConnection;
    v7->_idsConnection = v13;

    objc_initWeak(&location, v7);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000B48F8;
    v16[3] = &unk_1004B7D50;
    objc_copyWeak(&v17, &location);
    [(MRDIDSServiceConnection *)v7->_idsConnection setInvalidationHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (id)debugDescription
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@:%p {\n", objc_opt_class(), self];
  v4 = self;
  objc_sync_enter(v4);
  idsConnection = v4->_idsConnection;
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@" connection = %@\n", v6];

  [v3 appendFormat:@" outputDevice = %@\n", v4->_outputDevice];
  [v3 appendFormat:@" session = %@\n", v4->_sessionUID];
  [v3 appendFormat:@" error = %@\n", v4->_error];
  objc_sync_exit(v4);

  [v3 appendString:@"}>"];

  return v3;
}

- (id)name
{
  v2 = [(MRDIDSTransport *)self deviceInfo];
  v3 = [v2 name];

  return v3;
}

- (id)uid
{
  v2 = [(MRDIDSTransport *)self deviceInfo];
  v3 = [v2 WHAIdentifier];

  return v3;
}

- (id)error
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_error;
  objc_sync_exit(v2);

  return v3;
}

- (id)createConnectionWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [(MRDIDSTransport *)self sessionUID];

  if (!v5)
  {
    v6 = [(MRDIDSTransport *)self _generateSessionUID];
    [(MRDIDSTransport *)self setSessionUID:v6];

    v7 = dispatch_group_create();
    idsConnection = self->_idsConnection;
    v9 = MRIDSServiceMessageTypeProtobuf;
    v10 = [(MRDIDSTransport *)self uid];
    v11 = [(MRDIDSTransport *)self sessionUID];
    [(MRDIDSServiceConnection *)idsConnection setMessageHandler:&stru_1004BA810 forType:v9 destination:v10 session:v11];

    dispatch_group_enter(v7);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000B4EEC;
    v18[3] = &unk_1004B6D08;
    v12 = v7;
    v19 = v12;
    [(MRDIDSServiceConnection *)self->_idsConnection setConnectionHandler:v18];
    if ([(MRDIDSServiceConnection *)self->_idsConnection isConnected])
    {
      dispatch_group_leave(v12);
    }

    v13 = [(MRDIDSTransport *)self _createConnectionWithUserInfo:v4];
    transport = self->_transport;
    self->_transport = v13;
  }

  v15 = self->_transport;
  v16 = v15;

  return v15;
}

- (id)_createConnectionWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10003509C;
  v32 = sub_100035A04;
  v33 = 0;
  v27 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v27];
  v23 = v27;
  idsConnection = self->_idsConnection;
  v8 = [(MRDIDSTransport *)self uid];
  v9 = [(MRDIDSTransport *)self sessionUID];
  v10 = MRIDSServiceMessageTypeConnectRemoteControl;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B51A8;
  v24[3] = &unk_1004BA860;
  v26 = &v28;
  v11 = v5;
  v25 = v11;
  [(MRDIDSServiceConnection *)idsConnection sendMessage:v6 type:v10 destination:v8 session:v9 options:0 priority:300 response:v24];

  if (self->_shouldUseSystemAuthenticationPrompt)
  {
    v12 = 90000000000;
  }

  else
  {
    v12 = 14000000000;
  }

  v13 = dispatch_time(0, v12);
  v14 = dispatch_semaphore_wait(v11, v13);
  v15 = v29[5];
  if (v14 || v15)
  {
    v21 = v15;
    v20 = 0;
    error = self->_error;
    self->_error = v21;
  }

  else
  {
    v16 = [MRDIDSTransportConnection alloc];
    v17 = self->_idsConnection;
    error = [(MRDIDSTransport *)self uid];
    v19 = [(MRDIDSTransport *)self sessionUID];
    v20 = [(MRDIDSTransportConnection *)v16 initWithConnection:v17 type:MRIDSServiceMessageTypeRemoteControl destination:error session:v19];
  }

  _Block_object_dispose(&v28, 8);

  return v20;
}

- (void)resetWithError:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MRDIDSTransportConnection *)v4->_transport closeWithError:v5];
  objc_sync_exit(v4);
}

- (void)setSessionUID:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(MRDIDSTransport *)v4 _synchronized_setSessionUID:v5];
  objc_sync_exit(v4);
}

- (void)_synchronized_setSessionUID:(id)a3
{
  v5 = a3;
  if (self->_sessionUID)
  {
    idsConnection = self->_idsConnection;
    v7 = MRIDSServiceMessageTypeDisconnectRemoteControl;
    v8 = [(MRDIDSTransport *)self uid];
    [(MRDIDSServiceConnection *)idsConnection removeMessageHandlerForType:v7 destination:v8 session:self->_sessionUID];
  }

  objc_storeStrong(&self->_sessionUID, a3);
  if (self->_sessionUID)
  {
    objc_initWeak(&location, self);
    v9 = self->_idsConnection;
    objc_copyWeak(&v12, &location);
    v10 = [(MRDIDSTransport *)self uid:_NSConcreteStackBlock];
    [(MRDIDSServiceConnection *)v9 setMessageHandler:&v11 forType:MRIDSServiceMessageTypeDisconnectRemoteControl destination:v10 session:self->_sessionUID];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

- (id)_generateSessionUID
{
  v2 = [NSString alloc];
  v3 = +[NSUUID UUID];
  v4 = [v3 UUIDString];
  v5 = [v2 initWithFormat:@"%@-%d", v4, ++dword_1005292F8];

  return v5;
}

@end