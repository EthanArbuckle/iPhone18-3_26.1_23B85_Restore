@interface IDSHeartbeatCenter
+ (IDSHeartbeatCenter)sharedInstance;
- (BOOL)_registration:(id)_registration needsRenewal:(double *)renewal;
- (IDSHeartbeatCenter)init;
- (double)_nextRegistrationHeartbeatTime;
- (double)registrationHBI;
- (id)_registrationsPendingHeartbeat;
- (void)__reallyUpdateRegistrationHeartbeat;
- (void)_bagReloaded:(id)reloaded;
- (void)_serverHeartBeat:(id)beat;
- (void)_serverHeartBeatTimerHit:(id)hit;
- (void)_serverHeartBeatTimerHitOnMain:(id)main;
- (void)_startRegistrationHeartbeat;
- (void)_stopRegistrationHeartbeat;
- (void)_updateRegistrationHeartbeat;
- (void)addRegistrationInfo:(id)info;
- (void)checkHeartbeat;
- (void)connectionMonitorDidUpdate:(id)update;
- (void)noteRegistrationStateChanged;
- (void)removeRegistrationInfo:(id)info;
- (void)updateHeartbeat;
@end

@implementation IDSHeartbeatCenter

+ (IDSHeartbeatCenter)sharedInstance
{
  if (qword_100CBD0D0 != -1)
  {
    sub_1009179B4();
  }

  v3 = qword_100CBD0D8;

  return v3;
}

- (IDSHeartbeatCenter)init
{
  v11.receiver = self;
  v11.super_class = IDSHeartbeatCenter;
  v2 = [(IDSHeartbeatCenter *)&v11 init];
  if (v2)
  {
    v3 = [CUTDeferredTaskQueue alloc];
    v4 = im_primary_queue();
    v5 = [v3 initWithCapacity:1 queue:v4 block:&stru_100BD8F28];
    reallyUpdateRegistrationHeartbeatTask = v2->_reallyUpdateRegistrationHeartbeatTask;
    v2->_reallyUpdateRegistrationHeartbeatTask = v5;

    v7 = +[IMSystemMonitor sharedInstance];
    [v7 addListener:v2];

    v8 = [[IMNetworkConnectionMonitor alloc] initWithRemoteHost:0 delegate:v2];
    networkConnectionMonitor = v2->_networkConnectionMonitor;
    v2->_networkConnectionMonitor = v8;
  }

  return v2;
}

- (void)_serverHeartBeat:(id)beat
{
  [beat invalidate];
  v4 = +[IDSRegistrationReasonTracker sharedInstance];
  [v4 setMostRecentIDSRegistrationReason:2];

  v5 = +[IDSRegistrationReasonTracker sharedInstance];
  v6 = [IDSRequestReasonContainer scheduledRequestWithSubreason:1 pathID:2];
  [v5 setRegistrationRequestReason:v6];

  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting pending registrations...", buf, 2u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  selfCopy = self;
  _registrationsPendingHeartbeat = [(IDSHeartbeatCenter *)self _registrationsPendingHeartbeat];
  v9 = [_registrationsPendingHeartbeat countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v9)
  {
    v11 = 0;
    goto LABEL_30;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v28;
  do
  {
    v13 = 0;
    do
    {
      if (*v28 != v12)
      {
        objc_enumerationMutation(_registrationsPendingHeartbeat);
      }

      v14 = *(*(&v27 + 1) + 8 * v13);
      if ([v14 registrationType] || +[IDSRegistrationController validSIMStateForRegistration](IDSRegistrationController, "validSIMStateForRegistration"))
      {
        v15 = +[IMRGLog registration];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v32 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "    => %@", buf, 0xCu);
        }

        v16 = +[IDSRegistrationCenter sharedInstance];
        v17 = [v16 sendRegistration:v14];

        if (v17)
        {
          v18 = +[IMRGLog registration];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v19 = v18;
            v20 = "   * sent";
            v21 = 2;
            goto LABEL_21;
          }
        }

        else
        {
          canSendRegistration = [v14 canSendRegistration];
          v18 = +[IMRGLog registration];
          v23 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (canSendRegistration)
          {
            if (v23)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "   * NOT sent, forcing through the registration controller", buf, 2u);
            }

            v18 = +[IDSRegistrationController sharedInstance];
            [v18 registerInfo:v14];
          }

          else if (v23)
          {
            *buf = 138412290;
            v32 = v14;
            v19 = v18;
            v20 = "   * Registration says it can't register, not registering: %@";
            v21 = 12;
LABEL_21:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
          }
        }

        v11 = 1;
        goto LABEL_23;
      }

      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Skipping this registration for heartbeat consideration, it is an SMS one - and the SIM is not present: %@", buf, 0xCu);
      }

