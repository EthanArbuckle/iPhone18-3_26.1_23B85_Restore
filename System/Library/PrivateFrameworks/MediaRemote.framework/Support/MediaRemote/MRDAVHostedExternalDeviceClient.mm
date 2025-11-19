@interface MRDAVHostedExternalDeviceClient
- (BOOL)hasAttemptedToConnect;
- (BOOL)hasConnectionAttemptCompleted;
- (MRDAVHostedExternalDeviceClient)initWithConnection:(id)a3;
- (NSArray)discoveryTokens;
- (NSString)debugDescription;
- (id)discoveryTokenForConfiguration:(id)a3;
- (unsigned)connectionState;
- (void)_maybeWakeClient;
- (void)_resumeConnectionWithState:(id)a3;
- (void)connectionDidInvalidate:(id)a3;
- (void)connectionDidResume:(id)a3;
- (void)dealloc;
- (void)discoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4;
- (void)hostedExternalDeviceDeviceInfoDidChange:(id)a3;
- (void)hostedExternalDeviceDidAddOutputDevice:(id)a3;
- (void)hostedExternalDeviceDidChangeOutputDevice:(id)a3;
- (void)hostedExternalDeviceDidReceiveCustomData:(id)a3 withName:(id)a4;
- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)a3;
- (void)hostedExternalDeviceEndpointDidChange:(id)a3;
- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)a3 forOutputDevice:(id)a4;
- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)a3 forOutputDevice:(id)a4;
- (void)hostedExternalDeviceVolumeDidChange:(float)a3 forOutputDevice:(id)a4;
- (void)invalidateWithError:(id)a3;
- (void)setConnectionState:(unsigned int)a3;
- (void)setDiscoveryToken:(id)a3 forConfiguration:(id)a4;
- (void)setHasAttemptedToConnect:(BOOL)a3;
- (void)setHasConnectionAttemptCompleted:(BOOL)a3;
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

- (MRDAVHostedExternalDeviceClient)initWithConnection:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = MRDAVHostedExternalDeviceClient;
  v6 = [(MRDAVHostedExternalDeviceClient *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
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
    v14 = [(MRXPCConnectionMonitor *)v11 initWithConnection:v5 label:v13];
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

- (void)invalidateWithError:(id)a3
{
  v4 = a3;
  if (self->_connection)
  {
    v5 = MRLogCategoryConnections();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v4;
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@ %p {\n", objc_opt_class(), v2];
  [v3 appendFormat:@"  %@-%d\n", v2->_bundleIdentifier, -[NSXPCConnection processIdentifier](v2->_connection, "processIdentifier")];
  hasAttemptedToConnect = v2->_hasAttemptedToConnect;
  hasAttemptedToConnectDate = v2->_hasAttemptedToConnectDate;
  [(NSDate *)hasAttemptedToConnectDate timeIntervalSinceNow];
  if (hasAttemptedToConnect)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"  hasConnected = %@ (%@ %lf seconds ago)\n", v7, hasAttemptedToConnectDate, -v6];
  hasConnectionAttemptCompleted = v2->_hasConnectionAttemptCompleted;
  hasConnectionAttemptCompletedDate = v2->_hasConnectionAttemptCompletedDate;
  [(NSDate *)hasConnectionAttemptCompletedDate timeIntervalSinceNow];
  if (hasConnectionAttemptCompleted)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 appendFormat:@"  hasConnectedCompleted = %@ (%@ %lf seconds ago)\n", v11, hasConnectionAttemptCompletedDate, -v10];
  connectionState = v2->_connectionState;
  v13 = MRExternalDeviceConnectionStateCopyDescription();
  connectionStateDate = v2->_connectionStateDate;
  [(NSDate *)connectionStateDate timeIntervalSinceNow];
  [v3 appendFormat:@"  connectionState = %@ (%@ %lf seconds ago)\n", v13, connectionStateDate, -v15];

  if (v2->_registeredCallbacks)
  {
    v16 = NSStringFromMRAVDistantExternalDeviceCallbackFlags();
    [v3 appendFormat:@"  registeredCallbacks = %@\n", v16];
  }

  if (v2->_notifications)
  {
    v17 = NSStringFromMRAVDistantExternalDeviceNotificationFlags();
    [v3 appendFormat:@"  registeredNotifications = %@\n", v17];
  }

  if ([(NSArray *)v2->_subscribedPlayerPaths count])
  {
    subscribedPlayerPaths = v2->_subscribedPlayerPaths;
    v19 = MRCreateIndentedDebugDescriptionFromArray();
    [v3 appendFormat:@"  subscribedPlayerPaths = %@", v19];
  }

  if (v2->_pendingClientState)
  {
    v20 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"  pendingClientState = %@", v20];
  }

  connectionMonitor = v2->_connectionMonitor;
  v22 = MRCreateIndentedDebugDescriptionFromObject();
  [v3 appendFormat:@"  connectionMonitor = %@", v22];

  [v3 appendFormat:@"}>\n"];
  objc_sync_exit(v2);

  return v3;
}

- (void)hostedExternalDeviceDeviceInfoDidChange:(id)a3
{
  v4 = a3;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C4D0;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidReceiveCustomData:(id)a3 withName:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007C724;
  v11[3] = &unk_1004B6A98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v11];
}

