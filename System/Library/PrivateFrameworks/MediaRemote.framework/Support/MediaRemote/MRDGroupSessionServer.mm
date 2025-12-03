@interface MRDGroupSessionServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MRDGroupSessionEligibilityMonitor)eligibilityMonitor;
- (MRDGroupSessionManager)sessionManager;
- (MRDGroupSessionServer)initWithNowPlayingServer:(id)server;
- (MRDRemoteControlGroupSessionCoordinator)coordinator;
- (NSError)lastConnectionError;
- (NSXPCListener)listener;
- (id)clientForConnection:(id)connection;
- (void)_completeGroupSessionRequestsWithIdentifier:(id)identifier;
- (void)_handleCreateGroupSessionTokenMessage:(id)message fromClient:(id)client;
- (void)_handleGetUserIdentityForDSIDMessage:(id)message fromClient:(id)client;
- (void)_handleGetUserIdentityMessage:(id)message fromClient:(id)client;
- (void)_handleGroupSessionEventMessage:(id)message fromClient:(id)client;
- (void)_handlePresentProximityCardMessage:(id)message fromClient:(id)client;
- (void)_handleRequestGroupSessionMessage:(id)message fromClient:(id)client;
- (void)addClient:(id)client;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dismissProximityCard;
- (void)handleClientConnect:(id)connect;
- (void)handleClientInvalidate:(id)invalidate;
- (void)handleGetGroupSessionServerEndpointMessage:(id)message fromClient:(id)client;
- (void)handleJoinGroupSessionMessage:(id)message fromClient:(id)client;
- (void)handleLeaveGroupSessionMessage:(id)message fromClient:(id)client;
- (void)handleUserStateChange:(id)change;
- (void)handleXPCMessage:(id)message fromClient:(id)client;
- (void)joinGroupSessionViaEquivalentWHAEndpoint:(id)endpoint completion:(id)completion;
- (void)manager:(id)manager activeSessionDidChange:(id)change;
- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session;
- (void)manager:(id)manager didStartHostedGroupSession:(id)session;
- (void)manager:(id)manager discoveredSessionsDidChange:(id)change;
- (void)notifyActiveSessionStateChanged;
- (void)notifyEligibilityChanged:(id)changed;
- (void)presentProximityCardWithDeviceName:(id)name modelIdentifier:(id)identifier color:(id)color url:(id)url error:(id *)error;
- (void)reevaluateAssertionState;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)removeClient:(id)client;
- (void)requestEligibilityMonitoring;
- (void)requestGroupSessionWithCompletion:(id)completion;
- (void)restoreClientState:(id)state handler:(id)handler;
- (void)setLastConnectionError:(id)error;
- (void)start;
- (void)stop;
@end

@implementation MRDGroupSessionServer

- (MRDGroupSessionManager)sessionManager
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_sessionManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MRDGroupSessionEligibilityMonitor)eligibilityMonitor
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_eligibilityMonitor;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (MRDGroupSessionServer)initWithNowPlayingServer:(id)server
{
  serverCopy = server;
  v34.receiver = self;
  v34.super_class = MRDGroupSessionServer;
  v6 = [(MRDGroupSessionServer *)&v34 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = MRGroupSessionSubsystemGetQueue();
    v9 = dispatch_queue_create_with_target_V2("com.apple.MRDGroupSessionServer.notification", v7, v8);
    notificationQueue = v6->_notificationQueue;
    v6->_notificationQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_create("com.apple.MRDGroupSessionServer.messageQueue", v12);
    messageQueue = v6->_messageQueue;
    v6->_messageQueue = v13;

    v6->_lock._os_unfair_lock_opaque = 0;
    v15 = +[NSMutableSet set];
    clients = v6->_clients;
    v6->_clients = v15;

    v17 = +[NSMapTable weakToStrongObjectsMapTable];
    assertionsByClient = v6->_assertionsByClient;
    v6->_assertionsByClient = v17;

    objc_storeStrong(&v6->_nowPlayingServer, server);
    v19 = +[MRUserSettings currentSettings];
    LODWORD(v11) = [v19 groupSessionDelayedInitializationEnabled];

    if (v11)
    {
      v20 = objc_alloc_init(MRDGroupSessionAssertionManager);
      assertionManager = v6->_assertionManager;
      v6->_assertionManager = v20;
    }

    v22 = objc_alloc_init(MRDNetworkMonitor);
    networkMonitor = v6->_networkMonitor;
    v6->_networkMonitor = v22;

    [(MRDNetworkMonitor *)v6->_networkMonitor startWithQueue:v6->_notificationQueue];
    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v6 selector:"handleClientConnect:" name:@"MRDMediaRemoteClientDidConnect" object:0];

    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v6 selector:"handleClientInvalidate:" name:@"MRDMediaRemoteServerClientInvalidatedNotification" object:0];

    v26 = +[NSNotificationCenter defaultCenter];
    [v26 addObserver:v6 selector:"handleUserStateChange:" name:@"MRDMusicUserStateCenterCloudStateDidUpdateNotification" object:0];

    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Initialized", buf, 2u);
    }

    v28 = +[MRUserSettings currentSettings];
    groupSessionDelayedInitializationEnabled = [v28 groupSessionDelayedInitializationEnabled];

    if (groupSessionDelayedInitializationEnabled)
    {
      [(MRDGroupSessionAssertionManager *)v6->_assertionManager addObserver:v6];
      if (MSVDeviceIsAppleTV())
      {
        [(MRDGroupSessionServer *)v6 requestEligibilityMonitoring];
      }
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004BFE4;
      block[3] = &unk_1004B6D08;
      v32 = v6;
      dispatch_async(&_dispatch_main_q, block);
    }
  }

  return v6;
}

