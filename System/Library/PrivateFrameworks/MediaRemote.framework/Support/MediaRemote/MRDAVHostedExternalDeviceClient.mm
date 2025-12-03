@interface MRDAVHostedExternalDeviceClient
- (BOOL)hasAttemptedToConnect;
- (BOOL)hasConnectionAttemptCompleted;
- (MRDAVHostedExternalDeviceClient)initWithConnection:(id)connection;
- (NSArray)discoveryTokens;
- (NSString)debugDescription;
- (id)discoveryTokenForConfiguration:(id)configuration;
- (unsigned)connectionState;
- (void)_maybeWakeClient;
- (void)_resumeConnectionWithState:(id)state;
- (void)connectionDidInvalidate:(id)invalidate;
- (void)connectionDidResume:(id)resume;
- (void)dealloc;
- (void)discoveryOutputDevicesChanged:(id)changed forConfiguration:(id)configuration;
- (void)hostedExternalDeviceDeviceInfoDidChange:(id)change;
- (void)hostedExternalDeviceDidAddOutputDevice:(id)device;
- (void)hostedExternalDeviceDidChangeOutputDevice:(id)device;
- (void)hostedExternalDeviceDidReceiveCustomData:(id)data withName:(id)name;
- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)device;
- (void)hostedExternalDeviceEndpointDidChange:(id)change;
- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)change forOutputDevice:(id)device;
- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)change forOutputDevice:(id)device;
- (void)hostedExternalDeviceVolumeDidChange:(float)change forOutputDevice:(id)device;
- (void)invalidateWithError:(id)error;
- (void)setConnectionState:(unsigned int)state;
- (void)setDiscoveryToken:(id)token forConfiguration:(id)configuration;
- (void)setHasAttemptedToConnect:(BOOL)connect;
- (void)setHasConnectionAttemptCompleted:(BOOL)completed;
@end

@implementation MRDAVHostedExternalDeviceClient

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

- (MRDAVHostedExternalDeviceClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = MRDAVHostedExternalDeviceClient;
  v6 = [(MRDAVHostedExternalDeviceClient *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    v7->_registeredCallbacks = 0;
    v7->_notifications = 0;
    connection = v7->_connection;
    if (connection)
    {
      [(NSXPCConnection *)connection auditToken];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v9 = sub_100007074(v17);
    bundleIdentifier = v7->_bundleIdentifier;
    v7->_bundleIdentifier = v9;

    v11 = [MRXPCConnectionMonitor alloc];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(MRXPCConnectionMonitor *)v11 initWithConnection:connectionCopy label:v13];
    connectionMonitor = v7->_connectionMonitor;
    v7->_connectionMonitor = v14;

    [(MRXPCConnectionMonitor *)v7->_connectionMonitor setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:kMRMediaRemoteFrameworkErrorDomain code:123 userInfo:0];
  [(MRDAVHostedExternalDeviceClient *)self invalidateWithError:v4];

  v5.receiver = self;
  v5.super_class = MRDAVHostedExternalDeviceClient;
  [(MRDAVHostedExternalDeviceClient *)&v5 dealloc];
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  if (self->_connection)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v14 = 2112;
      v15 = errorCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] %@ Invalidating with error %@", buf, 0x16u);
    }

    v6 = self->_connection;
    connection = self->_connection;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10007BF48;
    v10[3] = &unk_1004B6D08;
    v11 = v6;
    v8 = v6;
    [(NSXPCConnection *)connection scheduleSendBarrierBlock:v10];
    v9 = self->_connection;
    self->_connection = 0;
  }
}

