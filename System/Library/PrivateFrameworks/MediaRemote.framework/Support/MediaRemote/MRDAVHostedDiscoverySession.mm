@interface MRDAVHostedDiscoverySession
+ (OS_dispatch_queue)calloutQueue;
- (MRAVRoutingDiscoverySessionConfiguration)configuration;
- (MRDAVHostedDiscoverySession)initWithConnection:(id)connection hostedRoutingController:(id)controller;
- (MRDAVHostedDiscoverySessionDelegate)delegate;
- (NSString)debugDescription;
- (NSString)description;
- (unsigned)_calculateEffectiveDiscoveryMode;
- (unsigned)discoveryMode;
- (void)_invalidate;
- (void)_maybeWakeClient;
- (void)_notifyAvailableEndpointsDidChange:(id)change;
- (void)_notifyAvailableOutputDevicesDidChange:(id)change;
- (void)_reevaluateEffectiveDiscoveryMode;
- (void)_resumeConnection;
- (void)configurationWithCompletion:(id)completion;
- (void)dealloc;
- (void)getAvailableEndpointsWithCompletion:(id)completion;
- (void)getAvailableOutputDevicesWithCompletion:(id)completion;
- (void)getDevicePresenceDetectedWithCompletion:(id)completion;
- (void)getDiscoveryModeWithCompletion:(id)completion;
- (void)setConfiguration:(id)configuration;
- (void)setDiscoveryMode:(unsigned int)mode;
- (void)setDiscoveryMode:(unsigned int)mode withCompletion:(id)completion;
- (void)setEffectiveDiscoveryMode:(unsigned int)mode;
- (void)setProcessSuspended:(BOOL)suspended;
@end

@implementation MRDAVHostedDiscoverySession

- (unsigned)discoveryMode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000118D4;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_reevaluateEffectiveDiscoveryMode
{
  dispatch_assert_queue_V2(self->_serialQueue);
  _calculateEffectiveDiscoveryMode = [(MRDAVHostedDiscoverySession *)self _calculateEffectiveDiscoveryMode];

  [(MRDAVHostedDiscoverySession *)self setEffectiveDiscoveryMode:_calculateEffectiveDiscoveryMode];
}

- (unsigned)_calculateEffectiveDiscoveryMode
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_processSuspended)
  {
    return 0;
  }

  else
  {
    return self->_desiredDiscoveryMode;
  }
}

+ (OS_dispatch_queue)calloutQueue
{
  if (qword_1005292B8 != -1)
  {
    sub_1003A6704();
  }

  v3 = qword_1005292B0;

  return v3;
}

- (void)_invalidate
{
  [(MRDHostedRoutingController *)self->_hostedRoutingController removeObserver:self];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained hostedDiscoverySessionDidInvalidate:self];

  [(NSXPCConnection *)self->_connection invalidate];
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000124E4;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_maybeWakeClient
{
  xpcClient = self->_xpcClient;
  if (!xpcClient)
  {
    v4 = +[MRDMediaRemoteServer server];
    v5 = [v4 clientForPID:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
    v6 = self->_xpcClient;
    self->_xpcClient = v5;

    xpcClient = self->_xpcClient;
  }

  v7 = +[MRPlayerPath anyPlayerPath];
  v8 = [(MRDMediaRemoteClient *)xpcClient notificationRequiresTaskAssertionForPlayerPath:v7];

  if (v8)
  {
    v9 = self->_xpcClient;
    v10 = +[MRUserSettings currentSettings];
    [v10 wakingPlayerPathAssertionDuration];
    [(MRDMediaRemoteClient *)v9 takeAssertion:4 forReason:@"WakingPlayerPathNotification" duration:?];
  }
}

- (MRAVRoutingDiscoverySessionConfiguration)configuration
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10003503C;
  v10 = sub_1000359D4;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100012170;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_stateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MRDAVHostedDiscoverySession;
  [(MRDAVHostedDiscoverySession *)&v3 dealloc];
}

- (NSString)description
{
  v2 = [[NSString alloc] initWithFormat:@"<%@:%p %@>", objc_opt_class(), self, self->_bundleIdentifier];

  return v2;
}