- (void)requestEligibilityMonitoring
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_eligibilityMonitor)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = _MRLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Starting eligibility monitoring", v6, 2u);
    }

    v4 = objc_alloc_init(MRDGroupSessionEligibilityMonitor);
    eligibilityMonitor = self->_eligibilityMonitor;
    self->_eligibilityMonitor = v4;

    [(MRDGroupSessionEligibilityMonitor *)self->_eligibilityMonitor addObserver:self];
    os_unfair_lock_unlock(&self->_lock);
    dispatch_async(self->_notificationQueue, &stru_1004B6DE0);
  }
}

- (void)start
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Starting...", buf, 2u);
  }

  [(MRDGroupSessionServer *)self requestEligibilityMonitoring];
  os_unfair_lock_lock(&self->_lock);
  v4 = [[MRDGroupSessionManager alloc] initWithEligibilityMonitor:self->_eligibilityMonitor];
  sessionManager = self->_sessionManager;
  self->_sessionManager = v4;

  [(MRDGroupSessionManager *)self->_sessionManager addObserver:self];
  v6 = [[MRDRemoteControlGroupSessionCoordinator alloc] initWithSessionManager:self->_sessionManager eligibilityMonitor:self->_eligibilityMonitor];
  coordinator = self->_coordinator;
  self->_coordinator = v6;

  self->_running = 1;
  os_unfair_lock_unlock(&self->_lock);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C298;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(notificationQueue, block);
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Started.", buf, 2u);
  }
}

- (void)stop
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stopping...", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  coordinator = self->_coordinator;
  self->_coordinator = 0;

  [(MRDGroupSessionManager *)self->_sessionManager removeObserver:self];
  session = [(MRDGroupSessionManager *)self->_sessionManager session];
  if ([session isHosted])
  {
    [(MRDGroupSessionManager *)self->_sessionManager finishRemoteControlGroupSession:session];
  }

  else if (session)
  {
    [(MRDGroupSessionManager *)self->_sessionManager leaveRemoteControlGroupSession:session];
  }

  sessionManager = self->_sessionManager;
  self->_sessionManager = 0;

  self->_running = 0;
  os_unfair_lock_unlock(&self->_lock);
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004C478;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(notificationQueue, block);
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Stopped.", buf, 2u);
  }
}

- (void)handleXPCMessage:(id)message fromClient:(id)client
{
  xdict = message;
  clientCopy = client;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 <= 0xC00000000000004)
  {
    if (uint64 > 0xC00000000000002)
    {
      if (uint64 == 0xC00000000000003)
      {
        [(MRDGroupSessionServer *)self handleLeaveGroupSessionMessage:xdict fromClient:clientCopy];
      }

      else
      {
        [(MRDGroupSessionServer *)self _handleGroupSessionEventMessage:xdict fromClient:clientCopy];
      }
    }

    else if (uint64 == 0xC00000000000001)
    {
      [(MRDGroupSessionServer *)self handleGetGroupSessionServerEndpointMessage:xdict fromClient:clientCopy];
    }

    else if (uint64 == 0xC00000000000002)
    {
      [(MRDGroupSessionServer *)self handleJoinGroupSessionMessage:xdict fromClient:clientCopy];
    }
  }

  else if (uint64 <= 0xC00000000000006)
  {
    if (uint64 == 0xC00000000000005)
    {
      [(MRDGroupSessionServer *)self _handleGetUserIdentityMessage:xdict fromClient:clientCopy];
    }

    else
    {
      [(MRDGroupSessionServer *)self _handleCreateGroupSessionTokenMessage:xdict fromClient:clientCopy];
    }
  }

  else
  {
    switch(uint64)
    {
      case 0xC00000000000007:
        [(MRDGroupSessionServer *)self _handleGetUserIdentityForDSIDMessage:xdict fromClient:clientCopy];
        break;
      case 0xC00000000000008:
        [(MRDGroupSessionServer *)self _handlePresentProximityCardMessage:xdict fromClient:clientCopy];
        break;
      case 0xC00000000000009:
        [(MRDGroupSessionServer *)self _handleRequestGroupSessionMessage:xdict fromClient:clientCopy];
        break;
    }
  }
}

- (void)handleGetGroupSessionServerEndpointMessage:(id)message fromClient:(id)client
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C728;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(message, v4);
}

