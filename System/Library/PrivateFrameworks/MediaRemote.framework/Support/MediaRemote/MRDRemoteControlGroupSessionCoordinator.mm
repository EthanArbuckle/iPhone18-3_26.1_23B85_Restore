@interface MRDRemoteControlGroupSessionCoordinator
- (BOOL)autoJoinMaxRetriesReached;
- (MRDRemoteControlGroupSessionCoordinator)initWithSessionManager:(id)a3 eligibilityMonitor:(id)a4;
- (NSString)description;
- (id)diagnosticDescription;
- (void)clearHostedSessionState;
- (void)clusterController:(id)a3 clusterStatusDidChange:(unint64_t)a4;
- (void)collectDiagnostic:(id)a3;
- (void)dealloc;
- (void)eligibilityMonitor:(id)a3 eligibilityStatusDidChange:(id)a4;
- (void)handleDeviceInfoChangeNotification:(id)a3;
- (void)initializeObserversAndState;
- (void)reevaluateAfterInterval:(double)a3 withReason:(id)a4;
- (void)reevaluateSystemStateWithReason:(id)a3;
- (void)refreshASEInfo;
- (void)retryAutoJoin;
- (void)session:(id)a3 didChangeState:(int64_t)a4;
- (void)sessionDidRemoveAllParticipants:(id)a3;
@end

@implementation MRDRemoteControlGroupSessionCoordinator

- (MRDRemoteControlGroupSessionCoordinator)initWithSessionManager:(id)a3 eligibilityMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = MRDRemoteControlGroupSessionCoordinator;
  v9 = [(MRDRemoteControlGroupSessionCoordinator *)&v20 init];
  if (v9)
  {
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UNSPECIFIED, 0);
    v12 = dispatch_queue_create("com.apple.MRDRemoteControlGroupSessionCoordinator.queue", v11);
    queue = v9->_queue;
    v9->_queue = v12;

    objc_storeStrong(&v9->_sessionManager, a3);
    [v8 addObserver:v9];
    v14 = v9->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000A21F4;
    block[3] = &unk_1004B6D08;
    v19 = v9;
    dispatch_async(v14, block);
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Initialized", v17, 2u);
    }
  }

  return v9;
}

- (BOOL)autoJoinMaxRetriesReached
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A2330;
  v5[3] = &unk_1004B6D30;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)retryAutoJoin
{
  v3 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A23EC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = MRDRemoteControlGroupSessionCoordinator;
  [(MRDRemoteControlGroupSessionCoordinator *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDRemoteControlGroupSessionCoordinator *)self hostedSessionIdentifier];
  v6 = [(MRDRemoteControlGroupSessionCoordinator *)self rotatingSessionIdentifier];
  v7 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSessionCoordinator *)self isThrottled]];
  v8 = [v7 stringValue];
  v9 = [v3 initWithFormat:@"<%@: hostedSessionIdentifier=%@, rotatingSessionIdentifier=%@, throttled=%@>", v4, v5, v6, v8];

  return v9;
}

- (id)diagnosticDescription
{
  v3 = [NSString alloc];
  v4 = [(MRDRemoteControlGroupSessionCoordinator *)self description];
  v5 = [(MRDRemoteControlGroupSessionCoordinator *)self eligibilityStatus];
  v6 = [v3 initWithFormat:@"%@ state=%@>", v4, v5];

  return v6;
}

- (void)initializeObserversAndState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"handleDeviceInfoChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"handleASEChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"handleDidRegisterOriginNotification:" name:kMRMediaRemoteOriginDidRegisterNotification object:0];
}

- (void)handleDeviceInfoChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = MRGetDeviceInfoFromUserInfo();

  v6 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2894;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)refreshASEInfo
{
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  v4 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A2A10;
  v5[3] = &unk_1004B9CA8;
  v5[4] = self;
  [v3 resolveActiveSystemEndpointWithType:0 timeout:v4 queue:v5 completion:10.0];
}

