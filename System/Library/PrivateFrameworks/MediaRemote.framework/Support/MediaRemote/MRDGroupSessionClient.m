@interface MRDGroupSessionClient
- (MRDGroupSession)session;
- (MRDGroupSessionClient)initWithConnection:(id)a3 bundleID:(id)a4;
- (id)client;
- (id)infoFromGroupSession:(id)a3;
- (id)initialStateFromSession:(id)a3 token:(id)a4;
- (id)transportParticipants:(id)a3 forSession:(id)a4;
- (void)connectToDiscoveryWithReply:(id)a3;
- (void)connectToSession:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)manager:(id)a3 activeSessionDidChange:(id)a4;
- (void)manager:(id)a3 didEndHostedGroupSession:(id)a4;
- (void)manager:(id)a3 didJoinRemoteGroupSession:(id)a4;
- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4;
- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4;
- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4;
- (void)reevaluatePendingStateFromSession:(id)a3;
- (void)session:(id)a3 approvePendingParticipant:(id)a4 reply:(id)a5;
- (void)session:(id)a3 denyPendingParticipant:(id)a4 reply:(id)a5;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
- (void)session:(id)a3 didUpdateMembers:(id)a4;
- (void)session:(id)a3 didUpdateParticipants:(id)a4;
- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4;
- (void)session:(id)a3 didUpdateSynchronizedMetadata:(id)a4;
- (void)session:(id)a3 removeAllParticipantsWithReply:(id)a4;
- (void)session:(id)a3 removeParticipant:(id)a4 reply:(id)a5;
- (void)sessionDidEnterLowPowerMode:(id)a3;
- (void)sessionDidExitLowPowerMode:(id)a3;
@end

@implementation MRDGroupSessionClient

- (MRDGroupSessionClient)initWithConnection:(id)a3 bundleID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = MRDGroupSessionClient;
  v9 = [(MRDGroupSessionClient *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connection, a3);
    objc_storeStrong(&v10->_bundleID, a4);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = +[MRDMediaRemoteServer server];
    v13 = [v12 groupSessionServer];
    v14 = [v13 messageQueue];
    v15 = dispatch_queue_create_with_target_V2("com.apple.MRDGroupSessionClient.queue", v11, v14);
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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] <%p> Dealloc.", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = MRDGroupSessionClient;
  [(MRDGroupSessionClient *)&v4 dealloc];
}