- (void)handleJoinGroupSessionMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreateDataFromXPCMessage();
  v9 = [[MRGroupSessionToken alloc] initWithData:v8];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = clientCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Handling join command from client: %@", buf, 0xCu);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10004CBAC;
  v39[3] = &unk_1004B6E58;
  v11 = messageCopy;
  v40 = v11;
  v12 = objc_retainBlock(v39);
  v13 = kMREventJoinSessionModeQRCode;
  discoveredSession = [v9 discoveredSession];

  if (discoveredSession)
  {
    discoveredSession2 = [v9 discoveredSession];
    source = [discoveredSession2 source];

    v17 = &kMREventJoinSessionModeProximity;
    if (source == 1)
    {
      v17 = &kMREventJoinSessionModeBoop;
    }
  }

  else
  {
    sharedSecret = [v9 sharedSecret];

    if (!sharedSecret)
    {
      goto LABEL_10;
    }

    v17 = &kMREventJoinSessionModeWHAAutoJoin;
  }

  v19 = *v17;

  v13 = v19;
LABEL_10:
  networkMonitor = [(MRDGroupSessionServer *)self networkMonitor];
  if ([networkMonitor isUsingWifi])
  {
    isUsingWiredEthernet = 1;
  }

  else
  {
    networkMonitor2 = [(MRDGroupSessionServer *)self networkMonitor];
    isUsingWiredEthernet = [networkMonitor2 isUsingWiredEthernet];
  }

  equivalentMediaIdentifier = [v9 equivalentMediaIdentifier];
  if (equivalentMediaIdentifier && (v24 = equivalentMediaIdentifier, [v9 sharedSecret], v25 = objc_claimAutoreleasedReturnValue(), v26 = (v25 == 0) & isUsingWiredEthernet, v25, v24, v26 == 1))
  {
    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Attempting to join group session by searching for equivalent WHA device", buf, 2u);
    }

    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10004CC98;
    v37[3] = &unk_1004B6E80;
    v38 = v12;
    v28 = v12;
    [(MRDGroupSessionServer *)self joinGroupSessionViaEquivalentWHAEndpoint:v9 completion:v37];
    v29 = v38;
  }

  else
  {
    v30 = [[MRDGroupSessionJoinAttemptAnalytics alloc] initWithJoinMode:v13];
    request = [(MRDGroupSessionJoinAttemptAnalytics *)v30 request];
    [request start];

    sessionManager = [(MRDGroupSessionServer *)self sessionManager];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10004CD14;
    v34[3] = &unk_1004B6EA8;
    v35 = v30;
    v36 = v12;
    v33 = v12;
    v29 = v30;
    [sessionManager joinGroupSessionWithToken:v9 completion:v34];
  }
}

- (void)joinGroupSessionViaEquivalentWHAEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    equivalentMediaIdentifier = [endpointCopy equivalentMediaIdentifier];
    *buf = 138412290;
    v30 = equivalentMediaIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Searching for WHA endpoint with device identifier: %@", buf, 0xCu);
  }

  v10 = [MRDGroupSessionJoinAttemptAnalytics alloc];
  v11 = [(MRDGroupSessionJoinAttemptAnalytics *)v10 initWithJoinMode:kMREventJoinSessionModeWHAAutoJoin];
  sessionManager = [(MRDGroupSessionServer *)self sessionManager];
  v13 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  recon = [(MRDGroupSessionJoinAttemptAnalytics *)v11 recon];
  [recon start];

  equivalentMediaIdentifier2 = [endpointCopy equivalentMediaIdentifier];
  v16 = MRGroupSessionSubsystemGetQueue();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004D014;
  v22[3] = &unk_1004B6F98;
  v23 = v13;
  v24 = sessionManager;
  v25 = endpointCopy;
  v26 = v11;
  selfCopy = self;
  v28 = completionCopy;
  v17 = v11;
  v18 = completionCopy;
  v19 = endpointCopy;
  v20 = sessionManager;
  v21 = v13;
  [v21 searchEndpointsForOutputDeviceUID:equivalentMediaIdentifier2 timeout:@"MRGroupSession.waitForWHAEndpoint" reason:v16 queue:v22 completion:3.0];
}