- (void)reevaluateSystemStateWithReason:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v89 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Re-evaluating because: %{public}@", buf, 0xCu);
  }

  v7 = [(MRDRemoteControlGroupSessionCoordinator *)self rotatingSessionIdentifier];

  if (![(MRDRemoteControlGroupSessionCoordinator *)self isStartingSession]&& ![(MRDRemoteControlGroupSessionCoordinator *)self isJoiningSession]&& ![(MRDRemoteControlGroupSessionCoordinator *)self isThrottled]&& !v7)
  {
    v13 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
    v8 = [v13 session];

    v14 = [v8 isHosted];
    v15 = [(MRDRemoteControlGroupSessionCoordinator *)self eligibilityStatus];
    v16 = [v15 idsAccountIsValid];
    v17 = [v15 isManateeEnabled];
    v18 = v17;
    if ((v16 & 1) == 0 && (v14 & 1) == 0)
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "[MRDRemoteControlGroupSessionCoordinator] Returning. Rationale: validIDSAccount=NO, existing=NO.";
LABEL_18:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, 2u);
        goto LABEL_47;
      }

      goto LABEL_47;
    }

    if (((v17 | v14) & 1) == 0)
    {
      v19 = _MRLogForCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "[MRDRemoteControlGroupSessionCoordinator] Returning. Rationale: validManatee=NO, existing=NO.";
        goto LABEL_18;
      }

