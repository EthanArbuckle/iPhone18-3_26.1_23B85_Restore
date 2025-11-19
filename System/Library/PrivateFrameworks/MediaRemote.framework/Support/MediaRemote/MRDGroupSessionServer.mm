@interface MRDGroupSessionServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (MRDGroupSessionEligibilityMonitor)eligibilityMonitor;
- (MRDGroupSessionManager)sessionManager;
- (MRDGroupSessionServer)initWithNowPlayingServer:(id)a3;
- (MRDRemoteControlGroupSessionCoordinator)coordinator;
- (NSError)lastConnectionError;
- (NSXPCListener)listener;
- (id)clientForConnection:(id)a3;
- (void)_completeGroupSessionRequestsWithIdentifier:(id)a3;
- (void)_handleCreateGroupSessionTokenMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetUserIdentityForDSIDMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGetUserIdentityMessage:(id)a3 fromClient:(id)a4;
- (void)_handleGroupSessionEventMessage:(id)a3 fromClient:(id)a4;
- (void)_handlePresentProximityCardMessage:(id)a3 fromClient:(id)a4;
- (void)_handleRequestGroupSessionMessage:(id)a3 fromClient:(id)a4;
- (void)addClient:(id)a3;
- (void)collectDiagnostic:(id)a3;
- (void)dismissProximityCard;
- (void)handleClientConnect:(id)a3;
- (void)handleClientInvalidate:(id)a3;
- (void)handleGetGroupSessionServerEndpointMessage:(id)a3 fromClient:(id)a4;
- (void)handleJoinGroupSessionMessage:(id)a3 fromClient:(id)a4;
- (void)handleLeaveGroupSessionMessage:(id)a3 fromClient:(id)a4;
- (void)handleUserStateChange:(id)a3;
- (void)handleXPCMessage:(id)a3 fromClient:(id)a4;
- (void)joinGroupSessionViaEquivalentWHAEndpoint:(id)a3 completion:(id)a4;
- (void)manager:(id)a3 activeSessionDidChange:(id)a4;
- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4;
- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4;
- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4;
- (void)notifyActiveSessionStateChanged;
- (void)notifyEligibilityChanged:(id)a3;
- (void)presentProximityCardWithDeviceName:(id)a3 modelIdentifier:(id)a4 color:(id)a5 url:(id)a6 error:(id *)a7;
- (void)reevaluateAssertionState;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)removeClient:(id)a3;
- (void)requestEligibilityMonitoring;
- (void)requestGroupSessionWithCompletion:(id)a3;
- (void)restoreClientState:(id)a3 handler:(id)a4;
- (void)setLastConnectionError:(id)a3;
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

- (MRDGroupSessionServer)initWithNowPlayingServer:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_nowPlayingServer, a3);
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
    v29 = [v28 groupSessionDelayedInitializationEnabled];

    if (v29)
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
  v5 = [(MRDGroupSessionManager *)self->_sessionManager session];
  if ([v5 isHosted])
  {
    [(MRDGroupSessionManager *)self->_sessionManager finishRemoteControlGroupSession:v5];
  }

  else if (v5)
  {
    [(MRDGroupSessionManager *)self->_sessionManager leaveRemoteControlGroupSession:v5];
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

- (void)handleXPCMessage:(id)a3 fromClient:(id)a4
{
  xdict = a3;
  v6 = a4;
  uint64 = xpc_dictionary_get_uint64(xdict, "MRXPC_MESSAGE_ID_KEY");
  if (uint64 <= 0xC00000000000004)
  {
    if (uint64 > 0xC00000000000002)
    {
      if (uint64 == 0xC00000000000003)
      {
        [(MRDGroupSessionServer *)self handleLeaveGroupSessionMessage:xdict fromClient:v6];
      }

      else
      {
        [(MRDGroupSessionServer *)self _handleGroupSessionEventMessage:xdict fromClient:v6];
      }
    }

    else if (uint64 == 0xC00000000000001)
    {
      [(MRDGroupSessionServer *)self handleGetGroupSessionServerEndpointMessage:xdict fromClient:v6];
    }

    else if (uint64 == 0xC00000000000002)
    {
      [(MRDGroupSessionServer *)self handleJoinGroupSessionMessage:xdict fromClient:v6];
    }
  }

  else if (uint64 <= 0xC00000000000006)
  {
    if (uint64 == 0xC00000000000005)
    {
      [(MRDGroupSessionServer *)self _handleGetUserIdentityMessage:xdict fromClient:v6];
    }

    else
    {
      [(MRDGroupSessionServer *)self _handleCreateGroupSessionTokenMessage:xdict fromClient:v6];
    }
  }

  else
  {
    switch(uint64)
    {
      case 0xC00000000000007:
        [(MRDGroupSessionServer *)self _handleGetUserIdentityForDSIDMessage:xdict fromClient:v6];
        break;
      case 0xC00000000000008:
        [(MRDGroupSessionServer *)self _handlePresentProximityCardMessage:xdict fromClient:v6];
        break;
      case 0xC00000000000009:
        [(MRDGroupSessionServer *)self _handleRequestGroupSessionMessage:xdict fromClient:v6];
        break;
    }
  }
}

- (void)handleGetGroupSessionServerEndpointMessage:(id)a3 fromClient:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C728;
  v4[3] = &unk_1004B6E08;
  v4[4] = self;
  sub_100008278(a3, v4);
}