- (void)handleLeaveGroupSessionMessage:(id)message fromClient:(id)client
{
  clientCopy = client;
  messageCopy = message;
  v8 = MRCreateStringFromXPCMessage();
  sessionManager = [(MRDGroupSessionServer *)self sessionManager];
  session = [sessionManager session];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = clientCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Handling leave command from client: %@", buf, 0xCu);
  }

  identifier = [session identifier];
  v13 = identifier;
  if (v8 == identifier)
  {

LABEL_7:
    if ([session isHosted])
    {
      v15 = MRGroupSessionError;
      v16 = @"Cannot leave hosted session.";
      v17 = 9;
      goto LABEL_9;
    }

    v35 = clientCopy;
    joinToken = [session joinToken];
    equivalentMediaIdentifier = [joinToken equivalentMediaIdentifier];
    v21 = equivalentMediaIdentifier;
    if (equivalentMediaIdentifier)
    {
      identifier2 = equivalentMediaIdentifier;
    }

    else
    {
      identifier2 = [session identifier];
    }

    v23 = identifier2;

    v24 = +[MRDMediaRemoteServer server];
    routingServer = [v24 routingServer];
    systemEndpointController = [routingServer systemEndpointController];
    v27 = [systemEndpointController activeOutputDeviceUID:0];
    v28 = v27;
    if (v27 == v23)
    {
    }

    else
    {
      v29 = [v27 isEqual:v23];

      if ((v29 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = +[MRDMediaRemoteServer server];
    routingServer2 = [v30 routingServer];
    systemEndpointController2 = [routingServer2 systemEndpointController];
    v33 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Group session ended."];
    [systemEndpointController2 updateSystemEndpointForRequest:v33];

LABEL_18:
    [sessionManager leaveRemoteControlGroupSession:session];

    v18 = 0;
    clientCopy = v35;
    goto LABEL_19;
  }

  v14 = [v8 isEqual:identifier];

  if (v14)
  {
    goto LABEL_7;
  }

  v15 = MRGroupSessionError;
  v16 = @"Did not find session for leave request.";
  v17 = 2;
LABEL_9:
  v18 = [NSError msv_errorWithDomain:v15 code:v17 debugDescription:v16];
LABEL_19:
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10004DED8;
  v36[3] = &unk_1004B6E08;
  v37 = v18;
  v34 = v18;
  sub_100008278(messageCopy, v36);
}

- (void)_handleGetUserIdentityMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004DF84;
  v6[3] = &unk_1004B6E08;
  clientCopy = client;
  v5 = clientCopy;
  sub_100008278(message, v6);
}

- (void)_handleGroupSessionEventMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  clientCopy = client;
  v8 = MRCreatePropertyListFromXPCMessage();
  sessionManager = [(MRDGroupSessionServer *)self sessionManager];
  v10 = [v8 objectForKeyedSubscript:MRGroupSessionEventOptionEventType];
  integerValue = [v10 integerValue];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10004E540;
  v38[3] = &unk_1004B6FC0;
  v12 = messageCopy;
  v39 = v12;
  v13 = objc_retainBlock(v38);
  v14 = v13;
  if (integerValue)
  {
    if ((integerValue & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (integerValue == 2)
      {
        coordinator = [(MRDGroupSessionServer *)self coordinator];
        autoJoinMaxRetriesReached = [coordinator autoJoinMaxRetriesReached];

        if (autoJoinMaxRetriesReached)
        {
          v17 = _MRLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Retrying auto-join after previously exhausted retry attempts because session management became visible", buf, 2u);
          }

          coordinator2 = [(MRDGroupSessionServer *)self coordinator];
          [coordinator2 retryAutoJoin];
        }
      }

      os_unfair_lock_lock(&self->_lock);
      v19 = [(NSMapTable *)self->_assertionsByClient objectForKey:clientCopy];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = +[NSMutableDictionary dictionary];
      }

      v23 = v21;

      v24 = [v8 objectForKeyedSubscript:MRGroupSessionEventOptionAssertionIdentifier];
      if (v24 || ([NSError msv_errorWithDomain:MRGroupSessionError code:9 debugDescription:@"No assertion ID provided."], (v22 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v25 = _MRLogForCategory();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (integerValue == 2)
        {
          if (v26)
          {
            bundleIdentifier = [clientCopy bundleIdentifier];
            v28 = bundleIdentifier;
            if (!bundleIdentifier)
            {
              bundleIdentifier = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [clientCopy pid]);
            }

            *buf = 138412546;
            v34 = bundleIdentifier;
            v41 = bundleIdentifier;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Client: %@ asserting with ID: %@", buf, 0x16u);
            if (!v28)
            {
            }
          }

          assertSessionManagementScreenVisible = [sessionManager assertSessionManagementScreenVisible];
          [v23 setObject:assertSessionManagementScreenVisible forKeyedSubscript:v24];
        }

        else
        {
          if (v26)
          {
            bundleIdentifier2 = [clientCopy bundleIdentifier];
            v31 = bundleIdentifier2;
            if (!bundleIdentifier2)
            {
              bundleIdentifier2 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [clientCopy pid]);
            }

            *buf = 138412546;
            v35 = bundleIdentifier2;
            v41 = bundleIdentifier2;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Client: %@ removing assertion with ID: %@", buf, 0x16u);
            if (!v31)
            {
            }
          }

          [v23 setObject:0 forKeyedSubscript:v24];
          [sessionManager releaseSessionManagementScreenVisibleAssertion];
        }

        v32 = [v23 count];
        assertionsByClient = self->_assertionsByClient;
        if (v32)
        {
          [(NSMapTable *)assertionsByClient setObject:v23 forKey:clientCopy];
        }

        else
        {
          [(NSMapTable *)assertionsByClient removeObjectForKey:clientCopy];
        }

        v22 = 0;
      }

      os_unfair_lock_unlock(&self->_lock);
      (v14)[2](v14, v22);
    }

    else
    {
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_10004E5F0;
      v36[3] = &unk_1004B6FE8;
      v37 = v13;
      [sessionManager handleGroupSessionEvent:integerValue withOptions:v8 completion:v36];
      v22 = v37;
    }
  }

  else
  {
    v22 = [NSError msv_errorWithDomain:MRGroupSessionError code:9 debugDescription:@"No event type provided."];
    (v14)[2](v14, v22);
  }
}

- (void)_handleCreateGroupSessionTokenMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = MRCreateDataFromXPCMessage();
  v6 = MRCreateStringFromXPCMessage();
  v7 = [NSNumber numberWithLongLong:xpc_dictionary_get_int64(messageCopy, "MRXPC_GROUP_SESSION_VERSION_KEY")];
  v8 = [[MRGroupSessionToken alloc] initWithInvitationData:v5 sharedSecret:0 sessionIdentifier:0 equivalentMediaIdentifier:v6 version:{objc_msgSend(v7, "integerValue")}];
  v9 = 0;
  if (!v8)
  {
    v9 = [NSError msv_errorWithDomain:MRGroupSessionError code:12 debugDescription:@"Failed to parse group session token"];
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10004E788;
  v12[3] = &unk_1004B6E30;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  v11 = v9;
  sub_100008278(messageCopy, v12);
}

- (void)_handleGetUserIdentityForDSIDMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v5 = MRCreateStringFromXPCMessage();
  v6 = +[MRDMusicUserStateCenter sharedCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004E8E0;
  v8[3] = &unk_1004B7010;
  v9 = messageCopy;
  v7 = messageCopy;
  [v6 userIdentityForDSID:v5 completion:v8];
}

- (void)_handlePresentProximityCardMessage:(id)message fromClient:(id)client
{
  messageCopy = message;
  v6 = MRCreateStringFromXPCMessage();
  v7 = MRCreateStringFromXPCMessage();
  v8 = MRCreateStringFromXPCMessage();
  v9 = MRCreateStringFromXPCMessage();
  v13 = 0;
  [(MRDGroupSessionServer *)self presentProximityCardWithDeviceName:v6 modelIdentifier:v7 color:v8 url:v9 error:&v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10004EB6C;
  v11[3] = &unk_1004B6E08;
  v12 = v13;
  v10 = v12;
  sub_100008278(messageCopy, v11);
}

- (void)_handleRequestGroupSessionMessage:(id)message fromClient:(id)client
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004EC18;
  v6[3] = &unk_1004B6E58;
  messageCopy = message;
  v5 = messageCopy;
  [(MRDGroupSessionServer *)self requestGroupSessionWithCompletion:v6];
}

- (void)requestGroupSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[MRUserSettings currentSettings];
  groupSessionDelayedInitializationEnabled = [v4 groupSessionDelayedInitializationEnabled];

  if (groupSessionDelayedInitializationEnabled)
  {
    sessionManager = [(MRDGroupSessionServer *)self sessionManager];
    session = [sessionManager session];

    if (session)
    {
      if ([session isHosted])
      {
        identifier = [session identifier];
      }

      else
      {
        identifier = [[NSError alloc] initWithMRError:3 description:@"joined another group session"];
      }

      completionCopy[2]();
    }

    else
    {
      eligibilityMonitor = [(MRDGroupSessionServer *)self eligibilityMonitor];
      identifier = [eligibilityMonitor eligibilityStatus];

      if (identifier && ([identifier isEligibleForHostingGroupSession] & 1) == 0)
      {
        v17 = [[NSError alloc] initWithMRError:3 description:@"cannot host a group session"];
        (completionCopy[2])(completionCopy, 0, v17);
      }

      else
      {
        os_unfair_lock_lock(&self->_lock);
        requestGroupSessionCompletions = self->_requestGroupSessionCompletions;
        if (!requestGroupSessionCompletions)
        {
          v11 = objc_alloc_init(NSMutableSet);
          v12 = self->_requestGroupSessionCompletions;
          self->_requestGroupSessionCompletions = v11;

          requestGroupSessionCompletions = self->_requestGroupSessionCompletions;
        }

        v13 = [completionCopy copy];
        v14 = objc_retainBlock(v13);
        [(NSMutableSet *)requestGroupSessionCompletions addObject:v14];

        assertionManager = self->_assertionManager;
        v16 = +[MRUserSettings currentSettings];
        [v16 groupSessionStartRequestAssertionDuration];
        [(MRDGroupSessionAssertionManager *)assertionManager createAssertionWithReason:@"Client requested group session" duration:?];

        os_unfair_lock_unlock(&self->_lock);
      }
    }
  }

  else
  {
    session = [[NSError alloc] initWithMRError:6 description:@"feature not enabled"];
    (completionCopy[2])(completionCopy, 0, session);
  }
}

