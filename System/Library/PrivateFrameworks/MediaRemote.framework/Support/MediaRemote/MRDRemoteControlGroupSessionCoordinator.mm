@interface MRDRemoteControlGroupSessionCoordinator
- (BOOL)autoJoinMaxRetriesReached;
- (MRDRemoteControlGroupSessionCoordinator)initWithSessionManager:(id)manager eligibilityMonitor:(id)monitor;
- (NSString)description;
- (id)diagnosticDescription;
- (void)clearHostedSessionState;
- (void)clusterController:(id)controller clusterStatusDidChange:(unint64_t)change;
- (void)collectDiagnostic:(id)diagnostic;
- (void)dealloc;
- (void)eligibilityMonitor:(id)monitor eligibilityStatusDidChange:(id)change;
- (void)handleDeviceInfoChangeNotification:(id)notification;
- (void)initializeObserversAndState;
- (void)reevaluateAfterInterval:(double)interval withReason:(id)reason;
- (void)reevaluateSystemStateWithReason:(id)reason;
- (void)refreshASEInfo;
- (void)retryAutoJoin;
- (void)session:(id)session didChangeState:(int64_t)state;
- (void)sessionDidRemoveAllParticipants:(id)participants;
@end

@implementation MRDRemoteControlGroupSessionCoordinator

- (MRDRemoteControlGroupSessionCoordinator)initWithSessionManager:(id)manager eligibilityMonitor:(id)monitor
{
  managerCopy = manager;
  monitorCopy = monitor;
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

    objc_storeStrong(&v9->_sessionManager, manager);
    [monitorCopy addObserver:v9];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A2330;
  v5[3] = &unk_1004B6D30;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)retryAutoJoin
{
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A23EC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_async(queue, block);
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
  hostedSessionIdentifier = [(MRDRemoteControlGroupSessionCoordinator *)self hostedSessionIdentifier];
  rotatingSessionIdentifier = [(MRDRemoteControlGroupSessionCoordinator *)self rotatingSessionIdentifier];
  v7 = [NSNumber numberWithBool:[(MRDRemoteControlGroupSessionCoordinator *)self isThrottled]];
  stringValue = [v7 stringValue];
  v9 = [v3 initWithFormat:@"<%@: hostedSessionIdentifier=%@, rotatingSessionIdentifier=%@, throttled=%@>", v4, hostedSessionIdentifier, rotatingSessionIdentifier, stringValue];

  return v9;
}

- (id)diagnosticDescription
{
  v3 = [NSString alloc];
  v4 = [(MRDRemoteControlGroupSessionCoordinator *)self description];
  eligibilityStatus = [(MRDRemoteControlGroupSessionCoordinator *)self eligibilityStatus];
  v6 = [v3 initWithFormat:@"%@ state=%@>", v4, eligibilityStatus];

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

- (void)handleDeviceInfoChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = MRGetDeviceInfoFromUserInfo();

  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A2894;
  v8[3] = &unk_1004B68F0;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)refreshASEInfo
{
  v3 = +[MRNowPlayingOriginClientManager sharedManager];
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A2A10;
  v5[3] = &unk_1004B9CA8;
  v5[4] = self;
  [v3 resolveActiveSystemEndpointWithType:0 timeout:queue queue:v5 completion:10.0];
}

