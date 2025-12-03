@interface MRDGroupSessionClient
- (MRDGroupSession)session;
- (MRDGroupSessionClient)initWithConnection:(id)connection bundleID:(id)d;
- (id)client;
- (id)infoFromGroupSession:(id)session;
- (id)initialStateFromSession:(id)session token:(id)token;
- (id)transportParticipants:(id)participants forSession:(id)session;
- (void)connectToDiscoveryWithReply:(id)reply;
- (void)connectToSession:(id)session reply:(id)reply;
- (void)dealloc;
- (void)manager:(id)manager activeSessionDidChange:(id)change;
- (void)manager:(id)manager didEndHostedGroupSession:(id)session;
- (void)manager:(id)manager didJoinRemoteGroupSession:(id)session;
- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session;
- (void)manager:(id)manager didStartHostedGroupSession:(id)session;
- (void)manager:(id)manager discoveredSessionsDidChange:(id)change;
- (void)reevaluatePendingStateFromSession:(id)session;
- (void)session:(id)session approvePendingParticipant:(id)participant reply:(id)reply;
- (void)session:(id)session denyPendingParticipant:(id)participant reply:(id)reply;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)session:(id)session didUpdateMembers:(id)members;
- (void)session:(id)session didUpdateParticipants:(id)participants;
- (void)session:(id)session didUpdatePendingParticipants:(id)participants;
- (void)session:(id)session didUpdateSynchronizedMetadata:(id)metadata;
- (void)session:(id)session removeAllParticipantsWithReply:(id)reply;
- (void)session:(id)session removeParticipant:(id)participant reply:(id)reply;
- (void)sessionDidEnterLowPowerMode:(id)mode;
- (void)sessionDidExitLowPowerMode:(id)mode;
@end

@implementation MRDGroupSessionClient

- (MRDGroupSessionClient)initWithConnection:(id)connection bundleID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = MRDGroupSessionClient;
  v9 = [(MRDGroupSessionClient *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, connection);
    objc_storeStrong(&v10->_bundleID, d);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = +[MRDMediaRemoteServer server];
    groupSessionServer = [v12 groupSessionServer];
    messageQueue = [groupSessionServer messageQueue];
    v15 = dispatch_queue_create_with_target_V2("com.apple.MRDGroupSessionClient.queue", v11, messageQueue);
    queue = v10->_queue;
    v10->_queue = v15;
  }

  return v10;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] <%p> Dealloc.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDGroupSessionClient;
  [(MRDGroupSessionClient *)&v4 dealloc];
}

