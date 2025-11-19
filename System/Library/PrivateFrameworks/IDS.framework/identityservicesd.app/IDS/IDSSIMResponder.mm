@interface IDSSIMResponder
- (IDSSIMResponder)initWithAccountController:(id)a3 serviceController:(id)a4 restrictions:(id)a5 registrationController:(id)a6;
- (void)_checkTechChange;
- (void)_enumeratePrimaryAccountsOfType:(int)a3 block:(id)a4;
- (void)handleRegistrationStateChanged:(BOOL)a3;
- (void)handleSIMInserted;
- (void)handleSIMRemoved;
@end

@implementation IDSSIMResponder

- (IDSSIMResponder)initWithAccountController:(id)a3 serviceController:(id)a4 restrictions:(id)a5 registrationController:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSSIMResponder;
  v15 = [(IDSSIMResponder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountController, a3);
    objc_storeStrong(&v16->_serviceController, a4);
    objc_storeStrong(&v16->_restrictions, a5);
    objc_storeStrong(&v16->_registrationController, a6);
  }

  return v16;
}

- (void)_enumeratePrimaryAccountsOfType:(int)a3 block:(id)a4
{
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(IDSSIMResponder *)self accountController];
  v8 = [v7 accounts];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 accountType] == a3)
        {
          v14 = [v13 service];
          v6[2](v6, v13, v14);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_checkTechChange
{
  if (+[IDSRegistrationController validSIMStateForRegistration])
  {
    v3 = +[IMLockdownManager sharedInstance];
    v4 = [v3 isExpired];

    if (v4)
    {
      return;
    }

    v5 = +[FTEntitlementSupport sharedInstance];
    v6 = [v5 faceTimeNonWiFiEntitled];

    if (v6)
    {
      v7 = +[FTDeviceSupport sharedInstance];
      v8 = [v7 isC2KEquipment];

      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v8)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Is CDMA: %@", buf, 0xCu);
      }

      v11 = [(IDSSIMResponder *)self registrationController];
      v12 = [v11 trackedRegistrations];

      v13 = [v12 count];
      v14 = +[IMRGLog registration];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = [v12 count];
          *buf = 67109120;
          LODWORD(v33) = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = v12;
        v17 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v14);
              }

              v21 = *(*(&v27 + 1) + 8 * i);
              if (![(__CFString *)v21 registrationType])
              {
                v22 = [(__CFString *)v21 isCDMA];
                v23 = [v22 intValue];

                v24 = +[IMRGLog registration];
                v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
                if (v23 == v8)
                {
                  if (v25)
                  {
                    *buf = 138412290;
                    v33 = v21;
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "  => Registration matches, not re-registering: %@", buf, 0xCu);
                  }
                }

                else
                {
                  if (v25)
                  {
                    *buf = 138412290;
                    v33 = v21;
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "  => Re-HTTP registering registration: %@", buf, 0xCu);
                  }

                  v24 = +[IDSRegistrationCenter sharedInstance];
                  [v24 sendRegistration:v21];
                }
              }
            }

            v18 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v18);
        }
      }

      else if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => No registrations active", buf, 2u);
      }

      goto LABEL_35;
    }

    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "  => Device is not entitled for this, ignoring tech change";
      goto LABEL_29;
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "SIM Is not ready for registration, ignoring this.";
LABEL_29:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
    }
  }

LABEL_35:
}

- (void)handleSIMInserted
{
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100321390;
  v24[3] = &unk_100BD7428;
  v24[4] = self;
  [(IDSSIMResponder *)self _enumeratePrimaryAccountsOfType:0 block:v24];
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIM Inserted. Checking to see if we need to re-register due to SIM swap.", buf, 2u);
  }

  v4 = +[IMLockdownManager sharedInstance];
  v5 = [v4 isExpired];

  if ((v5 & 1) == 0)
  {
    v6 = [(IDSSIMResponder *)self registrationController];
    v7 = [v6 trackedRegistrations];

    v8 = [v7 count];
    v9 = +[IMRGLog registration];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v7 count];
        *buf = 67109120;
        LODWORD(v26) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v7;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v19 = v7;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (![v16 registrationType])
            {
              v17 = +[IMRGLog registration];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v26 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "  => Re-sending HTTP registration for SMS registration: %@", buf, 0xCu);
              }

              v18 = +[IDSRegistrationCenter sharedInstance];
              [v18 sendRegistration:v16];
            }
          }

          v13 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
        }

        while (v13);
        v7 = v19;
      }
    }

    else if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => No registrations active", buf, 2u);
    }
  }
}