LABEL_23:

      v13 = v13 + 1;
    }

    while (v10 != v13);
    v24 = [_registrationsPendingHeartbeat countByEnumeratingWithState:&v27 objects:v33 count:16];
    v10 = v24;
  }

  while (v24);
LABEL_30:

  v25 = +[IMRGLog registration];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "...Done", buf, 2u);
  }

  if (v11)
  {
    if (qword_100CBD0E8 != -1)
    {
      sub_1009179C8();
    }

    if (off_100CBD0E0)
    {
      (off_100CBD0E0)(13, @"IdentityServicesHeartbeat", [NSDictionary dictionaryWithObject:@"sending IdentityServices Heartbeat" forKey:@"action"], 0);
    }
  }

  [(IDSHeartbeatCenter *)selfCopy updateHeartbeat];
}

- (void)_serverHeartBeatTimerHit:(id)hit
{
  hitCopy = hit;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Server heartbeat hit", &v13, 2u);
  }

  networkConnectionMonitor = [(IDSHeartbeatCenter *)self networkConnectionMonitor];
  isImmediatelyReachable = [networkConnectionMonitor isImmediatelyReachable];

  if (isImmediatelyReachable)
  {
    [(IDSHeartbeatCenter *)self setWaitingForNetworkAvailability:0];
    sub_100450174(0, @"Server Heartbeat", @"Need to re-register now", 1109);
    [(IDSHeartbeatCenter *)self _serverHeartBeat:hitCopy];
  }

  else
  {
    [(IDSHeartbeatCenter *)self setWaitingForNetworkAvailability:1];
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = 0x40AC200000000000;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Heartbeat timer fired but the network is not reachable, delaying {interval: %f}", &v13, 0xCu);
    }

    v9 = [IMTimer alloc];
    v10 = im_primary_queue();
    v11 = [v9 initWithTimeInterval:@"com.apple.identityservices.registration-hbi" name:1 shouldWake:self target:"_serverHeartBeatTimerHit:" selector:0 userInfo:v10 queue:3600.0];
    waitingForNetworkTimer = self->_waitingForNetworkTimer;
    self->_waitingForNetworkTimer = v11;
  }
}

- (BOOL)_registration:(id)_registration needsRenewal:(double *)renewal
{
  _registrationCopy = _registration;
  v6 = [IDSHeartbeatCenter registrationHBI]_0();
  registrationDate = [_registrationCopy registrationDate];
  nextRegistrationDate = [_registrationCopy nextRegistrationDate];
  if (registrationDate)
  {
    [registrationDate timeIntervalSinceNow];
    if (nextRegistrationDate)
    {
      [nextRegistrationDate timeIntervalSinceNow];
      v6 = v10;
    }

    else
    {
      v6 = v6 - fabs(v9);
    }
  }

  if ([_registrationCopy registrationType])
  {
    if (([_registrationCopy canSendRegistration] & 1) == 0)
    {
      v11 = +[IMRGLog registration];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v16 = 138412290;
      v17 = *&_registrationCopy;
      v12 = "Skipping this registration for heartbeat consideration, it is an Apple ID one - and it apparently can't register: %@";
      goto LABEL_18;
    }

LABEL_10:
    v13 = v6 < 0.0;
    if (v6 < 0.0)
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134217984;
        v17 = fabs(v6);
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "*************** Heartbeat: We need to register now! {timeToNextRegister: %f} *********************", &v16, 0xCu);
      }
    }

    if (renewal)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (+[IDSRegistrationController validSIMStateForRegistration])
  {
    goto LABEL_10;
  }

  v11 = +[IMRGLog registration];
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_19;
  }

  v16 = 138412290;
  v17 = *&_registrationCopy;
  v12 = "Skipping this registration for heartbeat consideration, it is an SMS one - and the SIM is not present: %@";