- (void)presentProximityCardWithDeviceName:(id)name modelIdentifier:(id)identifier color:(id)color url:(id)url error:(id *)error
{
  nameCopy = name;
  identifierCopy = identifier;
  colorCopy = color;
  urlCopy = url;
  v16 = urlCopy;
  if (!nameCopy)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"device name is missing";
LABEL_20:
    *error = [v26 initWithMRError:2 description:v27];
    goto LABEL_21;
  }

  if (!identifierCopy)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"model is missing";
    goto LABEL_20;
  }

  if (!colorCopy)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"color is missing";
    goto LABEL_20;
  }

  if (!urlCopy)
  {
    if (!error)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"url is missing";
    goto LABEL_20;
  }

  if (self->_remoteAlertHandle)
  {
    v17 = _MRLogForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Dismissing existing proximity card to present a new one", buf, 2u);
    }

    [(MRDGroupSessionServer *)self dismissProximityCard];
  }

  v18 = _MRLogForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v31 = nameCopy;
    v32 = 2112;
    v33 = identifierCopy;
    v34 = 2112;
    v35 = colorCopy;
    v36 = 2112;
    v37 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Presenting proximity card for device with name: %@, model: %@, color: %@, url: %@", buf, 0x2Au);
  }

  v19 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.MediaRemoteUI"];
  v20 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v19 configurationIdentifier:@"proximity-card"];
  v21 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v28[0] = @"deviceName";
  v28[1] = @"modelIdentifier";
  v29[0] = nameCopy;
  v29[1] = identifierCopy;
  v28[2] = @"color";
  v28[3] = @"url";
  v29[2] = colorCopy;
  v29[3] = v16;
  v22 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:4];
  [v21 setUserInfo:v22];

  v23 = objc_alloc_init(SBSRemoteAlertActivationContext);
  v24 = [SBSRemoteAlertHandle newHandleWithDefinition:v20 configurationContext:v21];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v24;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v23];

LABEL_21:
}

- (void)dismissProximityCard
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Dismissing proximity card", v5, 2u);
  }

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle unregisterObserver:self];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;
}

- (void)handleClientConnect:(id)connect
{
  object = [connect object];
  if (sub_100007AC4(object))
  {
    notificationQueue = [(MRDGroupSessionServer *)self notificationQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F3C4;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = object;
    dispatch_async(notificationQueue, v6);
  }
}

- (void)handleClientInvalidate:(id)invalidate
{
  object = [invalidate object];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_assertionsByClient objectForKey:object];
  if ([v5 count])
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [object bundleIdentifier];
      v8 = bundleIdentifier;
      if (!bundleIdentifier)
      {
        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [object pid]);
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Cleaning up assertions for invalidated client: %@ - %@", &v9, 0x16u);
      if (!bundleIdentifier)
      {
      }
    }
  }

  [(NSMapTable *)self->_assertionsByClient removeObjectForKey:object];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreClientState:(id)state handler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  if (sub_100007AC4(stateCopy))
  {
    sessionManager = [(MRDGroupSessionServer *)self sessionManager];
    session = [sessionManager session];

    v9 = objc_alloc_init(NSMutableDictionary);
    if (session)
    {
      v10 = [[MRGroupSessionInfo alloc] initWithGroupSession:session];
      [v9 setObject:v10 forKeyedSubscript:MRActiveGroupSessionInfoUserInfoKey];
    }

    handlerCopy[2](handlerCopy, _MRGroupSessionInfoDidChangeNotification, v9);
  }

  bundleIdentifier = [stateCopy bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v13 = +[MRDMusicUserStateCenter sharedCenter];
    localActiveIdentity = [v13 localActiveIdentity];

    v15 = +[NSMutableDictionary dictionary];
    protobufData = [localActiveIdentity protobufData];
    [v15 setObject:protobufData forKeyedSubscript:_MRUserIdentityDataUserInfoKey];

    handlerCopy[2](handlerCopy, _MRUserIdentityDidChangeNotification, v15);
  }
}

- (void)handleUserStateChange:(id)change
{
  v4 = +[MRDMusicUserStateCenter sharedCenter];
  localActiveIdentity = [v4 localActiveIdentity];

  localMusicIdentity = [(MRDGroupSessionServer *)self localMusicIdentity];
  v6 = localMusicIdentity;
  if (localMusicIdentity != localActiveIdentity)
  {
    v7 = [localMusicIdentity isEqual:localActiveIdentity];

    v8 = localActiveIdentity;
    if (v7)
    {
      goto LABEL_5;
    }

    [(MRDGroupSessionServer *)self setLocalMusicIdentity:localActiveIdentity];
    v6 = +[NSMutableDictionary dictionary];
    protobufData = [localActiveIdentity protobufData];
    [v6 setObject:protobufData forKeyedSubscript:_MRUserIdentityDataUserInfoKey];

    v10 = +[MRDMediaRemoteServer server];
    [v10 postClientNotificationNamed:_MRUserIdentityDidChangeNotification userInfo:v6 predicate:&stru_1004B7078];
  }

  v8 = localActiveIdentity;
LABEL_5:
}

- (void)manager:(id)manager didStartHostedGroupSession:(id)session
{
  identifier = [session identifier];
  [(MRDGroupSessionServer *)self _completeGroupSessionRequestsWithIdentifier:identifier];

  [(MRDGroupSessionServer *)self notifyActiveSessionStateChanged];
}

