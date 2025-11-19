@interface IDSDeviceHeartbeatCenter
+ (id)sharedInstance;
- (BOOL)_fetchExpiryDatesIfNecessary;
- (BOOL)_scheduleDependentRegistrations;
- (IDSDeviceHeartbeatCenter)init;
- (id)_getNextExpirationDate;
- (void)_heartBeat;
- (void)_heartbeatTimerFiredOnMain;
- (void)_scheduleRescueHeartBeat;
- (void)_updateDependentRegistrationTimerFiredOnMain;
- (void)_updateDependentRegistrations;
- (void)_updateExpiry:(double)a3 forUser:(id)a4;
- (void)accountsChanged;
- (void)dealloc;
- (void)invalidateTimer;
- (void)printInfo;
- (void)resetExpiryForUser:(id)a3;
- (void)setup;
@end

@implementation IDSDeviceHeartbeatCenter

+ (id)sharedInstance
{
  if (qword_100CBCDB0 != -1)
  {
    sub_100914BF0();
  }

  v3 = qword_100CBCDB8;

  return v3;
}

- (void)_heartBeat
{
  if (![(IDSDeviceHeartbeatCenter *)self _scheduleDependentRegistrations])
  {
    v3 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Did not find any date to schedule a heart beat, triggering get dependent request", v5, 2u);
    }

    [(IDSDeviceHeartbeatCenter *)self _scheduleRescueHeartBeat];
    v4 = +[IDSDAccountController sharedInstance];
    [v4 issueGetDependentRequest];
  }
}

- (BOOL)_scheduleDependentRegistrations
{
  v3 = objc_autoreleasePoolPush();
  [(IDSDeviceHeartbeatCenter *)self invalidateTimer];
  v4 = [(IDSDeviceHeartbeatCenter *)self _getNextExpirationDate];
  v5 = v4;
  if (v4)
  {
    [v4 timeIntervalSinceNow];
    v7 = v6;
    v8 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v14 = 134218242;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "_scheduleDependentRegistrations for %.0f - %@", &v14, 0x16u);
    }

    v9 = [IMTimer alloc];
    v10 = im_primary_queue();
    v11 = [v9 initWithTimeInterval:@"com.apple.identityservices.device-hbi" name:0 shouldWake:self target:"_updateDependentRegistrations" selector:0 userInfo:v10 queue:v7];
    getDependentHeartbeatTimer = self->_getDependentHeartbeatTimer;
    self->_getDependentHeartbeatTimer = v11;
  }

  else
  {
    v10 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "We did not find any heartbeat to schedule", &v14, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
  return v5 != 0;
}

- (void)invalidateTimer
{
  [(IMTimer *)self->_getDependentHeartbeatTimer invalidate];
  getDependentHeartbeatTimer = self->_getDependentHeartbeatTimer;
  self->_getDependentHeartbeatTimer = 0;
}

- (id)_getNextExpirationDate
{
  if (IMGetCachedDomainBoolForKey())
  {
    v3 = SecureRandomUInt() % 230 + 70;
    v4 = +[IMRGLog warning];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100914C84();
    }

LABEL_8:

    v5 = [[NSDate alloc] initWithTimeIntervalSinceNow:v3];
    goto LABEL_9;
  }

  v3 = IMGetCachedDomainIntForKey();
  if (v3)
  {
    v4 = +[IMRGLog warning];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_100914C04();
    }

    goto LABEL_8;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [(NSMutableDictionary *)self->_usersToHeartbeatDatesMap allValues];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {

    v10 = 0;
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v22;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      if ((v11 & 1) == 0 || ([*(*(&v21 + 1) + 8 * i) doubleValue], v16 = v15, objc_msgSend(v10, "doubleValue"), v16 < v17))
      {
        v18 = v14;

        v10 = v18;
      }

      v11 = 1;
    }

    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);

  if (!v10)
  {
    goto LABEL_25;
  }

  v19 = [NSDate alloc];
  [v10 doubleValue];
  v20 = [v19 initWithTimeIntervalSince1970:?];
LABEL_26:
  v5 = v20;

LABEL_9:

  return v5;
}

- (IDSDeviceHeartbeatCenter)init
{
  v8.receiver = self;
  v8.super_class = IDSDeviceHeartbeatCenter;
  v2 = [(IDSDeviceHeartbeatCenter *)&v8 init];
  if (v2)
  {
    v3 = +[IMSystemMonitor sharedInstance];
    [v3 addListener:v2];

    getDependentHeartbeatTimer = v2->_getDependentHeartbeatTimer;
    v2->_getDependentHeartbeatTimer = 0;

    v5 = objc_alloc_init(NSMutableDictionary);
    usersToHeartbeatDatesMap = v2->_usersToHeartbeatDatesMap;
    v2->_usersToHeartbeatDatesMap = v5;
  }

  return v2;
}