LABEL_18:
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
LABEL_19:

  v13 = 0;
  if (renewal)
  {
    if (v6 < 14400.0)
    {
      v6 = 14400.0;
    }

LABEL_22:
    *renewal = v6;
  }

LABEL_23:

  return v13;
}

- (double)registrationHBI
{
  if (IMGetCachedDomainBoolForKey())
  {
    v0 = SecureRandomUInt() % 230 + 70;
    v1 = +[IMRGLog warning];
    if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
    {
      sub_100917AF4(v0, v1);
    }

    return v0;
  }

  else
  {
    v3 = IMGetCachedDomainIntForKey();
    if (v3 < 1)
    {
      v5 = +[IDSServerBag sharedInstance];
      v6 = [v5 objectForKey:@"vc-registration-hbi"];

      if (!v6 || ([v6 doubleValue], v2 = v7, v7 < 580.0))
      {
        v8 = +[IMRGLog warning];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
        {
          sub_1009179F0(v6, v8);
        }

        v2 = 2592000.0;
      }
    }

    else
    {
      v4 = +[IMRGLog warning];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100917A7C(v3, v4);
      }

      return v3;
    }
  }

  return v2;
}

- (double)_nextRegistrationHeartbeatTime
{
  v3 = [IDSHeartbeatCenter registrationHBI]_0();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_registrations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v20;
    *&v6 = 138412290;
    v18 = v6;
    v9 = v3;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [IDSRegistrationCenter sharedInstance:v18];
        v13 = [v12 isRegistering:v11];

        if ((v13 & 1) == 0)
        {
          if ([v11 registrationType])
          {
            if (([v11 canSendRegistration] & 1) == 0)
            {
              v14 = +[IMRGLog registration];
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v18;
                *&buf[4] = v11;
                v15 = v14;
                v16 = "Skipping this registration for heartbeat consideration, it is an Apple ID one - and it apparently can't register: %@";
                goto LABEL_17;
              }

              goto LABEL_18;
            }
          }

          else if (!+[IDSRegistrationController validSIMStateForRegistration])
          {
            v14 = +[IMRGLog registration];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              *&buf[4] = v11;
              v15 = v14;
              v16 = "Skipping this registration for heartbeat consideration, it is an SMS one - and the SIM is not present: %@";
LABEL_17:
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
            }

LABEL_18:

            continue;
          }

          *buf = v3;
          [(IDSHeartbeatCenter *)self _registration:v11 needsRenewal:buf];
          if (*buf < v9)
          {
            v9 = *buf;
          }
        }
      }

      v7 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  v9 = v3;
LABEL_23:

  return fmax(v9, 1.0);
}

- (id)_registrationsPendingHeartbeat
{
  v18 = objc_alloc_init(NSMutableArray);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_registrations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = +[IDSRegistrationCenter sharedInstance];
        v10 = [v9 isRegistering:v8];

        if (v10)
        {
          v11 = +[IMRGLog registration];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v8;
            v12 = v11;
            v13 = "  => *NOT* adding pending registration: %@, we're currently registering";
            goto LABEL_15;
          }

          goto LABEL_16;
        }

        v14 = [(IDSHeartbeatCenter *)self _registration:v8 needsRenewal:0];
        v11 = +[IMRGLog registration];
        v15 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (!v14)
        {
          if (v15)
          {
            *buf = 138412290;
            v24 = v8;
            v12 = v11;
            v13 = "  => *NOT* adding pending registration: %@";
LABEL_15:
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);
          }