- (void)hostedExternalDeviceEndpointDidChange:(id)a3
{
  v4 = a3;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C91C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceVolumeCapabilitiesDidChange:(unsigned int)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CB54;
  v9[3] = &unk_1004B89A0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceVolumeDidChange:(float)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007CE78;
  v9[3] = &unk_1004B89A0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceIsMutedDidChange:(BOOL)a3 forOutputDevice:(id)a4
{
  v6 = a4;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D188;
  v9[3] = &unk_1004B89F0;
  v11 = a3;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v9];
}

- (void)hostedExternalDeviceDidAddOutputDevice:(id)a3
{
  v4 = a3;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D48C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidChangeOutputDevice:(id)a3
{
  v4 = a3;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D714;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)hostedExternalDeviceDidRemoveOutputDevice:(id)a3
{
  v4 = a3;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007D99C;
  v7[3] = &unk_1004B89C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v7];
}

- (void)discoveryOutputDevicesChanged:(id)a3 forConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MRDAVHostedExternalDeviceClient *)self _maybeWakeClient];
  connectionMonitor = self->_connectionMonitor;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007DC48;
  v11[3] = &unk_1004B6A98;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(MRXPCConnectionMonitor *)connectionMonitor canSendMessage:v11];
}

- (void)setHasAttemptedToConnect:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasAttemptedToConnect = a3;
  v4 = +[NSDate now];
  hasAttemptedToConnectDate = obj->_hasAttemptedToConnectDate;
  obj->_hasAttemptedToConnectDate = v4;

  objc_sync_exit(obj);
}

- (BOOL)hasAttemptedToConnect
{
  v2 = self;
  objc_sync_enter(v2);
  hasAttemptedToConnect = v2->_hasAttemptedToConnect;
  objc_sync_exit(v2);

  return hasAttemptedToConnect;
}

- (void)setConnectionState:(unsigned int)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_connectionState = a3;
  v4 = +[NSDate now];
  connectionStateDate = obj->_connectionStateDate;
  obj->_connectionStateDate = v4;

  objc_sync_exit(obj);
}

- (unsigned)connectionState
{
  v2 = self;
  objc_sync_enter(v2);
  connectionState = v2->_connectionState;
  objc_sync_exit(v2);

  return connectionState;
}

- (void)setHasConnectionAttemptCompleted:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_hasConnectionAttemptCompleted = a3;
  v4 = +[NSDate now];
  hasConnectionAttemptCompletedDate = obj->_hasConnectionAttemptCompletedDate;
  obj->_hasConnectionAttemptCompletedDate = v4;

  objc_sync_exit(obj);
}

- (BOOL)hasConnectionAttemptCompleted
{
  v2 = self;
  objc_sync_enter(v2);
  hasConnectionAttemptCompleted = v2->_hasConnectionAttemptCompleted;
  objc_sync_exit(v2);

  return hasConnectionAttemptCompleted;
}

- (id)discoveryTokenForConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_discoveryTokens objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setDiscoveryToken:(id)a3 forConfiguration:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  v8 = v13;
  discoveryTokens = v7->_discoveryTokens;
  if (!discoveryTokens)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    v11 = v7->_discoveryTokens;
    v7->_discoveryTokens = v10;

    discoveryTokens = v7->_discoveryTokens;
    v8 = v13;
  }

  [(NSMutableDictionary *)discoveryTokens setObject:v8 forKeyedSubscript:v6];
  if (!v13)
  {
    v12 = [(MRDAVHostedExternalDevicePendingClientState *)v7->_pendingClientState discoverySessionConfigurationsResults];
    [v12 setObject:0 forKeyedSubscript:v6];
  }

  objc_sync_exit(v7);
}

- (NSArray)discoveryTokens
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_discoveryTokens allValues];
  objc_sync_exit(v2);

  return v3;
}

- (void)connectionDidResume:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4;
  objc_sync_enter(v5);
  v6 = v5[13];
  v7 = v5[13];
  v5[13] = 0;

  objc_sync_exit(v5);
  [v5 _resumeConnectionWithState:v6];

  objc_sync_exit(v5);
}