LABEL_47:

      goto LABEL_48;
    }

    v72 = [v15 routeType];
    v21 = [v15 routeIsValidForHosting];
    v79 = v21 & v16 & v18;
    [NSNumber numberWithBool:v21];
    v22 = v80 = v15;
    v23 = [NSNumber numberWithBool:v16];
    v24 = [NSNumber numberWithBool:v18];
    v25 = [NSMutableString stringWithFormat:@"validRoute=%@, validIDS=%@, validManatee=%@", v22, v23, v24];

    v26 = [NSNumber numberWithBool:v14];
    [v25 appendFormat:@", existingHostedSession=%@", v26];

    v71 = v14;
    if (v14 & 1 | ((v79 & 1) == 0))
    {
      v74 = 1;
      v27 = v80;
    }

    else
    {
      v27 = v80;
      v28 = [v80 mediaAccountHostingState];
      v74 = v28 != 6;
      v29 = [NSNumber numberWithBool:v28 == 6];
      [v25 appendFormat:@", mediaStateValid=%@", v29];
    }

    v81 = [(MRDeviceInfo *)self->_remoteASEDeviceInfo groupSessionToken];
    v76 = v25;
    if (v8)
    {
      v78 = [v8 isHosted]^ 1;
    }

    else
    {
      v78 = 0;
    }

    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 mediaAccountJoiningState]);
    v31 = [&off_1004E0E68 containsObject:v30];

    if (v31 && [v27 isManateeEnabled])
    {
      v32 = [v27 idsAccountIsValid] ^ 1;
    }

    else
    {
      v32 = 1;
    }

    v33 = [v8 joinToken];
    v69 = [v33 sharedSecret];

    v34 = +[MRSharedSettings currentSettings];
    v35 = 0;
    if ([v34 supportGroupSessionHome] && (v32 & 1) == 0)
    {
      v36 = [v81 sharedSecret];
      v35 = v36 != 0;
    }

    v77 = ![(MRDRemoteControlGroupSessionCoordinator *)self _onQueue_autoJoinMaxRetriesReached]&& v35;
    v37 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
    v38 = [v37 session];
    v39 = [v38 identifier];
    v40 = [v81 sessionIdentifier];
    v41 = [v39 isEqual:v40];

    v73 = [NSNumber numberWithBool:v78];
    v42 = [NSNumber numberWithBool:v32];
    v43 = [NSNumber numberWithBool:v77];
    v70 = v41;
    v44 = [NSNumber numberWithBool:v41];
    v45 = [NSNumber numberWithUnsignedInteger:[(MRDRemoteControlGroupSessionCoordinator *)self autoJoinRetryCount]];
    v75 = [NSMutableString stringWithFormat:@"hasRemoteSession=%@, isDisallowedJoiningGroupSession=%@, shouldJoinRemoteSession=%@, hasJoinedTargetRemoteSession=%@, autoJoinRetryCount=%@/%d", v73, v42, v43, v44, v45, 10];

    v46 = [NSNumber numberWithBool:v78];
    v19 = v76;
    [v76 appendFormat:@", existingRemoteSession=%@", v46];

    if ((v74 | v78))
    {
      v15 = v80;
      if (v79 & 1 | ((v71 & 1) == 0))
      {
        if (v70 & 1 | ((v77 & 1) == 0))
        {
          if (v77 & 1 | ((v78 & 1) == 0) || !v69)
          {
            v58 = _MRLogForCategory();
            v54 = v75;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = MRGroupSessionRouteTypeDescription();
              v60 = [v81 sessionIdentifier];
              *buf = 138544642;
              *v89 = v59;
              *&v89[8] = 2114;
              v90 = v60;
              LOWORD(v91) = 1024;
              *(&v91 + 2) = v70;
              WORD3(v91) = 2114;
              *(&v91 + 1) = v75;
              v92 = 1024;
              v93 = 0;
              v94 = 2114;
              v95 = v76;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] No action. Rationale: route=%{public}@, targetSession=%{public}@, joinedTargetSession=%{BOOL}u (reason=%{public}@), canStart=%{BOOL}u (reason=%{public}@)", buf, 0x36u);
            }

            goto LABEL_46;
          }

          [(MRDRemoteControlGroupSessionCoordinator *)self setAutoJoinRetryCount:0];
          v47 = _MRLogForCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v89 = v8;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Leaving remote session: %{public}@", buf, 0xCu);
          }

          [v8 removeObserver:self];
          v48 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
          [v48 leaveRemoteControlGroupSession:v8];

          v49 = @"Left auto-joined group session";
          v50 = 5.0;
        }

        else
        {
          if (!v78)
          {
            [(MRDRemoteControlGroupSessionCoordinator *)self setAutoJoinRetryCount:[(MRDRemoteControlGroupSessionCoordinator *)self autoJoinRetryCount]+ 1];
            v61 = _MRLogForCategory();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = [(MRDeviceInfo *)self->_remoteASEDeviceInfo WHAIdentifier];
              v63 = [(MRDRemoteControlGroupSessionCoordinator *)self autoJoinRetryCount];
              *buf = 138544130;
              *v89 = v81;
              *&v89[8] = 2114;
              v90 = v62;
              LOWORD(v91) = 2048;
              *(&v91 + 2) = v63;
              WORD5(v91) = 1024;
              HIDWORD(v91) = 10;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Attempting to auto-join target remote session: %{public}@ from ASE %{public}@, attempt %ld/%d", buf, 0x26u);
            }

            [(MRDRemoteControlGroupSessionCoordinator *)self setJoiningSession:1];
            v64 = [MRBlockGuard alloc];
            v85[0] = _NSConcreteStackBlock;
            v85[1] = 3221225472;
            v85[2] = sub_1000A3CE8;
            v85[3] = &unk_1004B9C80;
            v85[4] = self;
            v65 = v81;
            v86 = v65;
            v66 = [v64 initWithTimeout:@"Session auto-join" reason:v85 handler:30.0];
            v67 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
            v82[0] = _NSConcreteStackBlock;
            v82[1] = 3221225472;
            v82[2] = sub_1000A3E8C;
            v82[3] = &unk_1004B9CF8;
            v82[4] = self;
            v83 = v66;
            v84 = v65;
            v68 = v66;
            [v67 joinGroupSessionWithToken:v84 completion:v82];

            goto LABEL_45;
          }

          [(MRDRemoteControlGroupSessionCoordinator *)self setAutoJoinRetryCount:0];
          v55 = _MRLogForCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v81 sessionIdentifier];
            *buf = 138543618;
            *v89 = v8;
            *&v89[8] = 2114;
            v90 = v56;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Leaving remote session: %{public}@ because auto-joining target session: %{public}@", buf, 0x16u);
          }

          [v8 removeObserver:self];
          v57 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
          [v57 leaveRemoteControlGroupSession:v8];

          v49 = @"Left session to allow auto-joining a new one";
          v50 = 1.0;
        }

        [(MRDRemoteControlGroupSessionCoordinator *)self reevaluateAfterInterval:v49 withReason:v50];