- (MRDAVHostedDiscoverySession)initWithConnection:(id)connection hostedRoutingController:(id)controller
{
  connectionCopy = connection;
  controllerCopy = controller;
  v39.receiver = self;
  v39.super_class = MRDAVHostedDiscoverySession;
  v9 = [(MRDAVHostedDiscoverySession *)&v39 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.hostedDiscoverySession/serialQueue", v10);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v11;

    objc_storeStrong(&v9->_connection, connection);
    connection = v9->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    else
    {
      *location = 0u;
      v38 = 0u;
    }

    v14 = sub_100007074(location);
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v14;

    objc_storeStrong(&v9->_hostedRoutingController, controller);
    v16 = +[MRDMediaRemoteServer server];
    v17 = [v16 clientForPID:{-[NSXPCConnection processIdentifier](v9->_connection, "processIdentifier")}];
    xpcClient = v9->_xpcClient;
    v9->_xpcClient = v17;

    v19 = v9->_bundleIdentifier;
    if (v19)
    {
      processName = v19;
    }

    else
    {
      processName = [(MRDMediaRemoteClient *)v9->_xpcClient processName];
    }

    clientIdentifier = v9->_clientIdentifier;
    v9->_clientIdentifier = processName;

    v22 = [MRXPCConnectionMonitor alloc];
    v23 = v9->_connection;
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = [(MRXPCConnectionMonitor *)v22 initWithConnection:v23 label:v25];
    connectionMonitor = v9->_connectionMonitor;
    v9->_connectionMonitor = v26;

    [(MRXPCConnectionMonitor *)v9->_connectionMonitor setDelegate:v9];
    objc_initWeak(location, v9);
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000A01C0;
    v35[3] = &unk_1004B8280;
    objc_copyWeak(&v36, location);
    v28 = objc_retainBlock(v35);
    v29 = +[MRAVDistantRoutingDiscoverySession clientInterface];
    [(NSXPCConnection *)v9->_connection setRemoteObjectInterface:v29];

    v30 = +[MRAVDistantRoutingDiscoverySession serviceInterface];
    [(NSXPCConnection *)v9->_connection setExportedInterface:v30];

    exportedInterface = [(NSXPCConnection *)v9->_connection exportedInterface];
    protocol = [exportedInterface protocol];
    v33 = [MRWeakProxy weakProxyWithObject:v9 protocol:protocol];
    [(NSXPCConnection *)v9->_connection setExportedObject:v33];

    [(NSXPCConnection *)v9->_connection setInterruptionHandler:v28];
    [(NSXPCConnection *)v9->_connection setInvalidationHandler:v28];
    [(NSXPCConnection *)v9->_connection resume];
    [(MRDHostedRoutingController *)v9->_hostedRoutingController addObserver:v9];

    objc_destroyWeak(&v36);
    objc_destroyWeak(location);
  }

  return v9;
}

