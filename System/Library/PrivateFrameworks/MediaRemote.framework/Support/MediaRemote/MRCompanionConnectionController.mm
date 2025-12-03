@interface MRCompanionConnectionController
- (BOOL)_shouldAttemptToDiscoverAndConnectToCompanion;
- (MRCompanionConnectionController)init;
- (id)debugDescription;
- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification;
- (void)_maybeAttemptToDiscoverAndConnectToCompanionWithReason:(id)reason;
- (void)setCompanionEndpoint:(id)endpoint;
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

- (void)setCompanionEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_companionEndpoint = &selfCopy->_companionEndpoint;
  if (selfCopy->_companionEndpoint)
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
    v28 = endpointCopy;
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
    v26 = endpointCopy;
    v10 = "Set: %{public}@ setting %{public}@ to <%@>";
    v11 = v8;
    v12 = 32;
  }

  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
LABEL_7:

  if (endpointCopy)
  {
    objc_storeStrong(&selfCopy->_companionEndpoint, endpoint);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10012E8F8;
    v17[3] = &unk_1004B68F0;
    v17[4] = selfCopy;
    v18 = endpointCopy;
    dispatch_async(&_dispatch_main_q, v17);
  }

  else
  {
    v13 = +[MRIDSCompanionConnection sharedManager];
    isConnected = [v13 isConnected];

    if (isConnected)
    {
      v15 = dispatch_time(0, 30000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012E894;
      block[3] = &unk_1004B6D08;
      block[4] = selfCopy;
      dispatch_after(v15, &_dispatch_main_q, block);
    }

    if (*p_companionEndpoint)
    {
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10012E8A4;
      v19[3] = &unk_1004B6D08;
      v19[4] = selfCopy;
      dispatch_async(&_dispatch_main_q, v19);
    }

    v16 = *p_companionEndpoint;
    *p_companionEndpoint = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleExternalDeviceConnectionStateDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  object = [notificationCopy object];
  companionEndpoint = [(MRCompanionConnectionController *)selfCopy companionEndpoint];
  externalDevice = [companionEndpoint externalDevice];

  if (externalDevice == object)
  {
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:kMRExternalDeviceConnectionStateUserInfoKey];
    intValue = [v10 intValue];

    if (intValue == 3)
    {
      v12 = _MRLogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] CompanionEndpoint disconnected because externalDevice connection state", v15, 2u);
      }

      v13 = [[NSError alloc] initWithMRError:104];
      lastConnectionAttemptError = selfCopy->_lastConnectionAttemptError;
      selfCopy->_lastConnectionAttemptError = v13;

      [(MRCompanionConnectionController *)selfCopy setCompanionEndpoint:0];
      [(MRCompanionConnectionController *)selfCopy _maybeAttemptToDiscoverAndConnectToCompanionWithReason:@"Reconnect"];
    }
  }

  objc_sync_exit(selfCopy);
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

  externalDevice = [(MRAVEndpoint *)companionEndpoint externalDevice];
  if (externalDevice)
  {
    externalDevice2 = [(MRAVEndpoint *)self->_companionEndpoint externalDevice];
    v7 = [externalDevice2 connectionState] == 3 && !self->_isDiscovering && !self->_isConnecting;
  }

  else
  {
    v7 = !self->_isDiscovering && !self->_isConnecting;
  }

LABEL_16:
  return v7;
}

- (void)_maybeAttemptToDiscoverAndConnectToCompanionWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(MRCompanionConnectionController *)selfCopy _shouldAttemptToDiscoverAndConnectToCompanion])
  {
    objc_storeStrong(&selfCopy->_lastConnectionAttemptReason, reason);
    v7 = +[NSDate date];
    lastConnectionAttemptDate = selfCopy->_lastConnectionAttemptDate;
    selfCopy->_lastConnectionAttemptDate = v7;

    lastConnectionAttemptError = selfCopy->_lastConnectionAttemptError;
    selfCopy->_lastConnectionAttemptError = 0;

    selfCopy->_isDiscovering = 1;
    v10 = _MRLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = reasonCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRCompanionConnectionController] Attempting to discover and connect to companion because <%@>", buf, 0xCu);
    }

    v11 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
    reasonCopy = [[NSString alloc] initWithFormat:@"Persistent Companion Connection: %@", reasonCopy];
    v13 = &_dispatch_main_q;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10012EDE4;
    v14[3] = &unk_1004BCEA0;
    v14[4] = selfCopy;
    v15 = reasonCopy;
    [v11 searchEndpointsForCompanionWithTimeout:reasonCopy reason:&_dispatch_main_q queue:v14 completion:30.0];
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A9B54(reasonCopy, v11);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [NSMutableString alloc];
  v12.receiver = selfCopy;
  v12.super_class = MRCompanionConnectionController;
  v4 = [(MRCompanionConnectionController *)&v12 description];
  v5 = [v3 initWithFormat:@"%@\n { Endpoint = %@", v4, selfCopy->_companionEndpoint];

  companionEndpoint = selfCopy->_companionEndpoint;
  if (companionEndpoint)
  {
    externalDevice = [(MRAVEndpoint *)companionEndpoint externalDevice];
    [externalDevice connectionState];
    v8 = MRExternalDeviceConnectionStateCopyDescription();
    [v5 appendFormat:@"\nExternalDevice = %@", v8];
  }

  if (selfCopy->_isDiscovering)
  {
    [v5 appendFormat:@"\nisDiscovering=YES"];
  }

  if (selfCopy->_isConnecting)
  {
    [v5 appendFormat:@"\nisConnecting=YES"];
  }

  if (selfCopy->_lastConnectionAttemptReason)
  {
    [v5 appendFormat:@"\nConnection Reason = %@", selfCopy->_lastConnectionAttemptReason];
  }

  if (selfCopy->_lastConnectionAttemptDate)
  {
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:selfCopy->_lastConnectionAttemptDate];
    [v5 appendFormat:@"\nConnection attempted <%lf> seconds ago", v10];
  }

  if (selfCopy->_lastConnectionAttemptError)
  {
    [v5 appendFormat:@"\nCnnection error = %@", selfCopy->_lastConnectionAttemptError];
  }

  objc_sync_exit(selfCopy);

  return v5;
}

@end