- (id)client
{
  v3 = [(MRDGroupSessionClient *)self connection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100051A0C;
  v6[3] = &unk_1004B6FC0;
  v6[4] = self;
  v4 = [v3 remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)session:(id)a3 didUpdateParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051BB0;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)session:(id)a3 didUpdateMembers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051D10;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  if (a4 == 4)
  {
    v7 = [(MRDGroupSessionClient *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100051E58;
    v8[3] = &unk_1004B68F0;
    v9 = v6;
    v10 = self;
    dispatch_async(v7, v8);
  }
}

- (void)session:(id)a3 didUpdatePendingParticipants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051FDC;
  block[3] = &unk_1004B69D0;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)session:(id)a3 didUpdateSynchronizedMetadata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000522D0;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)sessionDidEnterLowPowerMode:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000523F4;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)sessionDidExitLowPowerMode:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionClient *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100052518;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)manager:(id)a3 discoveredSessionsDidChange:(id)a4
{
  v5 = a4;
  v6 = [(MRDGroupSessionClient *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005263C;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)manager:(id)a3 didJoinRemoteGroupSession:(id)a4
{
  v5 = a4;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:v5];
  v7 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052790;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

- (void)manager:(id)a3 didLeaveRemoteGroupSession:(id)a4
{
  v5 = [(MRDGroupSessionClient *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000528A0;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)manager:(id)a3 didStartHostedGroupSession:(id)a4
{
  v5 = a4;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:v5];

  v7 = [(MRDGroupSessionClient *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000529E4;
  v9[3] = &unk_1004B68F0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);
}

- (void)manager:(id)a3 didEndHostedGroupSession:(id)a4
{
  v5 = [(MRDGroupSessionClient *)self queue:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052ADC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v5, block);
}

- (void)manager:(id)a3 activeSessionDidChange:(id)a4
{
  v5 = a4;
  v6 = [[MRGroupSessionInfo alloc] initWithGroupSession:v5];
  v7 = [(MRDGroupSessionClient *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100052C30;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, block);
}

- (void)connectToSession:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(MRDGroupSessionClient *)self setType:0];
  [(MRDGroupSessionClient *)self setSessionIdentifier:v6];
  v8 = +[MRDMediaRemoteServer server];
  v9 = [v8 groupSessionServer];
  v46 = [v9 sessionManager];

  v10 = [v46 session];
  v11 = +[MRDMediaRemoteServer server];
  v12 = [v11 routingServer];
  v13 = [v12 systemEndpointController];

  v14 = [v13 activeOutputDeviceUID:0];
  v15 = [v13 originClientForDeviceUID:v14];
  v16 = [v15 deviceInfo];
  v17 = [v16 groupSessionToken];
  v45 = [v17 copy];

  v18 = +[MRDMediaRemoteServer server];
  v19 = [v18 nowPlayingServer];

  v20 = [v19 originClientForDeviceUID:v6];
  v44 = [v20 deviceInfo];

  v21 = [v10 identifier];
  v22 = v21;
  if (v21 == v6)
  {

    goto LABEL_11;
  }

  v23 = [v21 isEqual:v6];

  if (v23)
  {
LABEL_11:
    [(MRDGroupSessionClient *)self setSession:v10];
    [v10 addObserver:self];
    v34 = [v10 joinToken];
    v35 = [(MRDGroupSessionClient *)self initialStateFromSession:v10 token:v34];

    v36 = _MRLogForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A4EE4(v35, self);
    }

    v7[2](v7, v35, 0);
    goto LABEL_14;
  }

  v24 = [v45 sessionIdentifier];
  if ([v24 isEqualToString:v6])
  {
    v25 = [v45 sharedSecret];

    if (v25)
    {
      v26 = _MRLogForCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(MRDGroupSessionClient *)self sessionIdentifier];
        *buf = 138412290;
        v56 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Connecting to pending session: %@", buf, 0xCu);
      }

      [v46 addObserver:self];
      objc_initWeak(&location, self);
      v28 = [MSVBlockGuard alloc];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_1000532F0;
      v47[3] = &unk_1004B7188;
      objc_copyWeak(&v51, &location);
      v48 = v6;
      v49 = v46;
      v50 = v10;
      v29 = [v28 initWithTimeout:v47 interruptionHandler:30.0];
      connectTimeoutGuard = self->_connectTimeoutGuard;
      self->_connectTimeoutGuard = v29;

      v31 = [(MRDGroupSessionClient *)self initialStateFromSession:0 token:v45];
      v32 = _MRLogForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        v33 = [(MRDGroupSessionClient *)self connection];
        sub_1003A4D48(v31, v33, buf, v32);
      }

      v7[2](v7, v31, 0);
      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
      goto LABEL_14;
    }
  }

  else
  {
  }

  if ([v44 hasPlaceholderGroupSession])
  {
    v37 = [[MRGroupSessionToken alloc] initWithDeviceInfo:v44];
    v53[0] = _MRGroupSessionTokenInitialSyncKey;
    v43 = v37;
    v38 = [v37 data];
    v53[1] = _MRGroupSessionPlaceholderInitialSyncKey;
    v54[0] = v38;
    v54[1] = &__kCFBooleanTrue;
    v39 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:2];

    v40 = _MRLogForCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A4E44(v39, self);
    }

    v7[2](v7, v39, 0);
  }

  else
  {
    v41 = _MRLogForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1003A4DB0(self);
    }

    v42 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Could not find session for provided identifier."];
    (v7)[2](v7, 0, v42);
  }

LABEL_14:
}

- (id)initialStateFromSession:(id)a3 token:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 members];
  v9 = [NSSet setWithArray:v8];

  v10 = [v6 participants];
  v11 = [(MRDGroupSessionClient *)self transportParticipants:v10 forSession:v6];

  v12 = [v6 pendingParticipants];
  v13 = [v12 msv_compactMap:&stru_1004B71A8];
  v14 = [NSSet setWithArray:v13];

  v15 = +[NSMutableDictionary dictionary];
  if (v6)
  {
    if ([v6 isLowPowerMode])
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
  v18 = [v7 data];

  [v15 setObject:v18 forKeyedSubscript:_MRGroupSessionTokenInitialSyncKey];

  return v15;
}

- (void)session:(id)a3 approvePendingParticipant:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDGroupSessionClient *)self session];
  v12 = [v11 identifier];
  v13 = v12;
  if (v12 == v8)
  {
  }

  else
  {
    v14 = [v8 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      v10[2](v10, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 identifier];
    v18 = [(MRDGroupSessionClient *)self bundleID];
    v20 = 138412546;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling approve pending participant %@ from client: %@", &v20, 0x16u);
  }

  v19 = [v9 identifier];
  [v11 approvePendingParticipant:v19];

  v10[2](v10, 0);
LABEL_8:
}