- (void)manager:(id)manager activeSessionDidChange:(id)change
{
  changeCopy = change;
  lastConnectionError = [(MRDGroupSessionServer *)self lastConnectionError];
  code = [lastConnectionError code];

  if (code == 100)
  {
    joinToken = [changeCopy joinToken];
    equivalentMediaIdentifier = [joinToken equivalentMediaIdentifier];

    if (equivalentMediaIdentifier)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = equivalentMediaIdentifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Registering WHA identifier for connection failure: %@", &v16, 0xCu);
      }

      v11 = +[MRDMediaRemoteServer server];
      routingServer = [v11 routingServer];
      hostedRoutingService = [routingServer hostedRoutingService];
      hostedRoutingController = [hostedRoutingService hostedRoutingController];
      discoverySession = [hostedRoutingController discoverySession];

      [discoverySession registerConnectionFailureForWHAIdentifier:equivalentMediaIdentifier];
    }
  }
}

- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session
{
  joinToken = [session joinToken];
  equivalentMediaIdentifier = [joinToken equivalentMediaIdentifier];

  if (equivalentMediaIdentifier)
  {
    v6 = +[MRDMediaRemoteServer server];
    routingServer = [v6 routingServer];
    hostedRoutingService = [routingServer hostedRoutingService];
    hostedRoutingController = [hostedRoutingService hostedRoutingController];
    discoverySession = [hostedRoutingController discoverySession];

    [discoverySession unregisterConnectionFailureForWHAIdentifier:equivalentMediaIdentifier];
  }

  [(MRDGroupSessionServer *)self notifyActiveSessionStateChanged];
}

- (void)manager:(id)manager discoveredSessionsDidChange:(id)change
{
  v5 = [change msv_firstWhere:&stru_1004B70B8];
  if (v5)
  {
    nowPlayingServer = [(MRDGroupSessionServer *)self nowPlayingServer];
    if ([nowPlayingServer activePlayerIsPlaying])
    {
      nowPlayingServer2 = [(MRDGroupSessionServer *)self nowPlayingServer];
      activePlayerPath = [nowPlayingServer2 activePlayerPath];
      isSystemMediaApplication = [activePlayerPath isSystemMediaApplication];

      if ((isSystemMediaApplication & 1) == 0)
      {
        v10 = _MRLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Suppressing proximity card because local device is playing non-Music content", buf, 2u);
        }

        goto LABEL_15;
      }
    }

    else
    {
    }

    v11 = [[MRGroupSessionToken alloc] initWithDiscoveredSession:v5 autoConnect:1];
    hostInfo = [v5 hostInfo];
    displayName = [hostInfo displayName];
    hostInfo2 = [v5 hostInfo];
    modelIdentifier = [hostInfo2 modelIdentifier];
    hostInfo3 = [v5 hostInfo];
    color = [hostInfo3 color];
    joinURLString = [v11 joinURLString];
    v22 = 0;
    [(MRDGroupSessionServer *)self presentProximityCardWithDeviceName:displayName modelIdentifier:modelIdentifier color:color url:joinURLString error:&v22];
    v19 = v22;

    if (v19)
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1003A4BF4(v19, v20);
      }
    }

    else
    {
      v21 = v5;
      MRAnalyticsSendEvent();
      v20 = v21;
    }
  }

  else if ([(MRDGroupSessionServer *)self isPresentingProximityCard])
  {
    [(MRDGroupSessionServer *)self dismissProximityCard];
  }

LABEL_15:
}

- (void)notifyActiveSessionStateChanged
{
  sessionManager = [(MRDGroupSessionServer *)self sessionManager];
  session = [sessionManager session];

  v4 = objc_alloc_init(NSMutableDictionary);
  if (session)
  {
    v5 = [[MRGroupSessionInfo alloc] initWithGroupSession:session];
    [v4 setObject:v5 forKeyedSubscript:MRActiveGroupSessionInfoUserInfoKey];
  }

  else
  {
    v5 = 0;
  }

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Push active session state: %@ to clients", &v8, 0xCu);
  }

  v7 = +[MRDMediaRemoteServer server];
  [v7 postClientNotificationNamed:_MRGroupSessionInfoDidChangeNotification userInfo:v4 predicate:&stru_1004B7100];
}

- (void)_completeGroupSessionRequestsWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_requestGroupSessionCompletions;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  requestGroupSessionCompletions = self->_requestGroupSessionCompletions;
  self->_requestGroupSessionCompletions = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)notifyEligibilityChanged:(id)changed
{
  changedCopy = changed;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:changedCopy forKeyedSubscript:MRGroupSessionEligibilityStatusUserInfoKey];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Push local session state: %{public}@ to clients", &v7, 0xCu);
  }

  v6 = +[MRDMediaRemoteServer server];
  [v6 postClientNotificationNamed:_MRGroupSessionEligibilityDidChangeNotification userInfo:v4 predicate:&stru_1004B7120];
}

- (void)addClient:(id)client
{
  clientCopy = client;
  messageQueue = [(MRDGroupSessionServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = clientCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Adding client %{public}@", &v8, 0xCu);
  }

  clients = [(MRDGroupSessionServer *)self clients];
  [clients addObject:clientCopy];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  messageQueue = [(MRDGroupSessionServer *)self messageQueue];
  dispatch_assert_queue_V2(messageQueue);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = clientCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Removing client %{public}@", &v8, 0xCu);
  }

  clients = [(MRDGroupSessionServer *)self clients];
  [clients removeObject:clientCopy];
}

