@interface MRDRoutingDiscoverySession
- (BOOL)devicePresenceDetected;
- (MRDRoutingDiscoverySession)initWithConfiguration:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)availableEndpoints;
- (unsigned)discoveryMode;
- (void)dealloc;
- (void)hostedRoutingController:(id)a3 endpointsDidChange:(id)a4;
- (void)setDiscoveryMode:(unsigned int)a3;
@end

@implementation MRDRoutingDiscoverySession

- (unsigned)discoveryMode
{
  v2 = self;
  objc_sync_enter(v2);
  discoveryMode = v2->_discoveryMode;
  objc_sync_exit(v2);

  return discoveryMode;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(MRDRoutingDiscoverySession *)self discoveryMode];
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  if ([(MRDRoutingDiscoverySession *)self alwaysAllowUpdates])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(MRDRoutingDiscoverySession *)self availableEndpoints];
  v8 = [v7 count];
  v9 = [(MRDRoutingDiscoverySession *)self availableOutputDevices];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p %@ | %@ | %ldd:%ldd", v4, self, v5, v6, v8, [v9 count]);

  return v10;
}

- (id)availableEndpoints
{
  v2 = [(MRDRoutingDiscoverySession *)self endpointsSnapshot];
  v3 = [v2 msv_map:&stru_1004BA990];

  return v3;
}

- (MRDRoutingDiscoverySession)initWithConfiguration:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MRDRoutingDiscoverySession;
  v5 = [(MRDRoutingDiscoverySession *)&v25 initWithConfiguration:v4];
  if (v5)
  {
    if (qword_100529328 != -1)
    {
      sub_1003A7070();
    }

    objc_storeStrong(&v5->_workerQueue, qword_100529320);
    v6 = [NSString alloc];
    [v4 features];
    v7 = MRMediaRemoteEndpointFeaturesDescription();
    v8 = [v6 initWithFormat:@"Direct.%@", v7];

    v9 = [MRRollingWindowActivityTracker alloc];
    v10 = +[MRUserSettings currentSettings];
    [v10 persistantDiscoveryModeDetectionDuration];
    v12 = v11;
    v13 = +[MRUserSettings currentSettings];
    [v13 persistantDiscoveryModeDetectionWindowDuration];
    v15 = v14;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000B6AE4;
    v23[3] = &unk_1004B6D08;
    v24 = v8;
    v16 = v8;
    v17 = [v9 initWithActivityName:v16 maxAllowedTime:v23 windowDuration:v12 handler:v15];
    discoveryTracker = v5->_discoveryTracker;
    v5->_discoveryTracker = v17;

    v19 = +[MRDMediaRemoteServer server];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000B6B88;
    v21[3] = &unk_1004B6D08;
    v22 = v5;
    [v19 addMediaRemoteSeverStartedHandler:v21];
  }

  return v5;
}

- (void)dealloc
{
  if (self->_discoveryMode)
  {
    v3 = dispatch_get_global_queue(0, 0);
    dispatch_async(v3, &stru_1004BA930);
  }

  v4.receiver = self;
  v4.super_class = MRDRoutingDiscoverySession;
  [(MRDRoutingDiscoverySession *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(MRDRoutingDiscoverySession *)self discoveryMode];
  v5 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  if ([(MRDRoutingDiscoverySession *)self alwaysAllowUpdates])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [(MRDRoutingDiscoverySession *)self availableOutputDevices];
  v8 = [(MRDRoutingDiscoverySession *)self availableEndpoints];
  v9 = [NSString stringWithFormat:@"<%@: %p> currentDiscoveryMode: %@\nalwaysAllowUpdates: %@\navailableOutputDevices: %@\navailableEndpoints: %@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (void)setDiscoveryMode:(unsigned int)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_discoveryMode == a3)
  {
    objc_sync_exit(obj);
  }

  else
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      discoveryMode = obj->_discoveryMode;
      v6 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      v7 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      *buf = 138412802;
      v13 = obj;
      v14 = 2114;
      v15 = v6;
      v16 = 2114;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDDiscoverySession] %@ setting discoveryMode from %{public}@ to %{public}@", buf, 0x20u);
    }

    obj->_discoveryMode = a3;
    discoveryTracker = obj->_discoveryTracker;
    if (a3)
    {
      [(MRActivityTracker *)discoveryTracker startActivityTracking];
    }

    else
    {
      [(MRActivityTracker *)discoveryTracker stopActivityTracking];
    }

    objc_sync_exit(obj);

    workerQueue = obj->_workerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B6FF8;
    block[3] = &unk_1004B6D08;
    block[4] = obj;
    dispatch_async(workerQueue, block);
  }
}

- (void)hostedRoutingController:(id)a3 endpointsDidChange:(id)a4
{
  v5 = [a4 msv_map:&stru_1004BA970];
  [(MRDRoutingDiscoverySession *)self notifyEndpointsChanged:v5];
}

- (BOOL)devicePresenceDetected
{
  v2 = [(MRDRoutingDiscoverySession *)self availableOutputDevices];
  v3 = [v2 count] != 0;

  return v3;
}

@end