- (void)session:(id)a3 denyPendingParticipant:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDGroupSessionClient *)self session];
  v12 = [v11 identifier];
  v13 = v12;
  if (v12 == v8)
  {
  }

  else
  {
    v14 = [v8 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      v10[2](v10, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v9 identifier];
    v18 = [(MRDGroupSessionClient *)self bundleID];
    v20 = 138412546;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling deny pending participant %@ from client: %@", &v20, 0x16u);
  }

  v19 = [v9 identifier];
  [v11 denyPendingParticipant:v19];

  v10[2](v10, 0);
LABEL_8:
}

- (void)session:(id)a3 removeParticipant:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MRDGroupSessionClient *)self session];
  v12 = [v11 identifier];
  v13 = v12;
  if (v12 == v8)
  {
  }

  else
  {
    v14 = [v8 isEqual:v12];

    if ((v14 & 1) == 0)
    {
      v15 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      v10[2](v10, v15);

      goto LABEL_8;
    }
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(MRDGroupSessionClient *)self bundleID];
    v18 = 138412546;
    v19 = v9;
    v20 = 2112;
    v21 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling remove participant %@ from client: %@", &v18, 0x16u);
  }

  [v11 revokeAutoApprovalForParticipant:v9];
  [v11 removeParticipant:v9];
  v10[2](v10, 0);
LABEL_8:
}

- (void)session:(id)a3 removeAllParticipantsWithReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MRDGroupSessionClient *)self session];
  v9 = [v8 identifier];
  v10 = v9;
  if (v9 == v6)
  {
  }

  else
  {
    v11 = [v6 isEqual:v9];

    if ((v11 & 1) == 0)
    {
      v12 = [NSError msv_errorWithDomain:MRGroupSessionError code:2 debugDescription:@"Session identifier does not match connected session."];
      v7[2](v7, v12);

      goto LABEL_8;
    }
  }

  v13 = _MRLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(MRDGroupSessionClient *)self bundleID];
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Handling remove all command from client: %@", &v15, 0xCu);
  }

  [v8 revokeAutoApprovalForAllParticipants];
  [v8 removeAllParticipants];
  v7[2](v7, 0);
LABEL_8:
}

- (void)connectToDiscoveryWithReply:(id)a3
{
  v4 = a3;
  [(MRDGroupSessionClient *)self setType:1];
  v5 = +[MRDMediaRemoteServer server];
  v6 = [v5 groupSessionServer];
  v10 = [v6 sessionManager];

  [v10 addObserver:self];
  v7 = [v10 discoveredSessions];
  v8 = [v10 session];
  v9 = [(MRDGroupSessionClient *)self infoFromGroupSession:v8];
  v4[2](v4, v7, v9);
}

- (void)reevaluatePendingStateFromSession:(id)a3
{
  v4 = a3;
  v5 = [(MRDGroupSessionClient *)self sessionIdentifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [(MRDGroupSessionClient *)self connectTimeoutGuard];
    v9 = [v8 disarm];

    v10 = _MRLogForCategory();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(MRDGroupSessionClient *)self sessionIdentifier];
        v19 = 138412290;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[MRDGroupSessionClient] Pending session: %@ joined", &v19, 0xCu);
      }

      v13 = +[MRDMediaRemoteServer server];
      v14 = [v13 groupSessionServer];
      v11 = [v14 sessionManager];

      [v11 removeObserver:self];
      [(MRDGroupSessionClient *)self setSession:v4];
      [v4 addObserver:self];
      v15 = [v4 joinToken];
      v16 = [(MRDGroupSessionClient *)self initialStateFromSession:v4 token:v15];

      v17 = [(MRDGroupSessionClient *)self client];
      v18 = [v4 identifier];
      [v17 session:v18 didConnectWithInitialState:v16];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1003A50A4(self);
    }
  }

  else
  {
    v11 = _MRLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1003A5000(v4, self);
    }
  }
}

- (id)transportParticipants:(id)a3 forSession:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 localParticipant];
  v8 = [v6 leader];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000543C0;
  v19[3] = &unk_1004B71D0;
  v9 = v7;
  v20 = v9;
  v22 = &v23;
  v10 = v8;
  v21 = v10;
  v11 = [v5 msv_compactMap:v19];
  v12 = [NSMutableSet setWithArray:v11];

  if ((v24[3] & 1) == 0)
  {
    v13 = [MRCodableGroupSessionParticipant alloc];
    v14 = [v9 identifier];
    v15 = [v9 identity];
    v16 = [v13 initWithIdentifier:v14 identity:v15 connected:1 guest:objc_msgSend(v9 hidden:{"guest"), objc_msgSend(v9, "hidden")}];

    [v16 setLocal:1];
    [v16 setHost:{objc_msgSend(v6, "isHosted")}];
    [v12 addObject:v16];
  }

  v17 = [v12 copy];

  _Block_object_dispose(&v23, 8);

  return v17;
}

- (id)infoFromGroupSession:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[MRGroupSessionInfo alloc] initWithGroupSession:v3];
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