- (id)clientForConnection:(id)connection
{
  connectionCopy = connection;
  [(MRDGroupSessionServer *)self clients];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        connection = [v9 connection];
        v11 = [connection isEqual:connectionCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSXPCListener)listener
{
  os_unfair_lock_lock(&self->_lock);
  listener = self->_listener;
  if (!listener)
  {
    v4 = +[NSXPCListener anonymousListener];
    v5 = self->_listener;
    self->_listener = v4;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener resume];
    listener = self->_listener;
  }

  v6 = listener;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
  }

  v9 = MSVBundleIDForAuditToken();
  v10 = [v9 length];
  v11 = _MRLogForCategory();
  v12 = v11;
  if (v10)
  {
    v28 = v10;
    v29 = listenerCopy;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A4CD0(v9, v12);
    }

    v27 = [[MRDGroupSessionClient alloc] initWithConnection:v8 bundleID:v9];
    v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRGroupSessionServerXPCProtocol];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSMutableSet setWithObjects:v13, v14, v15, v16, v17, objc_opt_class(), 0];
    v19 = MSVPropertyListDataClasses();
    [v18 unionSet:v19];

    [v12 setClasses:v18 forSelector:"connectToSession:reply:" argumentIndex:0 ofReply:1];
    [v12 setClasses:v18 forSelector:"connectToDiscoveryWithReply:" argumentIndex:0 ofReply:1];
    [v12 setClasses:v18 forSelector:"connectToDiscoveryWithReply:" argumentIndex:1 ofReply:1];
    [v12 setClasses:v18 forSelector:"session:approvePendingParticipant:reply:" argumentIndex:1 ofReply:0];
    [v12 setClasses:v18 forSelector:"session:denyPendingParticipant:reply:" argumentIndex:1 ofReply:0];
    v20 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MRGroupSessionClientXPCProtocol];
    [v20 setClasses:v18 forSelector:"session:didUpdateParticipants:" argumentIndex:1 ofReply:0];
    [v20 setClasses:v18 forSelector:"session:didUpdatePendingParticipants:" argumentIndex:1 ofReply:0];
    [v20 setClasses:v18 forSelector:"session:didUpdateMembers:" argumentIndex:1 ofReply:0];
    [v20 setClasses:v18 forSelector:"discoveredSessionsDidChange:" argumentIndex:0 ofReply:0];
    [v20 setClasses:v18 forSelector:"activeSessionDidChange:" argumentIndex:0 ofReply:0];
    [v8 setExportedInterface:v12];
    v21 = [MSVWeakProxy proxyWithObject:v27 protocol:&OBJC_PROTOCOL___MRGroupSessionServerXPCProtocol];
    [v8 setExportedObject:v21];

    [v8 setRemoteObjectInterface:v20];
    messageQueue = [(MRDGroupSessionServer *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050E80;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v23 = v27;
    v33 = v23;
    dispatch_sync(messageQueue, block);

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100050E8C;
    v30[3] = &unk_1004B68F0;
    v30[4] = self;
    v31 = v23;
    v24 = v23;
    [v8 setInvalidationHandler:v30];
    messageQueue2 = [(MRDGroupSessionServer *)self messageQueue];
    [v8 _setQueue:messageQueue2];

    [v8 resume];
    v10 = v28;
    listenerCopy = v29;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1003A4C8C(v12);
  }

  return v10 != 0;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Remote alert handle did activate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Remote alert handle did deactivate", v6, 2u);
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Remote alert handle did invalidate with error: %@", &v8, 0xCu);
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;
}

- (void)reevaluateAssertionState
{
  assertionManager = [(MRDGroupSessionServer *)self assertionManager];
  isAsserting = [assertionManager isAsserting];
  os_unfair_lock_lock(&self->_lock);
  running = self->_running;
  if ((isAsserting & 1) == 0)
  {
    if (self->_running)
    {
      v6 = _MRLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] No group session assertions: Scheduling stop timer", buf, 2u);
      }

      [(MSVTimer *)self->_stopTimer invalidate];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000511A4;
      v9[3] = &unk_1004B68F0;
      v10 = assertionManager;
      selfCopy = self;
      v7 = [MSVTimer timerWithInterval:0 repeats:v9 block:30.0];
      stopTimer = self->_stopTimer;
      self->_stopTimer = v7;
    }

    goto LABEL_8;
  }

  [(MSVTimer *)self->_stopTimer invalidate];
  if (running)
  {
LABEL_8:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_9;
  }

  os_unfair_lock_unlock(&self->_lock);
  [(MRDGroupSessionServer *)self start];
LABEL_9:
}

- (MRDRemoteControlGroupSessionCoordinator)coordinator
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_coordinator;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSError)lastConnectionError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lastConnectionError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setLastConnectionError:(id)error
{
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  v5 = [errorCopy copy];

  lastConnectionError = self->_lastConnectionError;
  self->_lastConnectionError = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSessionCoordinator *)self->_coordinator collectDiagnostic:diagnosticCopy];
  [(MRDGroupSessionManager *)self->_sessionManager collectDiagnostic:diagnosticCopy];
  [(MRDGroupSessionAssertionManager *)self->_assertionManager collectDiagnostic:diagnosticCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end