- (void)connectionDidInvalidate:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_alloc_init(MRDAVHostedExternalDevicePendingClientState);
  pendingClientState = v4->_pendingClientState;
  v4->_pendingClientState = v5;

  objc_sync_exit(v4);
}

- (void)_resumeConnectionWithState:(id)a3
{
  v4 = a3;
  v5 = MRLogCategoryConnections();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v88 = v4;
    v89 = 2112;
    v90 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[HostedExternalDeviceClient] Restoring state %@ for %@", buf, 0x16u);
  }

  if ([v4 connectionState])
  {
    v6 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v7 = [v4 connectionState];
    v8 = [v4 connectionStateError];
    [v6 hostedExternalDeviceConnectionStateDidChange:v7 withError:v8];
  }

  v9 = [v4 deviceInfo];

  if (v9)
  {
    v10 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v11 = [v4 deviceInfo];
    [v10 hostedExternalDeviceDeviceInfoDidChange:v11];
  }

  v12 = [v4 endpoint];

  if (v12)
  {
    v13 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    v14 = [v4 endpoint];
    [v13 hostedExternalDeviceEndpointDidChange:v14];
  }

  v15 = [v4 outputDeviceModifications];

  if (v15)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v16 = [v4 outputDeviceModifications];
    v17 = [v16 addedOutputDevices];

    v18 = [v17 countByEnumeratingWithState:&v80 objects:v86 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v80 + 1) + 8 * v21);
          v23 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [v23 hostedExternalDeviceDidAddOutputDevice:v22];

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v80 objects:v86 count:16];
      }

      while (v19);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v24 = [v4 outputDeviceModifications];
    v25 = [v24 changedOutputDevices];

    v26 = [v25 countByEnumeratingWithState:&v76 objects:v85 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v76 + 1) + 8 * v29);
          v31 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [v31 hostedExternalDeviceDidChangeOutputDevice:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v76 objects:v85 count:16];
      }

      while (v27);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v32 = [v4 outputDeviceModifications];
    v33 = [v32 removedOutputDevices];

    v34 = [v33 countByEnumeratingWithState:&v72 objects:v84 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v72 + 1) + 8 * v37);
          v39 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
          [v39 hostedExternalDeviceDidRemoveOutputDevice:v38];

          v37 = v37 + 1;
        }

        while (v35 != v37);
        v35 = [v33 countByEnumeratingWithState:&v72 objects:v84 count:16];
      }

      while (v35);
    }
  }

  v40 = [v4 discoverySessionConfigurationsResults];

  if (v40)
  {
    v41 = [v4 discoverySessionConfigurationsResults];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 3221225472;
    v71[2] = sub_10007EABC;
    v71[3] = &unk_1004B8A18;
    v71[4] = self;
    [v41 enumerateKeysAndObjectsUsingBlock:v71];
  }

  v42 = [v4 outputDeviceVolumeCapabilities];

  if (v42)
  {
    v43 = [v4 outputDeviceVolumeCapabilities];
    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_10007EB3C;
    v68[3] = &unk_1004B8A68;
    v69 = v4;
    v70 = self;
    [v43 enumerateKeysAndObjectsUsingBlock:v68];
  }

  v44 = [v4 volumeCapabilities];

  if (v44)
  {
    v45 = [v4 volumeCapabilities];
    v46 = [v45 unsignedIntValue];

    v47 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v47 hostedExternalDeviceVolumeCapabilitiesDidChange:v46 forOutputDevice:0];
  }

  v48 = [v4 outputDeviceVolume];

  if (v48)
  {
    v49 = [v4 outputDeviceVolume];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10007EC8C;
    v65[3] = &unk_1004B8A68;
    v66 = v4;
    v67 = self;
    [v49 enumerateKeysAndObjectsUsingBlock:v65];
  }

  v50 = [v4 volume];

  if (v50)
  {
    v51 = [v4 volume];
    [v51 floatValue];
    v53 = v52;

    v54 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    LODWORD(v55) = v53;
    [v54 hostedExternalDeviceVolumeDidChange:0 forOutputDevice:v55];
  }

  v56 = [v4 outputDeviceMute];

  if (v56)
  {
    v57 = [v4 outputDeviceMute];
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 3221225472;
    v62[2] = sub_10007EDE4;
    v62[3] = &unk_1004B8A68;
    v63 = v4;
    v64 = self;
    [v57 enumerateKeysAndObjectsUsingBlock:v62];
  }

  v58 = [v4 isMuted];

  if (v58)
  {
    v59 = [v4 volume];
    v60 = [v59 BOOLValue];

    v61 = [(NSXPCConnection *)self->_connection remoteObjectProxy];
    [v61 hostedExternalDeviceIsMutedDidChange:v60 forOutputDevice:0];
  }
}

@end