- (NSString)debugDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy = [[NSMutableString alloc] initWithFormat:@"<%@ %p {\n", objc_opt_class(), selfCopy];
  [selfCopy appendFormat:@"  %@-%d\n", selfCopy->_bundleIdentifier, -[NSXPCConnection processIdentifier](selfCopy->_connection, "processIdentifier")];
  hasAttemptedToConnect = selfCopy->_hasAttemptedToConnect;
  hasAttemptedToConnectDate = selfCopy->_hasAttemptedToConnectDate;
  [(NSDate *)hasAttemptedToConnectDate timeIntervalSinceNow];
  if (hasAttemptedToConnect)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [selfCopy appendFormat:@"  hasConnected = %@ (%@ %lf seconds ago)\n", v7, hasAttemptedToConnectDate, -v6];
  hasConnectionAttemptCompleted = selfCopy->_hasConnectionAttemptCompleted;
  hasConnectionAttemptCompletedDate = selfCopy->_hasConnectionAttemptCompletedDate;
  [(NSDate *)hasConnectionAttemptCompletedDate timeIntervalSinceNow];
  if (hasConnectionAttemptCompleted)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [selfCopy appendFormat:@"  hasConnectedCompleted = %@ (%@ %lf seconds ago)\n", v11, hasConnectionAttemptCompletedDate, -v10];
  connectionState = selfCopy->_connectionState;
  v13 = MRExternalDeviceConnectionStateCopyDescription();
  connectionStateDate = selfCopy->_connectionStateDate;
  [(NSDate *)connectionStateDate timeIntervalSinceNow];
  [selfCopy appendFormat:@"  connectionState = %@ (%@ %lf seconds ago)\n", v13, connectionStateDate, -v15];

  if (selfCopy->_registeredCallbacks)
  {
    v16 = NSStringFromMRAVDistantExternalDeviceCallbackFlags();
    [selfCopy appendFormat:@"  registeredCallbacks = %@\n", v16];
  }

  if (selfCopy->_notifications)
  {
    v17 = NSStringFromMRAVDistantExternalDeviceNotificationFlags();
    [selfCopy appendFormat:@"  registeredNotifications = %@\n", v17];
  }

  if ([(NSArray *)selfCopy->_subscribedPlayerPaths count])
  {
    subscribedPlayerPaths = selfCopy->_subscribedPlayerPaths;
    v19 = MRCreateIndentedDebugDescriptionFromArray();
    [selfCopy appendFormat:@"  subscribedPlayerPaths = %@", v19];
  }

  if (selfCopy->_pendingClientState)
  {
    v20 = MRCreateIndentedDebugDescriptionFromObject();
    [selfCopy appendFormat:@"  pendingClientState = %@", v20];
  }

  connectionMonitor = selfCopy->_connectionMonitor;
  v22 = MRCreateIndentedDebugDescriptionFromObject();
  [selfCopy appendFormat:@"  connectionMonitor = %@", v22];

  [selfCopy appendFormat:@"}>\n"];
  objc_sync_exit(selfCopy);

  return selfCopy;
}

- (void)hostedExternalDeviceDeviceInfoDidChange:(id)change
{
  changeCopy = change;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C4D0;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidReceiveCustomData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007C724;
  v11[3] = &unk_1004B6A98;
  v11[4] = self;
  v12 = dataCopy;
  v13 = nameCopy;
  v9 = nameCopy;
  v10 = dataCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v11];
}

- (void)hostedExternalDeviceEndpointDidChange:(id)change
{
  changeCopy = change;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C91C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)change forOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CB54;
  v9[3] = &unk_1004B89A0;
  changeCopy = change;
  v9[4] = self;
  v10 = deviceCopy;
  v8 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceVolumeDidChange:(float)change forOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CE78;
  v9[3] = &unk_1004B89A0;
  changeCopy = change;
  v9[4] = self;
  v10 = deviceCopy;
  v8 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)change forOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D188;
  v9[3] = &unk_1004B89F0;
  changeCopy = change;
  v9[4] = self;
  v10 = deviceCopy;
  v8 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceDidAddOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D48C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidChangeOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D714;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)device
{
  deviceCopy = device;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D99C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)discoveryOutputDevicesChanged:(id)changed forConfiguration:(id)configuration
{
  changedCopy = changed;
  configurationCopy = configuration;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007DC48;
  v11[3] = &unk_1004B6A98;
  v11[4] = self;
  v12 = changedCopy;
  v13 = configurationCopy;
  v9 = configurationCopy;
  v10 = changedCopy;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v11];
}

- (void)setHasAttemptedToConnect:(BOOL)connect
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasAttemptedToConnect = connect;
  v4 = +[NSDate now];
  hasAttemptedToConnectDate = obj->_hasAttemptedToConnectDate;
  obj->_hasAttemptedToConnectDate = v4;

  objc_sync_exit(obj);
}

- (BOOL)hasAttemptedToConnect
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasAttemptedToConnect = selfCopy->_hasAttemptedToConnect;
  objc_sync_exit(selfCopy);

  return hasAttemptedToConnect;
}