- (NSString)debugDescription
{
  if (self->_lastDesiredDiscoveryModeEnableDate)
  {
    [(NSDate *)self->_lastDesiredDiscoveryModeDisableDate timeIntervalSinceDate:?];
    v4 = v3;
    lastDesiredDiscoveryModeEnableDate = self->_lastDesiredDiscoveryModeEnableDate;
    [(NSDate *)lastDesiredDiscoveryModeEnableDate timeIntervalSinceNow];
    v7 = -v6;
    if (v4 > 0.0)
    {
      lastDesiredDiscoveryModeDisableDate = self->_lastDesiredDiscoveryModeDisableDate;
      v8 = lastDesiredDiscoveryModeDisableDate;
    }

    else
    {
      v8 = +[NSDate now];
      lastDesiredDiscoveryModeDisableDate = @"NOW";
    }

    [v8 timeIntervalSinceDate:self->_lastDesiredDiscoveryModeEnableDate];
    v36 = [NSString stringWithFormat:@"desired discovery enabled at: %@ (%.0f s ago) until: %@ (duration %.0f s)", lastDesiredDiscoveryModeEnableDate, *&v7, lastDesiredDiscoveryModeDisableDate, v10];
    if (v4 <= 0.0)
    {
    }
  }

  else
  {
    v36 = @"desired discovery never enabled";
  }

  if (self->_lastEffectiveDiscoveryModeEnableDate)
  {
    [(NSDate *)self->_lastEffectiveDiscoveryModeDisableDate timeIntervalSinceDate:?];
    v12 = v11;
    lastEffectiveDiscoveryModeEnableDate = self->_lastEffectiveDiscoveryModeEnableDate;
    [(NSDate *)lastEffectiveDiscoveryModeEnableDate timeIntervalSinceNow];
    v15 = -v14;
    if (v12 > 0.0)
    {
      lastEffectiveDiscoveryModeDisableDate = self->_lastEffectiveDiscoveryModeDisableDate;
      v16 = lastEffectiveDiscoveryModeDisableDate;
    }

    else
    {
      v16 = +[NSDate now];
      lastEffectiveDiscoveryModeDisableDate = @"NOW";
    }

    [v16 timeIntervalSinceDate:self->_lastEffectiveDiscoveryModeEnableDate];
    v35 = [NSString stringWithFormat:@"effective discovery enabled at: %@ (%.0f s ago) until: %@ (duration %.0f s)", lastEffectiveDiscoveryModeEnableDate, *&v15, lastEffectiveDiscoveryModeDisableDate, v18];
    if (v12 <= 0.0)
    {
    }
  }

  else
  {
    v35 = @"effective discovery never enabled";
  }

  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  effectiveDiscoveryMode = self->_effectiveDiscoveryMode;
  v22 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  desiredDiscoveryMode = self->_desiredDiscoveryMode;
  v24 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
  connection = self->_connection;
  processIdentifier = [(NSXPCConnection *)connection processIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  processSuspended = self->_processSuspended;
  discoveryTracker = self->_discoveryTracker;
  v30 = MRCreateIndentedDebugDescriptionFromObject();
  connectionMonitor = self->_connectionMonitor;
  v32 = MRCreateIndentedDebugDescriptionFromObject();
  v33 = [NSString stringWithFormat:@"%@ %p {\n    effective discovery mode = %@, %@\n    desired discovery mode = %@, %@\n    xpc connection = %@\n    pid = %d\n    bundle id = %@\n    isProcessSuspended = %u\n    discoveryTracker = %@\n    connection monitor = %@\n}", v20, self, v22, v35, v24, v36, connection, processIdentifier, bundleIdentifier, processSuspended, v30, v32];

  return v33;
}

- (void)setDiscoveryMode:(unsigned int)mode
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_desiredDiscoveryMode != mode)
  {
    v5 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      desiredDiscoveryMode = self->_desiredDiscoveryMode;
      v7 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      *buf = 138412802;
      selfCopy = self;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] %@ setting desired discoveryMode from %{public}@ to %{public}@", buf, 0x20u);
    }

    self->_desiredDiscoveryMode = mode;
    v9 = +[NSDate now];
    v10 = 136;
    if (!mode)
    {
      v10 = 144;
    }

    v11 = *(&self->super.isa + v10);
    *(&self->super.isa + v10) = v9;

    [(MRDAVHostedDiscoverySession *)self _reevaluateEffectiveDiscoveryMode];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A0644;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)configurationWithCompletion:(id)completion
{
  completionCopy = completion;
  configuration = [(MRDAVHostedDiscoverySession *)self configuration];
  if (configuration)
  {
    completionCopy[2](completionCopy, configuration);
  }

  else
  {
    connection = [(MRDAVHostedDiscoverySession *)self connection];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A0B8C;
    v11[3] = &unk_1004B9BE0;
    v11[4] = self;
    v7 = completionCopy;
    v12 = v7;
    v8 = [connection remoteObjectProxyWithErrorHandler:v11];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000A0C68;
    v9[3] = &unk_1004B9C08;
    v9[4] = self;
    v10 = v7;
    [v8 configurationWithCompletion:v9];
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A0D68;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)setEffectiveDiscoveryMode:(unsigned int)mode
{
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_effectiveDiscoveryMode != mode)
  {
    v5 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      effectiveDiscoveryMode = self->_effectiveDiscoveryMode;
      v7 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      v8 = MRMediaRemoteCopyRouteDiscoveryModeDescription();
      *buf = 138412802;
      selfCopy = self;
      v34 = 2114;
      v35 = v7;
      v36 = 2114;
      v37 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] %@ setting effective discoveryMode from %{public}@ to %{public}@", buf, 0x20u);
    }

    if (!self->_discoveryTracker)
    {
      v9 = self->_bundleIdentifier;
      v10 = [NSString alloc];
      [(MRAVRoutingDiscoverySessionConfiguration *)self->_configuration features];
      v11 = MRMediaRemoteEndpointFeaturesDescription();
      v12 = [v10 initWithFormat:@"Hosted.%@", v11];

      v13 = [MRRollingWindowActivityTracker alloc];
      v14 = +[MRUserSettings currentSettings];
      [v14 persistantDiscoveryModeDetectionDuration];
      v16 = v15;
      v17 = +[MRUserSettings currentSettings];
      [v17 persistantDiscoveryModeDetectionWindowDuration];
      v19 = v18;
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1000A1060;
      v29[3] = &unk_1004B68F0;
      v30 = v12;
      v31 = v9;
      v20 = v9;
      v21 = v12;
      v22 = [v13 initWithActivityName:v21 maxAllowedTime:v29 windowDuration:v16 handler:v19];
      discoveryTracker = self->_discoveryTracker;
      self->_discoveryTracker = v22;
    }

    v24 = +[NSDate now];
    if (mode)
    {
      lastEffectiveDiscoveryModeEnableDate = self->_lastEffectiveDiscoveryModeEnableDate;
      self->_lastEffectiveDiscoveryModeEnableDate = v24;

      [(MRActivityTracker *)self->_discoveryTracker startActivityTracking];
    }

    else
    {
      lastEffectiveDiscoveryModeDisableDate = self->_lastEffectiveDiscoveryModeDisableDate;
      self->_lastEffectiveDiscoveryModeDisableDate = v24;

      [(MRActivityTracker *)self->_discoveryTracker stopActivityTracking];
    }

    self->_effectiveDiscoveryMode = mode;
    calloutQueue = [objc_opt_class() calloutQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A10B0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(calloutQueue, block);
  }
}