- (id)client
{
  connection = [(MRDGroupSessionClient *)self connection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051A0C;
  v6[3] = &unk_1004B6FC0;
  v6[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)session:(id)session didUpdateParticipants:(id)participants
{
  sessionCopy = session;
  participantsCopy = participants;
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051BB0;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = participantsCopy;
  v13 = sessionCopy;
  v9 = sessionCopy;
  v10 = participantsCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didUpdateMembers:(id)members
{
  sessionCopy = session;
  membersCopy = members;
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051D10;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = sessionCopy;
  v13 = membersCopy;
  v9 = membersCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  sessionCopy = session;
  if (state == 4)
  {
    queue = [(MRDGroupSessionClient *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100051E58;
    v8[3] = &unk_1004B68F0;
    v9 = sessionCopy;
    selfCopy = self;
    dispatch_async(queue, v8);
  }
}

- (void)session:(id)session didUpdatePendingParticipants:(id)participants
{
  sessionCopy = session;
  participantsCopy = participants;
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051FDC;
  block[3] = &unk_1004B69D0;
  v12 = participantsCopy;
  selfCopy = self;
  v14 = sessionCopy;
  v9 = sessionCopy;
  v10 = participantsCopy;
  dispatch_async(queue, block);
}

- (void)session:(id)session didUpdateSynchronizedMetadata:(id)metadata
{
  sessionCopy = session;
  metadataCopy = metadata;
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000522D0;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = sessionCopy;
  v13 = metadataCopy;
  v9 = metadataCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)sessionDidEnterLowPowerMode:(id)mode
{
  modeCopy = mode;
  queue = [(MRDGroupSessionClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000523F4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(queue, v7);
}

- (void)sessionDidExitLowPowerMode:(id)mode
{
  modeCopy = mode;
  queue = [(MRDGroupSessionClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052518;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = modeCopy;
  v6 = modeCopy;
  dispatch_async(queue, v7);
}

- (void)manager:(id)manager discoveredSessionsDidChange:(id)change
{
  changeCopy = change;
  queue = [(MRDGroupSessionClient *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005263C;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

- (void)manager:(id)manager didJoinRemoteGroupSession:(id)session
{
  sessionCopy = session;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:sessionCopy];
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052790;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v11 = sessionCopy;
  v12 = v6;
  v8 = v6;
  v9 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)manager:(id)manager didLeaveRemoteGroupSession:(id)session
{
  v5 = [(MRDGroupSessionClient *)self queue:manager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000528A0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)manager:(id)manager didStartHostedGroupSession:(id)session
{
  sessionCopy = session;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:sessionCopy];

  queue = [(MRDGroupSessionClient *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000529E4;
  v9[3] = &unk_1004B68F0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, v9);
}

- (void)manager:(id)manager didEndHostedGroupSession:(id)session
{
  v5 = [(MRDGroupSessionClient *)self queue:manager];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052ADC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)manager:(id)manager activeSessionDidChange:(id)change
{
  changeCopy = change;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:changeCopy];
  queue = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052C30;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v11 = changeCopy;
  v12 = v6;
  v8 = v6;
  v9 = changeCopy;
  dispatch_async(queue, block);
}

- (void)connectToSession:(id)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  [(MRDGroupSessionClient *)self setType:0];
  [(MRDGroupSessionClient *)self setSessionIdentifier:sessionCopy];
  v8 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v8 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  session = [sessionManager session];
  v11 = +[MRDMediaRemoteServer server];
  routingServer = [v11 routingServer];
  systemEndpointController = [routingServer systemEndpointController];

  v14 = [systemEndpointController activeOutputDeviceUID:0];
  v15 = [systemEndpointController originClientForDeviceUID:v14];
  deviceInfo = [v15 deviceInfo];
  groupSessionToken = [deviceInfo groupSessionToken];
  v45 = [groupSessionToken copy];

  v18 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v18 nowPlayingServer];

  v20 = [nowPlayingServer originClientForDeviceUID:sessionCopy];
  deviceInfo2 = [v20 deviceInfo];

  identifier = [session identifier];
  v22 = identifier;
  if (identifier == sessionCopy)
  {

    goto LABEL_11;
  }

  v23 = [identifier isEqual:sessionCopy];

  if (v23)
  {
LABEL_11:
    [(MRDGroupSessionClient *)self setSession:session];
    [session addObserver:self];
    joinToken = [session joinToken];
    v35 = [(MRDGroupSessionClient *)self initialStateFromSession:session token:joinToken];

    v36 = _MRLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A4EE4(v35, self);
    }

    replyCopy[2](replyCopy, v35, 0);
    goto LABEL_14;
  }

  sessionIdentifier = [v45 sessionIdentifier];
  if ([sessionIdentifier isEqualToString:sessionCopy])
  {
    sharedSecret = [v45 sharedSecret];

    if (sharedSecret)
    {
      v26 = _MRLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        sessionIdentifier2 = [(MRDGroupSessionClient *)self sessionIdentifier];
        *buf = 138412290;
        v56 = sessionIdentifier2;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Connecting to pending session: %@", buf, 0xCu);
      }

      [sessionManager addObserver:self];
      objc_initWeak(&location, self);
      v28 = [MSVBlockGuard alloc];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000532F0;
      v47[3] = &unk_1004B7188;
      objc_copyWeak(&v51, &location);
      v48 = sessionCopy;
      v49 = sessionManager;
      v50 = session;
      v29 = [v28 initWithTimeout:v47 interruptionHandler:30.0];
      connectTimeoutGuard = self->_connectTimeoutGuard;
      self->_connectTimeoutGuard = v29;

      v31 = [(MRDGroupSessionClient *)self initialStateFromSession:0 token:v45];
      v32 = _MRLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        connection = [(MRDGroupSessionClient *)self connection];
        sub_1003A4D48(v31, connection, buf, v32);
      }

      replyCopy[2](replyCopy, v31, 0);
      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([deviceInfo2 hasPlaceholderGroupSession])
  {
    v37 = [[MRGroupSessionToken alloc] initWithDeviceInfo:deviceInfo2];
    v53[0] = _MRGroupSessionTokenInitialSyncKey;
    v43 = v37;
    data = [v37 data];
    v53[1] = _MRGroupSessionPlaceholderInitialSyncKey;
    v54[0] = data;
    v54[1] = &__kCFBooleanTrue;
    v39 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A4E44(v39, self);
    }

    replyCopy[2](replyCopy, v39, 0);
  }

  else
  {
    v41 = _MRLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4DB0(self);
    }

    v42 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Could not find session for provided identifier."];
    (replyCopy)[2](replyCopy, 0, v42);
  }

LABEL_14:
}

- (id)initialStateFromSession:(id)session token:(id)token
{
  sessionCopy = session;
  tokenCopy = token;
  members = [sessionCopy members];
  v9 = [NSSet setWithArray:members];

  participants = [sessionCopy participants];
  v11 = [(MRDGroupSessionClient *)self transportParticipants:participants forSession:sessionCopy];

  pendingParticipants = [sessionCopy pendingParticipants];
  v13 = [pendingParticipants msv_compactMap:&stru_1004B71A8];
  v14 = [NSSet setWithArray:v13];

  v15 = +[NSMutableDictionary dictionary];
  if (sessionCopy)
  {
    if ([sessionCopy isLowPowerMode])
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [NSNumber numberWithInteger:v16];
  [v15 setObject:v17 forKeyedSubscript:_MRGroupSessionStateInitialSyncKey];

  [v15 setObject:v11 forKeyedSubscript:_MRGroupSessionParticipantsInitialSyncKey];
  [v15 setObject:v14 forKeyedSubscript:_MRGroupSessionPendingParticipantsInitialSyncKey];
  [v15 setObject:v9 forKeyedSubscript:_MRGroupSessionMembersInitialSyncKey];
  data = [tokenCopy data];

  [v15 setObject:data forKeyedSubscript:_MRGroupSessionTokenInitialSyncKey];

  return v15;
}

- (void)session:(id)session approvePendingParticipant:(id)participant reply:(id)reply
{
  sessionCopy = session;
  participantCopy = participant;
  replyCopy = reply;
  session = [(MRDGroupSessionClient *)self session];
  identifier = [session identifier];
  v13 = identifier;
  if (identifier == sessionCopy)
  {
  }

  else
  {
    v14 = [sessionCopy isEqual:identifier];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      replyCopy[2](replyCopy, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [participantCopy identifier];
    bundleID = [(MRDGroupSessionClient *)self bundleID];
    v20 = 138412546;
    v21 = identifier2;
    v22 = 2112;
    v23 = bundleID;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling approve pending participant %@ from client: %@", &v20, 0x16u);
  }

  identifier3 = [participantCopy identifier];
  [session approvePendingParticipant:identifier3];

  replyCopy[2](replyCopy, 0);
LABEL_8:
}

- (void)session:(id)session denyPendingParticipant:(id)participant reply:(id)reply
{
  sessionCopy = session;
  participantCopy = participant;
  replyCopy = reply;
  session = [(MRDGroupSessionClient *)self session];
  identifier = [session identifier];
  v13 = identifier;
  if (identifier == sessionCopy)
  {
  }

  else
  {
    v14 = [sessionCopy isEqual:identifier];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      replyCopy[2](replyCopy, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [participantCopy identifier];
    bundleID = [(MRDGroupSessionClient *)self bundleID];
    v20 = 138412546;
    v21 = identifier2;
    v22 = 2112;
    v23 = bundleID;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling deny pending participant %@ from client: %@", &v20, 0x16u);
  }

  identifier3 = [participantCopy identifier];
  [session denyPendingParticipant:identifier3];

  replyCopy[2](replyCopy, 0);
LABEL_8:
}

- (void)session:(id)session removeParticipant:(id)participant reply:(id)reply
{
  sessionCopy = session;
  participantCopy = participant;
  replyCopy = reply;
  session = [(MRDGroupSessionClient *)self session];
  identifier = [session identifier];
  v13 = identifier;
  if (identifier == sessionCopy)
  {
  }

  else
  {
    v14 = [sessionCopy isEqual:identifier];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      replyCopy[2](replyCopy, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(MRDGroupSessionClient *)self bundleID];
    v18 = 138412546;
    v19 = participantCopy;
    v20 = 2112;
    v21 = bundleID;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling remove participant %@ from client: %@", &v18, 0x16u);
  }

  [session revokeAutoApprovalForParticipant:participantCopy];
  [session removeParticipant:participantCopy];
  replyCopy[2](replyCopy, 0);
LABEL_8:
}

- (void)session:(id)session removeAllParticipantsWithReply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  session = [(MRDGroupSessionClient *)self session];
  identifier = [session identifier];
  v10 = identifier;
  if (identifier == sessionCopy)
  {
  }

  else
  {
    v11 = [sessionCopy isEqual:identifier];

    if ((v11 & 1) == 0)
    {
      v12 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      replyCopy[2](replyCopy, v12);

      goto LABEL_8;
    }
  }

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bundleID = [(MRDGroupSessionClient *)self bundleID];
    v15 = 138412290;
    v16 = bundleID;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling remove all command from client: %@", &v15, 0xCu);
  }

  [session revokeAutoApprovalForAllParticipants];
  [session removeAllParticipants];
  replyCopy[2](replyCopy, 0);
LABEL_8:
}

- (void)connectToDiscoveryWithReply:(id)reply
{
  replyCopy = reply;
  [(MRDGroupSessionClient *)self setType:1];
  v5 = +[MRDMediaRemoteServer server];
  groupSessionServer = [v5 groupSessionServer];
  sessionManager = [groupSessionServer sessionManager];

  [sessionManager addObserver:self];
  discoveredSessions = [sessionManager discoveredSessions];
  session = [sessionManager session];
  v9 = [(MRDGroupSessionClient *)self infoFromGroupSession:session];
  replyCopy[2](replyCopy, discoveredSessions, v9);
}

- (void)reevaluatePendingStateFromSession:(id)session
{
  sessionCopy = session;
  sessionIdentifier = [(MRDGroupSessionClient *)self sessionIdentifier];
  identifier = [sessionCopy identifier];
  v7 = [sessionIdentifier isEqual:identifier];

  if (v7)
  {
    connectTimeoutGuard = [(MRDGroupSessionClient *)self connectTimeoutGuard];
    disarm = [connectTimeoutGuard disarm];

    v10 = _MRLogForCategory();
    sessionManager = v10;
    if (disarm)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        sessionIdentifier2 = [(MRDGroupSessionClient *)self sessionIdentifier];
        v19 = 138412290;
        v20 = sessionIdentifier2;
        _os_log_impl(&_mh_execute_header, sessionManager, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Pending session: %@ joined", &v19, 0xCu);
      }

      v13 = +[MRDMediaRemoteServer server];
      groupSessionServer = [v13 groupSessionServer];
      sessionManager = [groupSessionServer sessionManager];

      [sessionManager removeObserver:self];
      [(MRDGroupSessionClient *)self setSession:sessionCopy];
      [sessionCopy addObserver:self];
      joinToken = [sessionCopy joinToken];
      v16 = [(MRDGroupSessionClient *)self initialStateFromSession:sessionCopy token:joinToken];

      client = [(MRDGroupSessionClient *)self client];
      identifier2 = [sessionCopy identifier];
      [client session:identifier2 didConnectWithInitialState:v16];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1003A50A4(self);
    }
  }

  else
  {
    sessionManager = _MRLogForCategory();
    if (os_log_type_enabled(sessionManager, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5000(sessionCopy, self);
    }
  }
}

- (id)transportParticipants:(id)participants forSession:(id)session
{
  participantsCopy = participants;
  sessionCopy = session;
  localParticipant = [sessionCopy localParticipant];
  leader = [sessionCopy leader];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000543C0;
  v19[3] = &unk_1004B71D0;
  v9 = localParticipant;
  v20 = v9;
  v22 = &v23;
  v10 = leader;
  v21 = v10;
  v11 = [participantsCopy msv_compactMap:v19];
  v12 = [NSMutableSet setWithArray:v11];

  if ((v24[3] & 1) == 0)
  {
    v13 = [MRCodableGroupSessionParticipant alloc];
    identifier = [v9 identifier];
    identity = [v9 identity];
    v16 = [v13 initWithIdentifier:identifier identity:identity connected:1 guest:objc_msgSend(v9 hidden:{"guest"), objc_msgSend(v9, "hidden")}];

    [v16 setLocal:1];
    [v16 setHost:{objc_msgSend(sessionCopy, "isHosted")}];
    [v12 addObject:v16];
  }

  v17 = [v12 copy];

  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)infoFromGroupSession:(id)session
{
  if (session)
  {
    sessionCopy = session;
    v4 = [[MRGroupSessionInfo alloc] initWithGroupSession:sessionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRDGroupSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end