- (void)reevaluateSystemStateWithReason:(id)reason
{
  reasonCopy = reason;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v89 = reasonCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Re-evaluating because: %{public}@", buf, 0xCu);
  }

  rotatingSessionIdentifier = [(MRDRemoteControlGroupSessionCoordinator *)self rotatingSessionIdentifier];

  if (![(MRDRemoteControlGroupSessionCoordinator *)self isStartingSession]&& ![(MRDRemoteControlGroupSessionCoordinator *)self isJoiningSession]&& ![(MRDRemoteControlGroupSessionCoordinator *)self isThrottled]&& !rotatingSessionIdentifier)
  {
    sessionManager = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
    session = [sessionManager session];

    isHosted = [session isHosted];
    eligibilityStatus = [(MRDRemoteControlGroupSessionCoordinator *)self eligibilityStatus];
    idsAccountIsValid = [eligibilityStatus idsAccountIsValid];
    isManateeEnabled = [eligibilityStatus isManateeEnabled];
    v18 = isManateeEnabled;
    if ((idsAccountIsValid & 1) == 0 && (isHosted & 1) == 0)
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

    if (((isManateeEnabled | isHosted) & 1) == 0)
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

    routeType = [eligibilityStatus routeType];
    routeIsValidForHosting = [eligibilityStatus routeIsValidForHosting];
    v79 = routeIsValidForHosting & idsAccountIsValid & v18;
    [NSNumber numberWithBool:routeIsValidForHosting];
    v22 = v80 = eligibilityStatus;
    v23 = [NSNumber numberWithBool:idsAccountIsValid];
    v24 = [NSNumber numberWithBool:v18];
    v25 = [NSMutableString stringWithFormat:@"validRoute=%@, validIDS=%@, validManatee=%@", v22, v23, v24];

    v26 = [NSNumber numberWithBool:isHosted];
    [v25 appendFormat:@", existingHostedSession=%@", v26];

    v71 = isHosted;
    if (isHosted & 1 | ((v79 & 1) == 0))
    {
      v74 = 1;
      v27 = v80;
    }

    else
    {
      v27 = v80;
      mediaAccountHostingState = [v80 mediaAccountHostingState];
      v74 = mediaAccountHostingState != 6;
      v29 = [NSNumber numberWithBool:mediaAccountHostingState == 6];
      [v25 appendFormat:@", mediaStateValid=%@", v29];
    }

    groupSessionToken = [(MRDeviceInfo *)self->_remoteASEDeviceInfo groupSessionToken];
    v76 = v25;
    if (session)
    {
      v78 = [session isHosted]^ 1;
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

    joinToken = [session joinToken];
    sharedSecret = [joinToken sharedSecret];

    v34 = +[MRSharedSettings currentSettings];
    v35 = 0;
    if ([v34 supportGroupSessionHome] && (v32 & 1) == 0)
    {
      sharedSecret2 = [groupSessionToken sharedSecret];
      v35 = sharedSecret2 != 0;
    }

    v77 = ![(MRDRemoteControlGroupSessionCoordinator *)self _onQueue_autoJoinMaxRetriesReached]&& v35;
    sessionManager2 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
    session2 = [sessionManager2 session];
    identifier = [session2 identifier];
    sessionIdentifier = [groupSessionToken sessionIdentifier];
    v41 = [identifier isEqual:sessionIdentifier];

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
      eligibilityStatus = v80;
      if (v79 & 1 | ((v71 & 1) == 0))
      {
        if (v70 & 1 | ((v77 & 1) == 0))
        {
          if (v77 & 1 | ((v78 & 1) == 0) || !sharedSecret)
          {
            v58 = _MRLogForCategory();
            v54 = v75;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = MRGroupSessionRouteTypeDescription();
              sessionIdentifier2 = [groupSessionToken sessionIdentifier];
              *buf = 138544642;
              *v89 = v59;
              *&v89[8] = 2114;
              v90 = sessionIdentifier2;
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
            *v89 = session;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Leaving remote session: %{public}@", buf, 0xCu);
          }

          [session removeObserver:self];
          sessionManager3 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
          [sessionManager3 leaveRemoteControlGroupSession:session];

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
              wHAIdentifier = [(MRDeviceInfo *)self->_remoteASEDeviceInfo WHAIdentifier];
              autoJoinRetryCount = [(MRDRemoteControlGroupSessionCoordinator *)self autoJoinRetryCount];
              *buf = 138544130;
              *v89 = groupSessionToken;
              *&v89[8] = 2114;
              v90 = wHAIdentifier;
              LOWORD(v91) = 2048;
              *(&v91 + 2) = autoJoinRetryCount;
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
            v65 = groupSessionToken;
            v86 = v65;
            v66 = [v64 initWithTimeout:@"Session auto-join" reason:v85 handler:30.0];
            sessionManager4 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
            v82[0] = _NSConcreteStackBlock;
            v82[1] = 3221225472;
            v82[2] = sub_1000A3E8C;
            v82[3] = &unk_1004B9CF8;
            v82[4] = self;
            v83 = v66;
            v84 = v65;
            v68 = v66;
            [sessionManager4 joinGroupSessionWithToken:v84 completion:v82];

            goto LABEL_45;
          }

          [(MRDRemoteControlGroupSessionCoordinator *)self setAutoJoinRetryCount:0];
          v55 = _MRLogForCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            sessionIdentifier3 = [groupSessionToken sessionIdentifier];
            *buf = 138543618;
            *v89 = session;
            *&v89[8] = 2114;
            v90 = sessionIdentifier3;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Leaving remote session: %{public}@ because auto-joining target session: %{public}@", buf, 0x16u);
          }

          [session removeObserver:self];
          sessionManager5 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
          [sessionManager5 leaveRemoteControlGroupSession:session];

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
      sessionManager6 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
      [sessionManager6 finishRemoteControlGroupSession:session];
    }

    else
    {
      v51 = _MRLogForCategory();
      eligibilityStatus = v80;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Starting group session.", buf, 2u);
      }

      [(MRDRemoteControlGroupSessionCoordinator *)self setStartingSession:1];
      sessionManager6 = [(MRDRemoteControlGroupSessionCoordinator *)self sessionManager];
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_1000A3A74;
      v87[3] = &unk_1004B9CD0;
      v87[4] = self;
      [sessionManager6 startRemoteControlGroupSessionWithRouteType:routeType completion:v87];
    }

    goto LABEL_45;
  }

  session = _MRLogForCategory();
  if (os_log_type_enabled(session, OS_LOG_TYPE_DEFAULT))
  {
    v9 = rotatingSessionIdentifier != 0;
    isStartingSession = [(MRDRemoteControlGroupSessionCoordinator *)self isStartingSession];
    isJoiningSession = [(MRDRemoteControlGroupSessionCoordinator *)self isJoiningSession];
    isThrottled = [(MRDRemoteControlGroupSessionCoordinator *)self isThrottled];
    *buf = 67109888;
    *v89 = isStartingSession;
    *&v89[4] = 1024;
    *&v89[6] = isJoiningSession;
    LOWORD(v90) = 1024;
    *(&v90 + 2) = isThrottled;
    HIWORD(v90) = 1024;
    LODWORD(v91) = v9;
    _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Returning. Rationale: starting=%{BOOL}u, joining=%{BOOL}u, throttled=%{BOOL}u, isRotating=%{BOOL}u.", buf, 0x1Au);
  }