- (void)setProcessSuspended:(BOOL)suspended
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000A118C;
  v4[3] = &unk_1004B8820;
  v4[4] = self;
  suspendedCopy = suspended;
  dispatch_async(serialQueue, v4);
}

- (void)getDevicePresenceDetectedWithCompletion:(id)completion
{
  hostedRoutingController = self->_hostedRoutingController;
  completionCopy = completion;
  (*(completion + 2))(completionCopy, [(MRDHostedRoutingController *)hostedRoutingController devicePresenceDetected], 0);
}

- (void)getDiscoveryModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A13B8;
  v6[3] = &unk_1004B6D30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);
  (*(completionCopy + 2))(completionCopy, *(v8 + 6), 0);
  _Block_object_dispose(&v7, 8);
}

- (void)setDiscoveryMode:(unsigned int)mode withCompletion:(id)completion
{
  serialQueue = self->_serialQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A146C;
  v6[3] = &unk_1004B87D0;
  v6[4] = self;
  modeCopy = mode;
  completionCopy = completion;
  dispatch_async(serialQueue, v6);
  completionCopy[2](completionCopy, 0);
}

- (void)getAvailableEndpointsWithCompletion:(id)completion
{
  hostedRoutingController = self->_hostedRoutingController;
  completionCopy = completion;
  availableDistantEndpoints = [(MRDHostedRoutingController *)hostedRoutingController availableDistantEndpoints];
  completionCopy[2](completionCopy, availableDistantEndpoints, 0);
}

- (void)getAvailableOutputDevicesWithCompletion:(id)completion
{
  hostedRoutingController = self->_hostedRoutingController;
  completionCopy = completion;
  availableDistantOutputDevices = [(MRDHostedRoutingController *)hostedRoutingController availableDistantOutputDevices];
  completionCopy[2](completionCopy, availableDistantOutputDevices, 0);
}

- (void)_notifyAvailableOutputDevicesDidChange:(id)change
{
  changeCopy = change;
  [(MRDAVHostedDiscoverySession *)self _maybeWakeClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A15FC;
  v6[3] = &unk_1004B9C30;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  [(MRDAVHostedDiscoverySession *)self configurationWithCompletion:v6];
}

- (void)_notifyAvailableEndpointsDidChange:(id)change
{
  changeCopy = change;
  [(MRDAVHostedDiscoverySession *)self _maybeWakeClient];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000A1900;
  v6[3] = &unk_1004B9C30;
  v7 = changeCopy;
  selfCopy = self;
  v5 = changeCopy;
  [(MRDAVHostedDiscoverySession *)self configurationWithCompletion:v6];
}

- (void)_resumeConnection
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10003503C;
  v25 = sub_1000359D4;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10003503C;
  v19 = sub_1000359D4;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A1E3C;
  block[3] = &unk_1004B9C58;
  block[4] = self;
  block[5] = &v21;
  block[6] = &v15;
  dispatch_sync(serialQueue, block);
  v4 = +[MRUserSettings currentSettings];
  verboseHostedDiscoverySessionLogging = [v4 verboseHostedDiscoverySessionLogging];

  if (verboseHostedDiscoverySessionLogging)
  {
    v6 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v22[5];
      *buf = 138412546;
      v28 = v7;
      v29 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] Restoring outputDevices %@ for %@", buf, 0x16u);
    }
  }

  v8 = +[MRUserSettings currentSettings];
  verboseHostedDiscoverySessionLogging2 = [v8 verboseHostedDiscoverySessionLogging];

  if (verboseHostedDiscoverySessionLogging2)
  {
    v10 = MRLogCategoryDiscovery();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v16[5];
      *buf = 138412546;
      v28 = v11;
      v29 = 2112;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[HostedDiscoverySession] Restoring endpoints %@ for %@", buf, 0x16u);
    }
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy availableOutputDevicesDidChange:v22[5]];

  remoteObjectProxy2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy2 availableEndpointsDidChange:v16[5]];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

- (MRDAVHostedDiscoverySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end