LABEL_45:
        v54 = v75;
LABEL_46:

        goto LABEL_47;
      }

      v53 = _MRLogForCategory();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Ending group session.", buf, 2u);
      }

      [(MRDRemoteControlGroupSessionCoordinator *)self clearHostedSessionState];
      [(MRDRemoteControlGroupSessionCoordinator *)self reevaluateAfterInterval:@"Ended group session" withReason:5.0];
      v52 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
      [v52 finishRemoteControlGroupSession:v8];
    }

    else
    {
      v51 = _MRLogForCategory();
      v15 = v80;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Starting group session.", buf, 2u);
      }

      [(MRDRemoteControlGroupSessionCoordinator *)self setStartingSession:1];
      v52 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1000A3A74;
      v87[3] = &unk_1004B9CD0;
      v87[4] = self;
      [v52 startRemoteControlGroupSessionWithRouteType:v72 completion:v87];
    }

    goto LABEL_45;
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7 != 0;
    v10 = [(MRDRemoteControlGroupSessionCoordinator *)self isStartingSession];
    v11 = [(MRDRemoteControlGroupSessionCoordinator *)self isJoiningSession];
    v12 = [(MRDRemoteControlGroupSessionCoordinator *)self isThrottled];
    *buf = 67109888;
    *v89 = v10;
    *&v89[4] = 1024;
    *&v89[6] = v11;
    LOWORD(v90) = 1024;
    *(&v90 + 2) = v12;
    HIWORD(v90) = 1024;
    LODWORD(v91) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Returning. Rationale: starting=%{BOOL}u, joining=%{BOOL}u, throttled=%{BOOL}u, isRotating=%{BOOL}u.", buf, 0x1Au);
  }

LABEL_48:
}

- (void)reevaluateAfterInterval:(double)a3 withReason:(id)a4
{
  v6 = a4;
  v7 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(v7);

  if (![(MRDRemoteControlGroupSessionCoordinator *)self isThrottled])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Applying throttle: %.2f s.", buf, 0xCu);
    }

    [(MRDRemoteControlGroupSessionCoordinator *)self setThrottled:1];
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, (a3 * 1000000000.0));
    v10 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A4318;
    v11[3] = &unk_1004B9630;
    objc_copyWeak(&v13, buf);
    v12 = v6;
    dispatch_after(v9, v10, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)clearHostedSessionState
{
  v3 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(v3);

  [(MRDRemoteControlGroupSessionCoordinator *)self setHostedSessionIdentifier:0];

  [(MRDRemoteControlGroupSessionCoordinator *)self setRotatingSessionIdentifier:0];
}

- (void)collectDiagnostic:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A44A8;
  v7[3] = &unk_1004B68F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async_and_wait(v5, v7);
}

- (void)session:(id)a3 didChangeState:(int64_t)a4
{
  v6 = a3;
  v7 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A45BC;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)sessionDidRemoveAllParticipants:(id)a3
{
  v4 = a3;
  v5 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A4810;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)eligibilityMonitor:(id)a3 eligibilityStatusDidChange:(id)a4
{
  v5 = a4;
  v6 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A49D0;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)clusterController:(id)a3 clusterStatusDidChange:(unint64_t)a4
{
  v6 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A4AA8;
  v7[3] = &unk_1004B7650;
  v7[4] = self;
  v7[5] = a4;
  dispatch_async(v6, v7);
}

@end