LABEL_16:

          continue;
        }

        if (v15)
        {
          *buf = 138412290;
          v24 = v8;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  => adding pending registration: %@", buf, 0xCu);
        }

        [v18 addObject:v8];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Registrations pending heartbeat: %@", buf, 0xCu);
  }

  return v18;
}

- (void)__reallyUpdateRegistrationHeartbeat
{
  self->_pendingHeartbeat = 0;
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Updating registration heartbeat", v4, 2u);
  }

  [(IDSHeartbeatCenter *)self _startRegistrationHeartbeat];
}

- (void)_updateRegistrationHeartbeat
{
  if (!self->_pendingHeartbeat)
  {
    self->_pendingHeartbeat = 1;
    [(CUTDeferredTaskQueue *)self->_reallyUpdateRegistrationHeartbeatTask cancelPendingExecutions];
    [(CUTDeferredTaskQueue *)self->_reallyUpdateRegistrationHeartbeatTask enqueueExecutionWithTarget:self afterDelay:10.0];
    v3 = +[IMRGLog registration];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Posting pending registration heartbeat update", v4, 2u);
    }
  }
}

- (void)_startRegistrationHeartbeat
{
  [(IMTimer *)self->_registrationHeartbeatTimer invalidate];
  registrationHeartbeatTimer = self->_registrationHeartbeatTimer;
  self->_registrationHeartbeatTimer = 0;

  [(IMTimer *)self->_waitingForNetworkTimer invalidate];
  waitingForNetworkTimer = self->_waitingForNetworkTimer;
  self->_waitingForNetworkTimer = 0;

  self->_waitingForNetworkAvailability = 0;
  v5 = [IDSHeartbeatCenter registrationHBI]_0();
  [(IDSHeartbeatCenter *)self _nextRegistrationHeartbeatTime];
  v7 = v6;
  v8 = +[NSNotificationCenter defaultCenter];
  v9 = IDSServerBagFinishedLoadingNotification;
  [v8 removeObserver:self name:IDSServerBagFinishedLoadingNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"_bagReloaded:" name:v9 object:0];

  self->_listeningForRegStateChanges = 1;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Starting registration heartbeat with interval: %f", &v23, 0xCu);
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "                    Time to next registration: %f", &v23, 0xCu);
  }

  v13 = IMGetCachedDomainIntForKey();
  v14 = v13;
  if (v13 <= 0)
  {
    v14 = v7;
  }

  if (v14 <= 0.0)
  {
    v15 = 300.0;
  }

  else
  {
    v15 = v14;
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134217984;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "                  Setting heartbeat timer for: %f", &v23, 0xCu);
  }

  v17 = [NSDate dateWithTimeIntervalSinceNow:v15];
  registrationHeartbeatDate = self->_registrationHeartbeatDate;
  self->_registrationHeartbeatDate = v17;

  v19 = [IMTimer alloc];
  v20 = im_primary_queue();
  v21 = [v19 initWithTimeInterval:@"com.apple.identityservices.registration-hbi" name:1 shouldWake:self target:"_serverHeartBeatTimerHit:" selector:0 userInfo:v20 queue:v15];
  v22 = self->_registrationHeartbeatTimer;
  self->_registrationHeartbeatTimer = v21;
}

- (void)_serverHeartBeatTimerHitOnMain:(id)main
{
  mainCopy = main;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10035CCE4;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = mainCopy;
  v6 = mainCopy;
  dispatch_async(v5, v7);
}