- (void)handleJoinGroupSessionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreateDataFromXPCMessage();
  v9 = [[MRGroupSessionToken alloc] initWithData:v8];
  v10 = _MRLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v42 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Handling join command from client: %@", buf, 0xCu);
  }

  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10004CBAC;
  v39[3] = &unk_1004B6E58;
  v11 = v6;
  v40 = v11;
  v12 = objc_retainBlock(v39);
  v13 = kMREventJoinSessionModeQRCode;
  v14 = [v9 discoveredSession];

  if (v14)
  {
    v15 = [v9 discoveredSession];
    v16 = [v15 source];

    v17 = &kMREventJoinSessionModeProximity;
    if (v16 == 1)
    {
      v17 = &kMREventJoinSessionModeBoop;
    }
  }

  else
  {
    v18 = [v9 sharedSecret];

    if (!v18)
    {
      goto LABEL_10;
    }

    v17 = &kMREventJoinSessionModeWHAAutoJoin;
  }

  v19 = *v17;

  v13 = v19;
LABEL_10:
  v20 = [(MRDGroupSessionServer *)self networkMonitor];
  if ([v20 isUsingWifi])
  {
    v21 = 1;
  }

  else
  {
    v22 = [(MRDGroupSessionServer *)self networkMonitor];
    v21 = [v22 isUsingWiredEthernet];
  }

  v23 = [v9 equivalentMediaIdentifier];
  if (v23 && (v24 = v23, [v9 sharedSecret], v25 = objc_claimAutoreleasedReturnValue(), v26 = (v25 == 0) & v21, v25, v24, v26 == 1))
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
    v31 = [(MRDGroupSessionJoinAttemptAnalytics *)v30 request];
    [v31 start];

    v32 = [(MRDGroupSessionServer *)self sessionManager];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10004CD14;
    v34[3] = &unk_1004B6EA8;
    v35 = v30;
    v36 = v12;
    v33 = v12;
    v29 = v30;
    [v32 joinGroupSessionWithToken:v9 completion:v34];
  }
}

- (void)joinGroupSessionViaEquivalentWHAEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 equivalentMediaIdentifier];
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Searching for WHA endpoint with device identifier: %@", buf, 0xCu);
  }

  v10 = [MRDGroupSessionJoinAttemptAnalytics alloc];
  v11 = [(MRDGroupSessionJoinAttemptAnalytics *)v10 initWithJoinMode:kMREventJoinSessionModeWHAAutoJoin];
  v12 = [(MRDGroupSessionServer *)self sessionManager];
  v13 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
  v14 = [(MRDGroupSessionJoinAttemptAnalytics *)v11 recon];
  [v14 start];

  v15 = [v6 equivalentMediaIdentifier];
  v16 = MRGroupSessionSubsystemGetQueue();
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004D014;
  v22[3] = &unk_1004B6F98;
  v23 = v13;
  v24 = v12;
  v25 = v6;
  v26 = v11;
  v27 = self;
  v28 = v7;
  v17 = v11;
  v18 = v7;
  v19 = v6;
  v20 = v12;
  v21 = v13;
  [v21 searchEndpointsForOutputDeviceUID:v15 timeout:@"MRGroupSession.waitForWHAEndpoint" reason:v16 queue:v22 completion:3.0];
}

