@interface MRDGroupSessionTransportConnection
- (MRDGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4;
- (id)error;
- (id)exportOutputDevice:(id)a3 endpoint:(id)a4;
- (id)outputDeviceForGroupSession:(id)a3;
- (void)closeWithError:(id)a3;
- (void)leaveSessionIfNeeded;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
@end

@implementation MRDGroupSessionTransportConnection

- (MRDGroupSessionTransportConnection)initWithGroupSession:(id)a3 participantIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = MRDGroupSessionTransportConnection;
  return [(MRDBaseGroupSessionTransportConnection *)&v5 initWithGroupSession:a3 participantIdentifier:a4 dataSource:self];
}

- (id)error
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSError *)v2->_error copy];
  objc_sync_exit(v2);

  return v3;
}

- (void)closeWithError:(id)a3
{
  v5 = a3;
  v6 = [(MRDGroupSessionTransportConnection *)self error];

  v7 = _MRLogForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = [(MRDGroupSessionTransportConnection *)self error];
      v15 = 138543874;
      v16 = self;
      v17 = 2114;
      v18 = v5;
      v19 = 2114;
      v20 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Ignoring request to close connection with error: %{public}@, because we already had error: %{public}@", &v15, 0x20u);
    }
  }

  else
  {
    if (v8)
    {
      v15 = 138543618;
      v16 = self;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Got request to close connection with error: %{public}@", &v15, 0x16u);
    }

    v10 = self;
    objc_sync_enter(v10);
    objc_storeStrong(&v10->_error, a3);
    objc_sync_exit(v10);

    if (v5)
    {
      v11 = [(MRDBaseGroupSessionTransportConnection *)v10 groupSession];
      v12 = [v11 state];

      if (v12 == 3)
      {
        [(MRDGroupSessionTransportConnection *)v10 leaveSessionIfNeeded];
      }

      else
      {
        v13 = _MRLogForCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_1001B1B38(v12);
          v15 = 138412546;
          v16 = v10;
          v17 = 2114;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %@ Not destroying session because state is: %{public}@", &v15, 0x16u);
        }
      }
    }

    [(MRDGroupSessionTransportConnection *)v10 _notifyDelegateDidCloseWithError:v5];
  }
}

- (void)leaveSessionIfNeeded
{
  v3 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
  v4 = [v3 isHosted];

  if ((v4 & 1) == 0)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionTransportConnection] %{public}@ Leaving session due to client disconnect: %{public}@", &v11, 0x16u);
    }

    v7 = +[MRDMediaRemoteServer server];
    v8 = [v7 groupSessionServer];
    v9 = [v8 sessionManager];

    v10 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    [v9 leaveRemoteControlGroupSession:v10];
  }
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  if (a4 != 3)
  {
    v9 = v6;
    if (a4 == 4)
    {
      v7 = [NSError msv_errorWithDomain:MRGroupSessionError code:1 debugDescription:@"Session changed state to invalidated"];
    }

    else
    {
      v7 = [[NSError alloc] initWithMRError:105 description:@"Session disconnected"];
    }

    v8 = v7;
    [(MRDGroupSessionTransportConnection *)self closeWithError:v7];

    v6 = v9;
  }
}

- (id)exportOutputDevice:(id)a3 endpoint:(id)a4
{
  v5 = a3;
  if ([v5 isLocalDevice])
  {
    v6 = [(MRDBaseGroupSessionTransportConnection *)self groupSession];
    v7 = [(MRDGroupSessionTransportConnection *)self outputDeviceForGroupSession:v6];
    v8 = [v7 mergingVolumeFrom:v5];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)outputDeviceForGroupSession:(id)a3
{
  v3 = a3;
  v4 = [[MRAVDistantOutputDevice alloc] initWithGroupSession:v3];

  return v4;
}

@end