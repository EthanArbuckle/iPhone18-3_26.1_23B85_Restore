@interface MRDGroupSessionTransport
- (MRDGroupSessionTransport)initWithOutputDevice:(id)device;
- (id)createConnectionWithUserInfo:(id)info;
- (id)description;
- (id)deviceInfo;
- (id)name;
- (id)uid;
- (void)resetWithError:(id)error;
@end

@implementation MRDGroupSessionTransport

- (MRDGroupSessionTransport)initWithOutputDevice:(id)device
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = MRDGroupSessionTransport;
  v6 = [(MRDGroupSessionTransport *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDevice, device);
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
  groupSessionInfo = [(MRAVOutputDevice *)self->_outputDevice groupSessionInfo];
  v6 = [NSString stringWithFormat:@"<%@:%p identifier=%@ info=%@>", v3, self, v4, groupSessionInfo];

  return v6;
}

- (id)createConnectionWithUserInfo:(id)info
{
  v4 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v4 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];
  session = [sessionManager session];

  outputDevice = [(MRDGroupSessionTransport *)self outputDevice];
  groupID = [outputDevice groupID];

  identifier = [session identifier];
  v11 = identifier;
  if (identifier == groupID)
  {
  }

  else
  {
    v12 = [identifier isEqual:groupID];

    if ((v12 & 1) == 0)
    {
      v13 = MRGroupSessionError;
      v14 = [NSString stringWithFormat:@"Could not find session corresponding to identifier: %@", groupID];
      [NSError msv_errorWithDomain:v13 code:2 debugDescription:@"%@", v14];
      goto LABEL_8;
    }
  }

  leader = [session leader];

  if (leader)
  {
    v16 = [MRDGroupSessionTransportConnection alloc];
    leader2 = [session leader];
    identifier2 = [leader2 identifier];
    v19 = [(MRDGroupSessionTransportConnection *)v16 initWithGroupSession:session participantIdentifier:identifier2];
    [(MRDGroupSessionTransport *)self setConnection:v19];

    connection = [(MRDGroupSessionTransport *)self connection];
    goto LABEL_9;
  }

  v21 = MRGroupSessionError;
  v14 = [NSString stringWithFormat:@"Could not find session leader on session: %@", session];
  [NSError msv_errorWithDomain:v21 code:8 debugDescription:@"%@", v14];
  v22 = LABEL_8:;
  [(MRDGroupSessionTransport *)self setConnectionError:v22];

  connection = 0;
LABEL_9:

  return connection;
}

- (void)resetWithError:(id)error
{
  errorCopy = error;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransport] %@ Reset with error: %@", &v7, 0x16u);
  }

  [(MRDGroupSessionTransport *)self setConnectionError:errorCopy];
  connection = [(MRDGroupSessionTransport *)self connection];
  [connection closeWithError:errorCopy];
}

- (id)deviceInfo
{
  v3 = objc_alloc_init(MRDeviceInfo);
  outputDevice = [(MRDGroupSessionTransport *)self outputDevice];
  name = [outputDevice name];
  [v3 setName:name];

  outputDevice2 = [(MRDGroupSessionTransport *)self outputDevice];
  primaryID = [outputDevice2 primaryID];
  [v3 setDeviceUID:primaryID];

  return v3;
}

- (id)uid
{
  outputDevice = [(MRDGroupSessionTransport *)self outputDevice];
  v3 = [outputDevice uid];

  return v3;
}

- (id)name
{
  outputDevice = [(MRDGroupSessionTransport *)self outputDevice];
  name = [outputDevice name];

  return name;
}

@end