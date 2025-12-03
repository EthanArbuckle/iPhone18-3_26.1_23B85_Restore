@interface IDSSIMResponder
- (IDSSIMResponder)initWithAccountController:(id)controller serviceController:(id)serviceController restrictions:(id)restrictions registrationController:(id)registrationController;
- (void)_checkTechChange;
- (void)_enumeratePrimaryAccountsOfType:(int)type block:(id)block;
- (void)handleRegistrationStateChanged:(BOOL)changed;
- (void)handleSIMInserted;
- (void)handleSIMRemoved;
@end

@implementation IDSSIMResponder

- (IDSSIMResponder)initWithAccountController:(id)controller serviceController:(id)serviceController restrictions:(id)restrictions registrationController:(id)registrationController
{
  controllerCopy = controller;
  serviceControllerCopy = serviceController;
  restrictionsCopy = restrictions;
  registrationControllerCopy = registrationController;
  v18.receiver = self;
  v18.super_class = IDSSIMResponder;
  v15 = [(IDSSIMResponder *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountController, controller);
    objc_storeStrong(&v16->_serviceController, serviceController);
    objc_storeStrong(&v16->_restrictions, restrictions);
    objc_storeStrong(&v16->_registrationController, registrationController);
  }

  return v16;
}

- (void)_enumeratePrimaryAccountsOfType:(int)type block:(id)block
{
  blockCopy = block;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  accountController = [(IDSSIMResponder *)self accountController];
  accounts = [accountController accounts];

  v9 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(accounts);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 accountType] == type)
        {
          service = [v13 service];
          blockCopy[2](blockCopy, v13, service);
        }
      }

      v10 = [accounts countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)_checkTechChange
{
  if (+[IDSRegistrationController validSIMStateForRegistration])
  {
    v3 = +[IMLockdownManager sharedInstance];
    isExpired = [v3 isExpired];

    if (isExpired)
    {
      return;
    }

    v5 = +[FTEntitlementSupport sharedInstance];
    faceTimeNonWiFiEntitled = [v5 faceTimeNonWiFiEntitled];

    if (faceTimeNonWiFiEntitled)
    {
      v7 = +[FTDeviceSupport sharedInstance];
      isC2KEquipment = [v7 isC2KEquipment];

      v9 = +[IMRGLog registration];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (isC2KEquipment)
        {
          v10 = @"YES";
        }

        *buf = 138412290;
        v33 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Is CDMA: %@", buf, 0xCu);
      }

      registrationController = [(IDSSIMResponder *)self registrationController];
      trackedRegistrations = [registrationController trackedRegistrations];

      v13 = [trackedRegistrations count];
      v14 = +[IMRGLog registration];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (v15)
        {
          v16 = [trackedRegistrations count];
          *buf = 67109120;
          LODWORD(v33) = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = trackedRegistrations;
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
                isCDMA = [(__CFString *)v21 isCDMA];
                intValue = [isCDMA intValue];

                v24 = +[IMRGLog registration];
                v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
                if (intValue == isC2KEquipment)
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

    trackedRegistrations = +[IMRGLog registration];
    if (os_log_type_enabled(trackedRegistrations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "  => Device is not entitled for this, ignoring tech change";
      goto LABEL_29;
    }
  }

  else
  {
    trackedRegistrations = +[IMRGLog registration];
    if (os_log_type_enabled(trackedRegistrations, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = "SIM Is not ready for registration, ignoring this.";
LABEL_29:
      _os_log_impl(&_mh_execute_header, trackedRegistrations, OS_LOG_TYPE_DEFAULT, v26, buf, 2u);
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
  isExpired = [v4 isExpired];

  if ((isExpired & 1) == 0)
  {
    registrationController = [(IDSSIMResponder *)self registrationController];
    trackedRegistrations = [registrationController trackedRegistrations];

    v8 = [trackedRegistrations count];
    v9 = +[IMRGLog registration];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [trackedRegistrations count];
        *buf = 67109120;
        LODWORD(v26) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = trackedRegistrations;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v19 = trackedRegistrations;
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
        trackedRegistrations = v19;
      }
    }

    else if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => No registrations active", buf, 2u);
    }
  }
}

- (void)handleRegistrationStateChanged:(BOOL)changed
{
  [(IDSSIMResponder *)self _checkTechChange];
  if (changed)
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
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 10;
    }

    if (registrationStateChangedCounter >= integerValue && v7)
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
  isExpired = [v4 isExpired];

  if ((isExpired & 1) == 0)
  {
    registrationController = [(IDSSIMResponder *)self registrationController];
    trackedRegistrations = [registrationController trackedRegistrations];

    v8 = [trackedRegistrations count];
    v9 = +[IMRGLog registration];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v11 = [trackedRegistrations count];
        *buf = 67109120;
        LODWORD(v25) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "  => Tracking %d registration(s)", buf, 8u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = trackedRegistrations;
      v12 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v19 = trackedRegistrations;
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
        trackedRegistrations = v19;
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