- (void)handleLeaveGroupSessionMessage:(id)a3 fromClient:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = MRCreateStringFromXPCMessage();
  v9 = [(MRDGroupSessionServer *)self sessionManager];
  v10 = [v9 session];
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Handling leave command from client: %@", buf, 0xCu);
  }

  v12 = [v10 identifier];
  v13 = v12;
  if (v8 == v12)
  {

LABEL_7:
    if ([v10 isHosted])
    {
      v15 = MRGroupSessionError;
      v16 = @"Cannot leave hosted session.";
      v17 = 9;
      goto LABEL_9;
    }

    v35 = v6;
    v19 = [v10 joinToken];
    v20 = [v19 equivalentMediaIdentifier];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v10 identifier];
    }

    v23 = v22;

    v24 = +[MRDMediaRemoteServer server];
    v25 = [v24 routingServer];
    v26 = [v25 systemEndpointController];
    v27 = [v26 activeOutputDeviceUID:0];
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
    v31 = [v30 routingServer];
    v32 = [v31 systemEndpointController];
    v33 = [[MRUpdateActiveSystemEndpointRequest alloc] initWithOutputDeviceUID:0 reason:@"Group session ended."];
    [v32 updateSystemEndpointForRequest:v33];

LABEL_18:
    [v9 leaveRemoteControlGroupSession:v10];

    v18 = 0;
    v6 = v35;
    goto LABEL_19;
  }

  v14 = [v8 isEqual:v12];

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
  sub_100008278(v7, v36);
}

- (void)_handleGetUserIdentityMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004DF84;
  v6[3] = &unk_1004B6E08;
  v7 = a4;
  v5 = v7;
  sub_100008278(a3, v6);
}

- (void)_handleGroupSessionEventMessage:(id)a3 fromClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MRCreatePropertyListFromXPCMessage();
  v9 = [(MRDGroupSessionServer *)self sessionManager];
  v10 = [v8 objectForKeyedSubscript:MRGroupSessionEventOptionEventType];
  v11 = [v10 integerValue];

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10004E540;
  v38[3] = &unk_1004B6FC0;
  v12 = v6;
  v39 = v12;
  v13 = objc_retainBlock(v38);
  v14 = v13;
  if (v11)
  {
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (v11 == 2)
      {
        v15 = [(MRDGroupSessionServer *)self coordinator];
        v16 = [v15 autoJoinMaxRetriesReached];

        if (v16)
        {
          v17 = _MRLogForCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Retrying auto-join after previously exhausted retry attempts because session management became visible", buf, 2u);
          }

          v18 = [(MRDGroupSessionServer *)self coordinator];
          [v18 retryAutoJoin];
        }
      }

      os_unfair_lock_lock(&self->_lock);
      v19 = [(NSMapTable *)self->_assertionsByClient objectForKey:v7];
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
        if (v11 == 2)
        {
          if (v26)
          {
            v27 = [v7 bundleIdentifier];
            v28 = v27;
            if (!v27)
            {
              v27 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 pid]);
            }

            *buf = 138412546;
            v34 = v27;
            v41 = v27;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Client: %@ asserting with ID: %@", buf, 0x16u);
            if (!v28)
            {
            }
          }

          v29 = [v9 assertSessionManagementScreenVisible];
          [v23 setObject:v29 forKeyedSubscript:v24];
        }

        else
        {
          if (v26)
          {
            v30 = [v7 bundleIdentifier];
            v31 = v30;
            if (!v30)
            {
              v30 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 pid]);
            }

            *buf = 138412546;
            v35 = v30;
            v41 = v30;
            v42 = 2112;
            v43 = v24;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Client: %@ removing assertion with ID: %@", buf, 0x16u);
            if (!v31)
            {
            }
          }

          [v23 setObject:0 forKeyedSubscript:v24];
          [v9 releaseSessionManagementScreenVisibleAssertion];
        }

        v32 = [v23 count];
        assertionsByClient = self->_assertionsByClient;
        if (v32)
        {
          [(NSMapTable *)assertionsByClient setObject:v23 forKey:v7];
        }

        else
        {
          [(NSMapTable *)assertionsByClient removeObjectForKey:v7];
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
      [v9 handleGroupSessionEvent:v11 withOptions:v8 completion:v36];
      v22 = v37;
    }
  }

  else
  {
    v22 = [NSError msv_errorWithDomain:MRGroupSessionError code:9 debugDescription:@"No event type provided."];
    (v14)[2](v14, v22);
  }
}

- (void)_handleCreateGroupSessionTokenMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreateDataFromXPCMessage();
  v6 = MRCreateStringFromXPCMessage();
  v7 = [NSNumber numberWithLongLong:xpc_dictionary_get_int64(v4, "MRXPC_GROUP_SESSION_VERSION_KEY")];
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
  sub_100008278(v4, v12);
}

- (void)_handleGetUserIdentityForDSIDMessage:(id)a3 fromClient:(id)a4
{
  v4 = a3;
  v5 = MRCreateStringFromXPCMessage();
  v6 = +[MRDMusicUserStateCenter sharedCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004E8E0;
  v8[3] = &unk_1004B7010;
  v9 = v4;
  v7 = v4;
  [v6 userIdentityForDSID:v5 completion:v8];
}

- (void)_handlePresentProximityCardMessage:(id)a3 fromClient:(id)a4
{
  v5 = a3;
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
  sub_100008278(v5, v11);
}

- (void)_handleRequestGroupSessionMessage:(id)a3 fromClient:(id)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004EC18;
  v6[3] = &unk_1004B6E58;
  v7 = a3;
  v5 = v7;
  [(MRDGroupSessionServer *)self requestGroupSessionWithCompletion:v6];
}

- (void)requestGroupSessionWithCompletion:(id)a3
{
  v18 = a3;
  v4 = +[MRUserSettings currentSettings];
  v5 = [v4 groupSessionDelayedInitializationEnabled];

  if (v5)
  {
    v6 = [(MRDGroupSessionServer *)self sessionManager];
    v7 = [v6 session];

    if (v7)
    {
      if ([v7 isHosted])
      {
        v8 = [v7 identifier];
      }

      else
      {
        v8 = [[NSError alloc] initWithMRError:3 description:@"joined another group session"];
      }

      v18[2]();
    }

    else
    {
      v9 = [(MRDGroupSessionServer *)self eligibilityMonitor];
      v8 = [v9 eligibilityStatus];

      if (v8 && ([v8 isEligibleForHostingGroupSession] & 1) == 0)
      {
        v17 = [[NSError alloc] initWithMRError:3 description:@"cannot host a group session"];
        (v18[2])(v18, 0, v17);
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

        v13 = [v18 copy];
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
    v7 = [[NSError alloc] initWithMRError:6 description:@"feature not enabled"];
    (v18[2])(v18, 0, v7);
  }
}

- (void)presentProximityCardWithDeviceName:(id)a3 modelIdentifier:(id)a4 color:(id)a5 url:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  if (!v12)
  {
    if (!a7)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"device name is missing";
LABEL_20:
    *a7 = [v26 initWithMRError:2 description:v27];
    goto LABEL_21;
  }

  if (!v13)
  {
    if (!a7)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"model is missing";
    goto LABEL_20;
  }

  if (!v14)
  {
    if (!a7)
    {
      goto LABEL_21;
    }

    v26 = [NSError alloc];
    v27 = @"color is missing";
    goto LABEL_20;
  }

  if (!v15)
  {
    if (!a7)
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
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v16;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Presenting proximity card for device with name: %@, model: %@, color: %@, url: %@", buf, 0x2Au);
  }

  v19 = [RBSProcessIdentity identityForAngelJobLabel:@"com.apple.MediaRemoteUI"];
  v20 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v19 configurationIdentifier:@"proximity-card"];
  v21 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
  v28[0] = @"deviceName";
  v28[1] = @"modelIdentifier";
  v29[0] = v12;
  v29[1] = v13;
  v28[2] = @"color";
  v28[3] = @"url";
  v29[2] = v14;
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

- (void)handleClientConnect:(id)a3
{
  v4 = [a3 object];
  if (sub_100007AC4(v4))
  {
    v5 = [(MRDGroupSessionServer *)self notificationQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004F3C4;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)handleClientInvalidate:(id)a3
{
  v4 = [a3 object];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_assertionsByClient objectForKey:v4];
  if ([v5 count])
  {
    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 bundleIdentifier];
      v8 = v7;
      if (!v7)
      {
        v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 pid]);
      }

      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Cleaning up assertions for invalidated client: %@ - %@", &v9, 0x16u);
      if (!v7)
      {
      }
    }
  }

  [(NSMapTable *)self->_assertionsByClient removeObjectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)restoreClientState:(id)a3 handler:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (sub_100007AC4(v17))
  {
    v7 = [(MRDGroupSessionServer *)self sessionManager];
    v8 = [v7 session];

    v9 = objc_alloc_init(NSMutableDictionary);
    if (v8)
    {
      v10 = [[MRGroupSessionInfo alloc] initWithGroupSession:v8];
      [v9 setObject:v10 forKeyedSubscript:MRActiveGroupSessionInfoUserInfoKey];
    }

    v6[2](v6, _MRGroupSessionInfoDidChangeNotification, v9);
  }

  v11 = [v17 bundleIdentifier];
  IsSystemMediaApplication = MRMediaRemoteApplicationIsSystemMediaApplication();

  if (IsSystemMediaApplication)
  {
    v13 = +[MRDMusicUserStateCenter sharedCenter];
    v14 = [v13 localActiveIdentity];

    v15 = +[NSMutableDictionary dictionary];
    v16 = [v14 protobufData];
    [v15 setObject:v16 forKeyedSubscript:_MRUserIdentityDataUserInfoKey];

    v6[2](v6, _MRUserIdentityDidChangeNotification, v15);
  }
}

