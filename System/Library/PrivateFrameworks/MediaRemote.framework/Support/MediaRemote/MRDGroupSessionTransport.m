@interface MRDGroupSessionTransport
- (MRDGroupSessionTransport)initWithOutputDevice:(id)a3;
- (id)createConnectionWithUserInfo:(id)a3;
- (id)description;
- (id)deviceInfo;
- (id)name;
- (id)uid;
- (void)resetWithError:(id)a3;
@end

@implementation MRDGroupSessionTransport

- (MRDGroupSessionTransport)initWithOutputDevice:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = MRDGroupSessionTransport;
  v6 = [(MRDGroupSessionTransport *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, a3);
    v8 = [MRClient alloc];
    v9 = [v8 initWithBundleIdentifier:kMRMediaRemoteSystemMediaApplicationDisplayIdentifier];
    v10 = [[MRPlayerPath alloc] initWithOrigin:0 client:v9 player:0];
    v15 = v10;
    v11 = [NSArray arrayWithObjects:&v15 count:1];
    subscribedPlayerPaths = v7->_subscribedPlayerPaths;
    v7->_subscribedPlayerPaths = v11;
  }

  return v7;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(MRAVOutputDevice *)self->_outputDevice uid];
  v5 = [(MRAVOutputDevice *)self->_outputDevice groupSessionInfo];
  v6 = [NSString stringWithFormat:@"<%@:%p identifier=%@ info=%@>", v3, self, v4, v5];

  return v6;
}

- (id)createConnectionWithUserInfo:(id)a3
{
  v4 = +[MRDMediaRemoteServer server];
  v5 = [v4 groupSessionServer];
  v6 = [v5 sessionManager];
  v7 = [v6 session];

  v8 = [(MRDGroupSessionTransport *)self outputDevice];
  v9 = [v8 groupID];

  v10 = [v7 identifier];
  v11 = v10;
  if (v10 == v9)
  {
  }

  else
  {
    v12 = [v10 isEqual:v9];

    if ((v12 & 1) == 0)
    {
      v13 = MRGroupSessionError;
      v14 = [NSString stringWithFormat:@"Could not find session corresponding to identifier: %@", v9];
      [NSError msv_errorWithDomain:v13 code:2 debugDescription:@"%@", v14];
      goto LABEL_8;
    }
  }

  v15 = [v7 leader];

  if (v15)
  {
    v16 = [MRDGroupSessionTransportConnection alloc];
    v17 = [v7 leader];
    v18 = [v17 identifier];
    v19 = [(MRDGroupSessionTransportConnection *)v16 initWithGroupSession:v7 participantIdentifier:v18];
    [(MRDGroupSessionTransport *)self setConnection:v19];

    v20 = [(MRDGroupSessionTransport *)self connection];
    goto LABEL_9;
  }

  v21 = MRGroupSessionError;
  v14 = [NSString stringWithFormat:@"Could not find session leader on session: %@", v7];
  [NSError msv_errorWithDomain:v21 code:8 debugDescription:@"%@", v14];
  v22 = LABEL_8:;
  [(MRDGroupSessionTransport *)self setConnectionError:v22];

  v20 = 0;
LABEL_9:

  return v20;
}

- (void)resetWithError:(id)a3
{
  v4 = a3;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = self;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransport] %@ Reset with error: %@", &v7, 0x16u);
  }

  [(MRDGroupSessionTransport *)self setConnectionError:v4];
  v6 = [(MRDGroupSessionTransport *)self connection];
  [v6 closeWithError:v4];
}

- (id)deviceInfo
{
  v3 = objc_alloc_init(MRDeviceInfo);
  v4 = [(MRDGroupSessionTransport *)self outputDevice];
  v5 = [v4 name];
  [v3 setName:v5];

  v6 = [(MRDGroupSessionTransport *)self outputDevice];
  v7 = [v6 primaryID];
  [v3 setDeviceUID:v7];

  return v3;
}

- (id)uid
{
  v2 = [(MRDGroupSessionTransport *)self outputDevice];
  v3 = [v2 uid];

  return v3;
}

- (id)name
{
  v2 = [(MRDGroupSessionTransport *)self outputDevice];
  v3 = [v2 name];

  return v3;
}

@end