- (void)setConnectionState:(unsigned int)state
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionState = state;
  v4 = +[NSDate now];
  connectionStateDate = obj->_connectionStateDate;
  obj->_connectionStateDate = v4;

  objc_sync_exit(obj);
}

- (unsigned)connectionState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  connectionState = selfCopy->_connectionState;
  objc_sync_exit(selfCopy);

  return connectionState;
}

- (void)setHasConnectionAttemptCompleted:(BOOL)completed
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasConnectionAttemptCompleted = completed;
  v4 = +[NSDate now];
  hasConnectionAttemptCompletedDate = obj->_hasConnectionAttemptCompletedDate;
  obj->_hasConnectionAttemptCompletedDate = v4;

  objc_sync_exit(obj);
}

- (BOOL)hasConnectionAttemptCompleted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasConnectionAttemptCompleted = selfCopy->_hasConnectionAttemptCompleted;
  objc_sync_exit(selfCopy);

  return hasConnectionAttemptCompleted;
}

- (id)discoveryTokenForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_discoveryTokens objectForKeyedSubscript:configurationCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)setDiscoveryToken:(id)token forConfiguration:(id)configuration
{
  tokenCopy = token;
  configurationCopy = configuration;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = tokenCopy;
  discoveryTokens = selfCopy->_discoveryTokens;
  if (!discoveryTokens)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = selfCopy->_discoveryTokens;
    selfCopy->_discoveryTokens = v10;

    discoveryTokens = selfCopy->_discoveryTokens;
    v8 = tokenCopy;
  }

  [(NSMutableDictionary *)discoveryTokens setObject:v8 forKeyedSubscript:configurationCopy];
  if (!tokenCopy)
  {
    discoverySessionConfigurationsResults = [(MRDAVHostedExternalDevicePendingClientState *)selfCopy->_pendingClientState discoverySessionConfigurationsResults];
    [discoverySessionConfigurationsResults setObject:0 forKeyedSubscript:configurationCopy];
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)discoveryTokens
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_discoveryTokens allValues];
  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)connectionDidResume:(id)resume
{
  resumeCopy = resume;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy;
  objc_sync_enter(v5);
  v6 = v5[13];
  v7 = v5[13];
  v5[13] = 0;

  objc_sync_exit(v5);
  [v5 _resumeConnectionWithState:v6];

  objc_sync_exit(v5);
}

- (void)connectionDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_alloc_init(MRDAVHostedExternalDevicePendingClientState);
  pendingClientState = selfCopy->_pendingClientState;
  selfCopy->_pendingClientState = v5;

  objc_sync_exit(selfCopy);
}