- (void)setup
{
  if (!self->_isSetup)
  {
    self->_isSetup = 1;
    [(IDSDeviceHeartbeatCenter *)self accountsChanged];
    [(IDSDeviceHeartbeatCenter *)self printInfo];
    [(IDSDeviceHeartbeatCenter *)self _fetchExpiryDatesIfNecessary];

    [(IDSDeviceHeartbeatCenter *)self _cleanupKeychain];
  }
}

- (void)dealloc
{
  v3 = +[IMSystemMonitor sharedInstance];
  [v3 removeListener:self];

  [(IDSDeviceHeartbeatCenter *)self invalidateTimer];
  v4.receiver = self;
  v4.super_class = IDSDeviceHeartbeatCenter;
  [(IDSDeviceHeartbeatCenter *)&v4 dealloc];
}

- (void)printInfo
{
  if (IMShouldLog())
  {
    v3 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Expiration dates per user: ", buf, 2u);
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = [(NSMutableDictionary *)self->_usersToHeartbeatDatesMap allKeys];
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v20;
      *&v6 = 138412546;
      v18 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = +[IMRGLog deviceHeartbeat];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [(NSMutableDictionary *)self->_usersToHeartbeatDatesMap objectForKey:v10];
            [v12 doubleValue];
            v13 = [NSDate dateWithTimeIntervalSince1970:?];
            *buf = v18;
            v24 = v10;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ => %@", buf, 0x16u);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v7);
    }

    v14 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(IDSDeviceHeartbeatCenter *)self _getNextExpirationDate];
      v16 = [(IDSDeviceHeartbeatCenter *)self _getNextExpirationDate];
      [v16 timeIntervalSinceNow];
      *buf = 138412546;
      v24 = v15;
      v25 = 2048;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Next heartbeat date: %@ (in %.0f seconds)", buf, 0x16u);
    }
  }
}

- (void)_updateDependentRegistrationTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030CCF0;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_scheduleRescueHeartBeat
{
  [(IDSDeviceHeartbeatCenter *)self invalidateTimer];
  if ([(NSMutableDictionary *)self->_usersToHeartbeatDatesMap count])
  {
    v3 = [IDSServerBag sharedInstanceForBagType:0];
    v4 = [v3 objectForKey:@"vc-temporary-get-dependent-interval"];

    [v4 doubleValue];
    v6 = v5;

    v7 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_scheduleRescueHeartBeat for %.0f", &v12, 0xCu);
    }

    v8 = [IMTimer alloc];
    v9 = im_primary_queue();
    v10 = [v8 initWithTimeInterval:@"com.apple.identityservices.device-hbi" name:0 shouldWake:self target:"_heartBeat" selector:0 userInfo:v9 queue:v6];
    getDependentHeartbeatTimer = self->_getDependentHeartbeatTimer;
    self->_getDependentHeartbeatTimer = v10;
  }
}

- (void)_heartbeatTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030CEE8;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateDependentRegistrations
{
  [(IDSDeviceHeartbeatCenter *)self _scheduleRescueHeartBeat];
  v2 = +[IDSDAccountController sharedInstance];
  [v2 updateExpiredDependent];

  v3 = +[IMRGLog deviceHeartbeat];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_updateDependentRegistrations fired", v4, 2u);
  }

  if (qword_100CBCDC8 != -1)
  {
    sub_100914D04();
  }

  if (off_100CBCDC0)
  {
    (off_100CBCDC0)(13, @"IdentityServicesDeviceHeartbeat", [NSDictionary dictionaryWithObject:@"sending IdentityServices Device Heartbeat" forKey:@"action"], 0);
  }
}

- (void)resetExpiryForUser:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog deviceHeartbeat];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Resetting expiry for %@", &v6, 0xCu);
  }

  [(IDSDeviceHeartbeatCenter *)self _updateExpiry:v4 forUser:0.0];
}

- (void)_updateExpiry:(double)a3 forUser:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!self->_isSetup)
  {
    v17 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Not setup yet, ignoring expiry update...", &v18, 2u);
    }

    goto LABEL_16;
  }

  if (![v6 length])
  {
    v17 = +[IMRGLog warning];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100914D2C(v7, v17);
    }

