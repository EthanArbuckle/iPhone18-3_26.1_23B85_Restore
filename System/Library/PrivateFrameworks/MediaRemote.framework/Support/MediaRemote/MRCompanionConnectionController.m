@interface MRCompanionConnectionController
- (BOOL)_shouldAttemptToDiscoverAndConnectToCompanion;
- (MRCompanionConnectionController)init;
- (id)debugDescription;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3;
- (void)_maybeAttemptToDiscoverAndConnectToCompanionWithReason:(id)a3;
- (void)setCompanionEndpoint:(id)a3;
@end

@implementation MRCompanionConnectionController

- (MRCompanionConnectionController)init
{
  v7.receiver = self;
  v7.super_class = MRCompanionConnectionController;
  v2 = [(MRCompanionConnectionController *)&v7 init];
  if (v2)
  {
    v3 = dispatch_time(0, 2);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10012E474;
    block[3] = &unk_1004B6D08;
    v6 = v2;
    dispatch_after(v3, &_dispatch_main_q, block);
  }

  return v2;
}

- (void)setCompanionEndpoint:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  p_companionEndpoint = &v6->_companionEndpoint;
  if (v6->_companionEndpoint)
  {
    v8 = _MRLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v9 = *p_companionEndpoint;
    *buf = 138544130;
    v22 = @"MRDCompanionConnectionController";
    v23 = 2114;
    v24 = @"companionEndpoint";
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v5;
    v10 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
    v11 = v8;
    v12 = 42;
  }

  else
  {
    v8 = _MRLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 138543874;
    v22 = @"MRDCompanionConnectionController";
    v23 = 2114;
    v24 = @"companionEndpoint";
    v25 = 2112;
    v26 = v5;
    v10 = "Set: %{public}@ setting %{public}@ to <%@>";
    v11 = v8;
    v12 = 32;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  if (v5)
  {
    objc_storeStrong(&v6->_companionEndpoint, a3);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012E8F8;
    v17[3] = &unk_1004B68F0;
    v17[4] = v6;
    v18 = v5;
    dispatch_async(&_dispatch_main_q, v17);
  }

  else
  {
    v13 = +[MRIDSCompanionConnection sharedManager];
    v14 = [v13 isConnected];

    if (v14)
    {
      v15 = dispatch_time(0, 30000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012E894;
      block[3] = &unk_1004B6D08;
      block[4] = v6;
      dispatch_after(v15, &_dispatch_main_q, block);
    }

    if (*p_companionEndpoint)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10012E8A4;
      v19[3] = &unk_1004B6D08;
      v19[4] = v6;
      dispatch_async(&_dispatch_main_q, v19);
    }

    v16 = *p_companionEndpoint;
    *p_companionEndpoint = 0;
  }

  objc_sync_exit(v6);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 object];
  v7 = [(MRCompanionConnectionController *)v5 companionEndpoint];
  v8 = [v7 externalDevice];

  if (v8 == v6)
  {
    v9 = [v4 userInfo];
    v10 = [v9 objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
    v11 = [v10 intValue];

    if (v11 == 3)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] CompanionEndpoint disconnected because externalDevice connection state", v15, 2u);
      }

      v13 = [[NSError alloc] initWithMRError:104];
      lastConnectionAttemptError = v5->_lastConnectionAttemptError;
      v5->_lastConnectionAttemptError = v13;

      [(MRCompanionConnectionController *)v5 setCompanionEndpoint:0];
      [(MRCompanionConnectionController *)v5 _maybeAttemptToDiscoverAndConnectToCompanionWithReason:@"Reconnect"];
    }
  }

  objc_sync_exit(v5);
}

- (BOOL)_shouldAttemptToDiscoverAndConnectToCompanion
{
  v3 = +[MRIDSCompanionConnection sharedManager];
  if (![v3 isConnected])
  {
LABEL_8:
    v7 = 0;
    goto LABEL_16;
  }

  companionEndpoint = self->_companionEndpoint;
  if (!companionEndpoint)
  {
    if (!self->_isDiscovering)
    {
      v7 = !self->_isConnecting;
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v5 = [(MRAVEndpoint *)companionEndpoint externalDevice];
  if (v5)
  {
    v6 = [(MRAVEndpoint *)self->_companionEndpoint externalDevice];
    v7 = [v6 connectionState] == 3 && !self->_isDiscovering && !self->_isConnecting;
  }

  else
  {
    v7 = !self->_isDiscovering && !self->_isConnecting;
  }

LABEL_16:
  return v7;
}

- (void)_maybeAttemptToDiscoverAndConnectToCompanionWithReason:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if ([(MRCompanionConnectionController *)v6 _shouldAttemptToDiscoverAndConnectToCompanion])
  {
    objc_storeStrong(&v6->_lastConnectionAttemptReason, a3);
    v7 = +[NSDate date];
    lastConnectionAttemptDate = v6->_lastConnectionAttemptDate;
    v6->_lastConnectionAttemptDate = v7;

    lastConnectionAttemptError = v6->_lastConnectionAttemptError;
    v6->_lastConnectionAttemptError = 0;

    v6->_isDiscovering = 1;
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] Attempting to discover and connect to companion because <%@>", buf, 0xCu);
    }

    v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    v12 = [[NSString alloc] initWithFormat:@"Persistent Companion Connection: %@", v5];
    v13 = &_dispatch_main_q;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012EDE4;
    v14[3] = &unk_1004BCEA0;
    v14[4] = v6;
    v15 = v5;
    [v11 searchEndpointsForCompanionWithTimeout:v12 reason:&_dispatch_main_q queue:v14 completion:30.0];
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A9B54(v5, v11);
    }
  }

  objc_sync_exit(v6);
}

- (id)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [NSMutableString alloc];
  v12.receiver = v2;
  v12.super_class = MRCompanionConnectionController;
  v4 = [(MRCompanionConnectionController *)&v12 description];
  v5 = [v3 initWithFormat:@"%@\n { Endpoint = %@", v4, v2->_companionEndpoint];

  companionEndpoint = v2->_companionEndpoint;
  if (companionEndpoint)
  {
    v7 = [(MRAVEndpoint *)companionEndpoint externalDevice];
    [v7 connectionState];
    v8 = MRExternalDeviceConnectionStateCopyDescription();
    [v5 appendFormat:@"\nExternalDevice = %@", v8];
  }

  if (v2->_isDiscovering)
  {
    [v5 appendFormat:@"\nisDiscovering=YES"];
  }

  if (v2->_isConnecting)
  {
    [v5 appendFormat:@"\nisConnecting=YES"];
  }

  if (v2->_lastConnectionAttemptReason)
  {
    [v5 appendFormat:@"\nConnection Reason = %@", v2->_lastConnectionAttemptReason];
  }

  if (v2->_lastConnectionAttemptDate)
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:v2->_lastConnectionAttemptDate];
    [v5 appendFormat:@"\nConnection attempted <%lf> seconds ago", v10];
  }

  if (v2->_lastConnectionAttemptError)
  {
    [v5 appendFormat:@"\nCnnection error = %@", v2->_lastConnectionAttemptError];
  }

  objc_sync_exit(v2);

  return v5;
}

@end