- (void)_resumeConnectionWithState:(id)state
{
  stateCopy = state;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v88 = stateCopy;
    v89 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Restoring state %@ for %@", buf, 0x16u);
  }

  if ([stateCopy connectionState])
  {
    remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    connectionState = [stateCopy connectionState];
    connectionStateError = [stateCopy connectionStateError];
    [remoteObjectProxy hostedExternalDeviceConnectionStateDidChange:connectionState withError:connectionStateError];
  }

  deviceInfo = [stateCopy deviceInfo];

  if (deviceInfo)
  {
    remoteObjectProxy2 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    deviceInfo2 = [stateCopy deviceInfo];
    [remoteObjectProxy2 hostedExternalDeviceDeviceInfoDidChange:deviceInfo2];
  }

  endpoint = [stateCopy endpoint];

  if (endpoint)
  {
    remoteObjectProxy3 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    endpoint2 = [stateCopy endpoint];
    [remoteObjectProxy3 hostedExternalDeviceEndpointDidChange:endpoint2];
  }

  outputDeviceModifications = [stateCopy outputDeviceModifications];

  if (outputDeviceModifications)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    outputDeviceModifications2 = [stateCopy outputDeviceModifications];
    addedOutputDevices = [outputDeviceModifications2 addedOutputDevices];

    v18 = [addedOutputDevices countByEnumeratingWithState:&v80 objects:v86 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v81;
      do
      {
        v21 = 0;
        do
        {
          if (*v81 != v20)
          {
            objc_enumerationMutation(addedOutputDevices);
          }

          v22 = *(*(&v80 + 1) + 8 * v21);
          remoteObjectProxy4 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [remoteObjectProxy4 hostedExternalDeviceDidAddOutputDevice:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [addedOutputDevices countByEnumeratingWithState:&v80 objects:v86 count:16];
      }

      while (v19);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    outputDeviceModifications3 = [stateCopy outputDeviceModifications];
    changedOutputDevices = [outputDeviceModifications3 changedOutputDevices];

    v26 = [changedOutputDevices countByEnumeratingWithState:&v76 objects:v85 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v77;
      do
      {
        v29 = 0;
        do
        {
          if (*v77 != v28)
          {
            objc_enumerationMutation(changedOutputDevices);
          }

          v30 = *(*(&v76 + 1) + 8 * v29);
          remoteObjectProxy5 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [remoteObjectProxy5 hostedExternalDeviceDidChangeOutputDevice:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [changedOutputDevices countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v27);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    outputDeviceModifications4 = [stateCopy outputDeviceModifications];
    removedOutputDevices = [outputDeviceModifications4 removedOutputDevices];

    v34 = [removedOutputDevices countByEnumeratingWithState:&v72 objects:v84 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v73;
      do
      {
        v37 = 0;
        do
        {
          if (*v73 != v36)
          {
            objc_enumerationMutation(removedOutputDevices);
          }

          v38 = *(*(&v72 + 1) + 8 * v37);
          remoteObjectProxy6 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [remoteObjectProxy6 hostedExternalDeviceDidRemoveOutputDevice:v38];

          v37 = v37 + 1;
        }

        while (v35 != v37);
        v35 = [removedOutputDevices countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v35);
    }
  }

  discoverySessionConfigurationsResults = [stateCopy discoverySessionConfigurationsResults];

  if (discoverySessionConfigurationsResults)
  {
    discoverySessionConfigurationsResults2 = [stateCopy discoverySessionConfigurationsResults];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10007EABC;
    v71[3] = &unk_1004B8A18;
    v71[4] = self;
    [discoverySessionConfigurationsResults2 enumerateKeysAndObjectsUsingBlock:v71];
  }

  outputDeviceVolumeCapabilities = [stateCopy outputDeviceVolumeCapabilities];

  if (outputDeviceVolumeCapabilities)
  {
    outputDeviceVolumeCapabilities2 = [stateCopy outputDeviceVolumeCapabilities];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10007EB3C;
    v68[3] = &unk_1004B8A68;
    v69 = stateCopy;
    selfCopy2 = self;
    [outputDeviceVolumeCapabilities2 enumerateKeysAndObjectsUsingBlock:v68];
  }

  volumeCapabilities = [stateCopy volumeCapabilities];

  if (volumeCapabilities)
  {
    volumeCapabilities2 = [stateCopy volumeCapabilities];
    unsignedIntValue = [volumeCapabilities2 unsignedIntValue];

    remoteObjectProxy7 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy7 hostedExternalDeviceVolumeCapabilitiesDidChange:unsignedIntValue forOutputDevice:0];
  }

  outputDeviceVolume = [stateCopy outputDeviceVolume];

  if (outputDeviceVolume)
  {
    outputDeviceVolume2 = [stateCopy outputDeviceVolume];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10007EC8C;
    v65[3] = &unk_1004B8A68;
    v66 = stateCopy;
    selfCopy3 = self;
    [outputDeviceVolume2 enumerateKeysAndObjectsUsingBlock:v65];
  }

  volume = [stateCopy volume];

  if (volume)
  {
    volume2 = [stateCopy volume];
    [volume2 floatValue];
    v53 = v52;

    remoteObjectProxy8 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    LODWORD(v55) = v53;
    [remoteObjectProxy8 hostedExternalDeviceVolumeDidChange:0 forOutputDevice:v55];
  }

  outputDeviceMute = [stateCopy outputDeviceMute];

  if (outputDeviceMute)
  {
    outputDeviceMute2 = [stateCopy outputDeviceMute];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10007EDE4;
    v62[3] = &unk_1004B8A68;
    v63 = stateCopy;
    selfCopy4 = self;
    [outputDeviceMute2 enumerateKeysAndObjectsUsingBlock:v62];
  }

  isMuted = [stateCopy isMuted];

  if (isMuted)
  {
    volume3 = [stateCopy volume];
    bOOLValue = [volume3 BOOLValue];

    remoteObjectProxy9 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [remoteObjectProxy9 hostedExternalDeviceIsMutedDidChange:bOOLValue forOutputDevice:0];
  }
}

@end