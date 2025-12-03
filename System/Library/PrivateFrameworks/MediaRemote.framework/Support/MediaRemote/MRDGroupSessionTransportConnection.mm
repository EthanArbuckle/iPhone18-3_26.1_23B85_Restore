@interface MRDGroupSessionTransportConnection
- (MRDGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier;
- (id)error;
- (id)exportOutputDevice:(id)device endpoint:(id)endpoint;
- (id)outputDeviceForGroupSession:(id)session;
- (void)closeWithError:(id)error;
- (void)leaveSessionIfNeeded;
- (void)session:(id)session didChangeState:(int64_t)state;
@end

@implementation MRDGroupSessionTransportConnection

- (MRDGroupSessionTransportConnection)initWithGroupSession:(id)session participantIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = MRDGroupSessionTransportConnection;
  return [(MRDBaseGroupSessionTransportConnection *)&v5 initWithGroupSession:session participantIdentifier:identifier dataSource:self];
}

- (id)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSError *)selfCopy->_error copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)closeWithError:(id)error
{
  errorCopy = error;
  error = [(MRDGroupSessionTransportConnection *)self error];

  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (error)
  {
    if (v8)
    {
      error2 = [(MRDGroupSessionTransportConnection *)self error];
      v15 = 138543874;
      selfCopy2 = self;
      v17 = 2114;
      v18 = errorCopy;
      v19 = 2114;
      v20 = error2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Ignoring request to close connection with error: %{public}@, because we already had error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    if (v8)
    {
      v15 = 138543618;
      selfCopy2 = self;
      v17 = 2114;
      v18 = errorCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Got request to close connection with error: %{public}@", &v15, 0x16u);
    }

    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    objc_storeStrong(&selfCopy3->_error, error);
    objc_sync_exit(selfCopy3);

    if (errorCopy)
    {
      groupSession = [(MRDBaseGroupSessionTransportConnection *)selfCopy3 groupSession];
      state = [groupSession state];

      if (state == 3)
      {
        [(MRDGroupSessionTransportConnection *)selfCopy3 leaveSessionIfNeeded];
      }

      else
      {
        v13 = _MRLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_1001B1B38(state);
          v15 = 138412546;
          selfCopy2 = selfCopy3;
          v17 = 2114;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %@ Not destroying session because state is: %{public}@", &v15, 0x16u);
        }
      }
    }

    [(MRDGroupSessionTransportConnection *)selfCopy3 _notifyDelegateDidCloseWithError:errorCopy];
  }
}

- (void)leaveSessionIfNeeded
{
  groupSession = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
  isHosted = [groupSession isHosted];

  if ((isHosted & 1) == 0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      groupSession2 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
      v11 = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = groupSession2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Leaving session due to client disconnect: %{public}@", &v11, 0x16u);
    }

    v7 = +[MRDMediaRemoteServer server];
    groupSessionServer = [v7 groupSessionServer];
    sessionManager = [groupSessionServer sessionManager];

    groupSession3 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    [sessionManager leaveRemoteControlGroupSession:groupSession3];
  }
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  sessionCopy = session;
  if (state != 3)
  {
    v9 = sessionCopy;
    if (state == 4)
    {
      v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Session changed state to invalidated"];
    }

    else
    {
      v7 = [[NSError alloc] initWithMRError:105 description:@"Session disconnected"];
    }

    v8 = v7;
    [(MRDGroupSessionTransportConnection *)self closeWithError:v7];

    sessionCopy = v9;
  }
}

- (id)exportOutputDevice:(id)device endpoint:(id)endpoint
{
  deviceCopy = device;
  if ([deviceCopy isLocalDevice])
  {
    groupSession = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    v7 = [(MRDGroupSessionTransportConnection *)self outputDeviceForGroupSession:groupSession];
    v8 = [v7 mergingVolumeFrom:deviceCopy];
  }

  else
  {
    v8 = deviceCopy;
  }

  return v8;
}

- (id)outputDeviceForGroupSession:(id)session
{
  sessionCopy = session;
  v4 = [[MRAVDistantOutputDevice alloc] initWithGroupSession:sessionCopy];

  return v4;
}

@end