LABEL_48:
}

- (void)reevaluateAfterInterval:(double)interval withReason:(id)reason
{
  reasonCopy = reason;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  if (![(MRDRemoteControlGroupSessionCoordinator *)self isThrottled])
  {
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      intervalCopy = interval;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRemoteControlGroupSessionCoordinator] Applying throttle: %.2f s.", buf, 0xCu);
    }

    [(MRDRemoteControlGroupSessionCoordinator *)self setThrottled:1];
    objc_initWeak(buf, self);
    v9 = dispatch_time(0, (interval * 1000000000.0));
    queue2 = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000A4318;
    v11[3] = &unk_1004B9630;
    objc_copyWeak(&v13, buf);
    v12 = reasonCopy;
    dispatch_after(v9, queue2, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

- (void)clearHostedSessionState
{
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  dispatch_assert_queue_V2(queue);

  [(MRDRemoteControlGroupSessionCoordinator *)self setHostedSessionIdentifier:0];

  [(MRDRemoteControlGroupSessionCoordinator *)self setRotatingSessionIdentifier:0];
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A44A8;
  v7[3] = &unk_1004B68F0;
  v8 = diagnosticCopy;
  selfCopy = self;
  v6 = diagnosticCopy;
  dispatch_async_and_wait(queue, v7);
}

- (void)session:(id)session didChangeState:(int64_t)state
{
  sessionCopy = session;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A45BC;
  block[3] = &unk_1004B6AC0;
  block[4] = self;
  v10 = sessionCopy;
  stateCopy = state;
  v8 = sessionCopy;
  dispatch_async(queue, block);
}

- (void)sessionDidRemoveAllParticipants:(id)participants
{
  participantsCopy = participants;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A4810;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = participantsCopy;
  v6 = participantsCopy;
  dispatch_async(queue, v7);
}

- (void)eligibilityMonitor:(id)monitor eligibilityStatusDidChange:(id)change
{
  changeCopy = change;
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000A49D0;
  v8[3] = &unk_1004B68F0;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

- (void)clusterController:(id)controller clusterStatusDidChange:(unint64_t)change
{
  queue = [(MRDRemoteControlGroupSessionCoordinator *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000A4AA8;
  v7[3] = &unk_1004B7650;
  v7[4] = self;
  v7[5] = change;
  dispatch_async(queue, v7);
}

@end