- (void)handleRegistrationStateChanged:(BOOL)a3
{
  [(IDSSIMResponder *)self _checkTechChange];
  if (a3)
  {
    registrationStateChangedDate = self->_registrationStateChangedDate;
    if (registrationStateChangedDate)
    {
      [(NSDate *)registrationStateChangedDate timeIntervalSinceNow];
      if (v6 < 0.0)
      {
        v6 = -v6;
      }

      v7 = v6 <= 86400.0;
    }

    else
    {
      v7 = 0;
    }

    registrationStateChangedCounter = self->_registrationStateChangedCounter;
    v10 = [IDSServerBag sharedInstanceForBagType:0];
    v11 = [v10 objectForKey:@"registration-state-changed-max-count"];

    if (v11)
    {
      v12 = [v11 integerValue];
    }

    else
    {
      v12 = 10;
    }

    if (registrationStateChangedCounter >= v12 && v7)
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100914FF8(v14);
      }
    }

    else
    {
      if (!v7)
      {
        v15 = self->_registrationStateChangedDate;
        self->_registrationStateChangedDate = 0;

        self->_registrationStateChangedCounter = 0;
      }

      *buf = 0;
      v25 = buf;
      v26 = 0x2020000000;
      v27 = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1003217E0;
      v23[3] = &unk_100BD7450;
      v23[4] = self;
      v23[5] = buf;
      [(IDSSIMResponder *)self _enumeratePrimaryAccountsOfType:0 block:v23];
      if (v25[24] == 1)
      {
        v16 = self->_registrationStateChangedDate;
        if (v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = +[NSDate date];
        }

        v18 = self->_registrationStateChangedDate;
        self->_registrationStateChangedDate = v17;

        ++self->_registrationStateChangedCounter;
      }

      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = @"NO";
        v21 = self->_registrationStateChangedDate;
        v22 = self->_registrationStateChangedCounter;
        if (v7)
        {
          v20 = @"YES";
        }

        *v28 = 138412802;
        v29 = v20;
        v30 = 2112;
        v31 = v21;
        v32 = 2048;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Registration state changed processed {withinTimeRange: %@, _registrationStateChangedDate: %@, _registrationStateChangedCounter: %lld}", v28, 0x20u);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Registration state changed but we can't register; not enabling phone number accounts", buf, 2u);
    }
  }
}

- (void)handleSIMRemoved
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIM Removed. Checking to see if we need to re-register due to SIM removal.", buf, 2u);
  }

  v4 = +[IMLockdownManager sharedInstance];
  v5 = [v4 isExpired];

  if ((v5 & 1) == 0)
  {
    v6 = [(IDSSIMResponder *)self registrationController];
    v7 = [v6 trackedRegistrations];

    v8 = [v7 count];
    v9 = +[IMRGLog registration];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [v7 count];
        *buf = 67109120;
        LODWORD(v25) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v7;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v19 = v7;
        v14 = *v21;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v21 != v14)
            {
              objc_enumerationMutation(v9);
            }

            v16 = *(*(&v20 + 1) + 8 * i);
            if (![v16 registrationType])
            {
              v17 = +[IMRGLog registration];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v25 = v16;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "  => Sending HTTP *deregistration* for SMS registration: %@", buf, 0xCu);
              }

              v18 = +[IDSRegistrationCenter sharedInstance];
              [v18 sendDeregistration:v16];
            }
          }

          v13 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
        }

        while (v13);
        v7 = v19;
      }
    }

    else if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => No registrations active", buf, 2u);
    }
  }
}

@end