LABEL_16:

    goto LABEL_17;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = +[NSDate date];
  [v9 timeIntervalSince1970];
  v11 = v10;

  objc_autoreleasePoolPop(v8);
  if (v11 > a3)
  {
    if (a3 > 2.22044605e-16)
    {
      v12 = +[IMRGLog warning];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138412802;
        v19 = @"DeviceHeartbeat";
        v20 = 2048;
        v21 = 60.0;
        v22 = 2048;
        v23 = a3;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ -  updateExpiry failed sanity check. Returning current date + %f seconds expiry was %f", &v18, 0x20u);
      }
    }

    a3 = v11 + 60.0;
  }

  v13 = +[IMRGLog deviceHeartbeat];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [NSDate dateWithTimeIntervalSince1970:a3];
    v18 = 138412802;
    v19 = v14;
    v20 = 2048;
    v21 = a3;
    v22 = 2112;
    v23 = *&v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting new expiry %@ (seconds %f) for user %@", &v18, 0x20u);
  }

  usersToHeartbeatDatesMap = self->_usersToHeartbeatDatesMap;
  v16 = [NSNumber numberWithDouble:a3];
  [(NSMutableDictionary *)usersToHeartbeatDatesMap setObject:v16 forKey:v7];

  [(IDSDeviceHeartbeatCenter *)self _heartBeat];
LABEL_17:
}

- (void)accountsChanged
{
  isSetup = self->_isSetup;
  v4 = +[IMRGLog deviceHeartbeat];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isSetup)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Accounts changed, updating expiry map", buf, 2u);
    }

    [(NSMutableDictionary *)self->_usersToHeartbeatDatesMap removeAllObjects];
    context = objc_autoreleasePoolPush();
    v6 = +[IDSDAccountController sharedInstance];
    v7 = [v6 accounts];
    v8 = [v7 _copyForEnumerating];

    v9 = objc_alloc_init(NSMutableSet);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v23;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v23 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (([v15 isAdHocAccount] & 1) == 0 && objc_msgSend(v15, "isEnabled") && objc_msgSend(v15, "isRegistered"))
          {
            v16 = [v15 registration];
            v17 = [v16 idsUserID];

            if ([v17 length])
            {
              if (([v9 containsObject:v17] & 1) == 0)
              {
                v18 = [v15 registration];
                v19 = [v18 dependentRegistrationsTTL];

                if (v19)
                {
                  [v19 timeIntervalSince1970];
                  [(IDSDeviceHeartbeatCenter *)self _updateExpiry:v17 forUser:?];
                  [v9 addObject:v17];
                }

                else
                {
                  v20 = +[IMRGLog deviceHeartbeat];
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v27 = v17;
                    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Did not find existing expiry for user %@", buf, 0xCu);
                  }
                }

                goto LABEL_21;
              }
            }

            else
            {
              v19 = +[IMRGLog deviceHeartbeat];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v27 = v15;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Missing userID for account %@, ignoring...", buf, 0xCu);
              }

LABEL_21:
            }

            continue;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v12);
    }

    if (![(NSMutableDictionary *)self->_usersToHeartbeatDatesMap count])
    {
      [(IDSDeviceHeartbeatCenter *)self invalidateTimer];
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not setup yet, ignoring accounts change...", buf, 2u);
    }
  }
}

- (BOOL)_fetchExpiryDatesIfNecessary
{
  if (self->_isSetup)
  {
    v2 = +[IDSDAccountController sharedInstance];
    v3 = [v2 accounts];
    v4 = [v3 _copyForEnumerating];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (!v6)
    {
LABEL_32:
      v19 = v5;
LABEL_33:

      goto LABEL_34;
    }

    v7 = 0;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        if (([v10 isAdHocAccount] & 1) == 0)
        {
          v11 = [v10 registration];
          v12 = [v11 dependentRegistrationResponseCode];
          v13 = [v12 integerValue];
          if ([v10 isEnabled])
          {
            v14 = !v12 || v13 == 0;
            v15 = v14;
            if ([v10 isRegistered] && v15)
            {
              v17 = [v10 registration];
              v18 = [v17 dependentRegistrationsTTL];

              if (v18)
              {

                LOBYTE(v6) = 0;
                goto LABEL_32;
              }

              v7 = 1;
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    if (v7)
    {
      v6 = +[IMRGLog deviceHeartbeat];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "There is one or more valid accounts but none of them has an expiry date, refreshing the entire list!", buf, 2u);
      }

      v19 = +[IDSDAccountController sharedInstance];
      [v19 issueGetDependentRequest];
      LOBYTE(v6) = 1;
      goto LABEL_33;
    }
  }

  else
  {
    v5 = +[IMRGLog deviceHeartbeat];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not setup yet, ignoring _fetchExpiryTimeIfNecessary", buf, 2u);
    }
  }

  LOBYTE(v6) = 0;
LABEL_34:

  return v6;
}

@end