- (void)handleUserStateChange:(id)a3
{
  v4 = +[MRDMusicUserStateCenter sharedCenter];
  v11 = [v4 localActiveIdentity];

  v5 = [(MRDGroupSessionServer *)self localMusicIdentity];
  v6 = v5;
  if (v5 != v11)
  {
    v7 = [v5 isEqual:v11];

    v8 = v11;
    if (v7)
    {
      goto LABEL_5;
    }

    [(MRDGroupSessionServer *)self setLocalMusicIdentity:v11];
    v6 = +[NSMutableDictionary dictionary];
    v9 = [v11 protobufData];
    [v6 setObject:v9 forKeyedSubscript:_MRUserIdentityDataUserInfoKey];

    v10 = +[MRDMediaRemoteServer server];
    [v10 postClientNotificationNamed:_MRUserIdentityDidChangeNotification userInfo:v6 predicate:&stru_1004B7078];
  }

  v8 = v11;
LABEL_5:
}

- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4
{
  v5 = [a4 identifier];
  [(MRDGroupSessionServer *)self _completeGroupSessionRequestsWithIdentifier:v5];

  [(MRDGroupSessionServer *)self notifyActiveSessionStateChanged];
}

- (void)manager:(id)a3 activeSessionDidChange:(id)a4
{
  v5 = a4;
  v6 = [(MRDGroupSessionServer *)self lastConnectionError];
  v7 = [v6 code];

  if (v7 == 100)
  {
    v8 = [v5 joinToken];
    v9 = [v8 equivalentMediaIdentifier];

    if (v9)
    {
      v10 = _MRLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Registering WHA identifier for connection failure: %@", &v16, 0xCu);
      }

      v11 = +[MRDMediaRemoteServer server];
      v12 = [v11 routingServer];
      v13 = [v12 hostedRoutingService];
      v14 = [v13 hostedRoutingController];
      v15 = [v14 discoverySession];

      [v15 registerConnectionFailureForWHAIdentifier:v9];
    }
  }
}

- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4
{
  v5 = [a4 joinToken];
  v11 = [v5 equivalentMediaIdentifier];

  if (v11)
  {
    v6 = +[MRDMediaRemoteServer server];
    v7 = [v6 routingServer];
    v8 = [v7 hostedRoutingService];
    v9 = [v8 hostedRoutingController];
    v10 = [v9 discoverySession];

    [v10 unregisterConnectionFailureForWHAIdentifier:v11];
  }

  [(MRDGroupSessionServer *)self notifyActiveSessionStateChanged];
}

- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4
{
  v5 = [a4 msv_firstWhere:&stru_1004B70B8];
  if (v5)
  {
    v6 = [(MRDGroupSessionServer *)self nowPlayingServer];
    if ([v6 activePlayerIsPlaying])
    {
      v7 = [(MRDGroupSessionServer *)self nowPlayingServer];
      v8 = [v7 activePlayerPath];
      v9 = [v8 isSystemMediaApplication];

      if ((v9 & 1) == 0)
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
    v12 = [v5 hostInfo];
    v13 = [v12 displayName];
    v14 = [v5 hostInfo];
    v15 = [v14 modelIdentifier];
    v16 = [v5 hostInfo];
    v17 = [v16 color];
    v18 = [v11 joinURLString];
    v22 = 0;
    [(MRDGroupSessionServer *)self presentProximityCardWithDeviceName:v13 modelIdentifier:v15 color:v17 url:v18 error:&v22];
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
  v2 = [(MRDGroupSessionServer *)self sessionManager];
  v3 = [v2 session];

  v4 = objc_alloc_init(NSMutableDictionary);
  if (v3)
  {
    v5 = [[MRGroupSessionInfo alloc] initWithGroupSession:v3];
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

- (void)_completeGroupSessionRequestsWithIdentifier:(id)a3
{
  v4 = a3;
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

- (void)notifyEligibilityChanged:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:v3 forKeyedSubscript:MRGroupSessionEligibilityStatusUserInfoKey];
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Push local session state: %{public}@ to clients", &v7, 0xCu);
  }

  v6 = +[MRDMediaRemoteServer server];
  [v6 postClientNotificationNamed:_MRGroupSessionEligibilityDidChangeNotification userInfo:v4 predicate:&stru_1004B7120];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Adding client %{public}@", &v8, 0xCu);
  }

  v7 = [(MRDGroupSessionServer *)self clients];
  [v7 addObject:v4];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionServer *)self messageQueue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionServer] Removing client %{public}@", &v8, 0xCu);
  }

  v7 = [(MRDGroupSessionServer *)self clients];
  [v7 removeObject:v4];
}

- (id)clientForConnection:(id)a3
{
  v4 = a3;
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
        v10 = [v9 connection];
        v11 = [v10 isEqual:v4];

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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
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
    v29 = v6;
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
    v22 = [(MRDGroupSessionServer *)self messageQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100050E80;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v23 = v27;
    v33 = v23;
    dispatch_sync(v22, block);

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100050E8C;
    v30[3] = &unk_1004B68F0;
    v30[4] = self;
    v31 = v23;
    v24 = v23;
    [v8 setInvalidationHandler:v30];
    v25 = [(MRDGroupSessionServer *)self messageQueue];
    [v8 _setQueue:v25];

    [v8 resume];
    v10 = v28;
    v6 = v29;
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1003A4C8C(v12);
  }

  return v10 != 0;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Remote alert handle did activate", v4, 2u);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
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

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a4;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[MRDGroupSessionServer] Remote alert handle did invalidate with error: %@", &v8, 0xCu);
  }

  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;
}

- (void)reevaluateAssertionState
{
  v3 = [(MRDGroupSessionServer *)self assertionManager];
  v4 = [v3 isAsserting];
  os_unfair_lock_lock(&self->_lock);
  running = self->_running;
  if ((v4 & 1) == 0)
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
      v10 = v3;
      v11 = self;
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

- (void)setLastConnectionError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 copy];

  lastConnectionError = self->_lastConnectionError;
  self->_lastConnectionError = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(MRDRemoteControlGroupSessionCoordinator *)self->_coordinator collectDiagnostic:v4];
  [(MRDGroupSessionManager *)self->_sessionManager collectDiagnostic:v4];
  [(MRDGroupSessionAssertionManager *)self->_assertionManager collectDiagnostic:v4];

  os_unfair_lock_unlock(&self->_lock);
}

@end