- (void)_stopRegistrationHeartbeat
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping registration heartbeat", v7, 2u);
  }

  [(IMTimer *)self->_registrationHeartbeatTimer invalidate];
  registrationHeartbeatTimer = self->_registrationHeartbeatTimer;
  self->_registrationHeartbeatTimer = 0;

  [(IMTimer *)self->_waitingForNetworkTimer invalidate];
  waitingForNetworkTimer = self->_waitingForNetworkTimer;
  self->_waitingForNetworkTimer = 0;

  self->_waitingForNetworkAvailability = 0;
  self->_pendingHeartbeat = 0;
  [(CUTDeferredTaskQueue *)self->_reallyUpdateRegistrationHeartbeatTask cancelPendingExecutions];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self name:IDSServerBagFinishedLoadingNotification object:0];

  self->_listeningForRegStateChanges = 0;
}

- (void)checkHeartbeat
{
  [(NSDate *)self->_registrationHeartbeatDate timeIntervalSinceNow];
  if (v3 < 0.0)
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "We missed a heartbeat, we should fire", v5, 2u);
    }

    [(IDSHeartbeatCenter *)self _serverHeartBeatTimerHit:self->_registrationHeartbeatTimer];
  }
}

- (void)updateHeartbeat
{
  v3 = [(NSMutableArray *)self->_registrations count];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Updating heartbeats if necessary", v5, 2u);
  }

  if (v3)
  {
    [(IDSHeartbeatCenter *)self _updateRegistrationHeartbeat];
  }

  else
  {
    [(IDSHeartbeatCenter *)self _stopRegistrationHeartbeat];
  }
}

- (void)noteRegistrationStateChanged
{
  if (self->_listeningForRegStateChanges)
  {
    v7 = v2;
    v8 = v3;
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Registration state changed, re-checking registrations", v6, 2u);
    }

    [(IDSHeartbeatCenter *)self _serverHeartBeat:self->_registrationHeartbeatTimer];
  }
}

- (void)_bagReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  if (self->_registrationHeartbeatTimer)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Bag reloaded, checking intervals", buf, 2u);
    }

    v6 = [IDSHeartbeatCenter registrationHBI]_0();
    if (floor(v6) != floor(self->_baseRegistrationHBI))
    {
      self->_baseRegistrationHBI = v6;
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "These differ, reseting timer!", v8, 2u);
      }

      [(IDSHeartbeatCenter *)self _updateRegistrationHeartbeat];
    }
  }
}

- (void)addRegistrationInfo:(id)info
{
  infoCopy = info;
  registrations = self->_registrations;
  if (!registrations)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_registrations;
    self->_registrations = v6;

    registrations = self->_registrations;
  }

  if (([(NSMutableArray *)registrations containsObject:infoCopy]& 1) == 0)
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = infoCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding registration info to heartbeat: %@", &v9, 0xCu);
    }

    [(NSMutableArray *)self->_registrations addObject:infoCopy];
    [(IDSHeartbeatCenter *)self updateHeartbeat];
  }
}

- (void)removeRegistrationInfo:(id)info
{
  infoCopy = info;
  if ([(NSMutableArray *)self->_registrations containsObject:infoCopy])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = infoCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing registration info from heartbeat: %@", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_registrations removeObject:infoCopy];
    [(IDSHeartbeatCenter *)self updateHeartbeat];
  }

  if (![(NSMutableArray *)self->_registrations count])
  {
    registrations = self->_registrations;
    self->_registrations = 0;
  }
}

- (void)connectionMonitorDidUpdate:(id)update
{
  if ([(IDSHeartbeatCenter *)self waitingForNetworkAvailability])
  {
    v4 = +[IMRGLog registration];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Heartbeat: The connection changed while waiting for network availability", v5, 2u);
    }

    [(IDSHeartbeatCenter *)self _serverHeartBeatTimerHit:0];
  }
}

@end