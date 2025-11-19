@interface IDSSMSRegistrationCenter
+ (id)sharedInstance;
- (IDSPhoneUserRegistry)phoneUserRegistry;
- (IDSSMSRegistrationCenter)init;
- (IDSSMSRegistrationCenter)initWithRestoreMonitor:(id)a3 systemMonitor:(id)a4;
- (IDSUserStore)userStore;
- (void)_noteRegistrationAttemptForIdentifier:(id)a3 withRegistrationInfo:(id)a4;
- (void)_notifyFailureWithError:(int64_t)a3 registration:(id)a4 identifier:(id)a5;
- (void)_notifyNeedsNewIdentification;
- (void)_notifySuccess:(id)a3 token:(id)a4 identifier:(id)a5;
- (void)_reportDailyPNRStatusForSimSlot:(unint64_t)a3;
- (void)addListener:(id)a3;
- (void)cancelActionsForRegistrationInfo:(id)a3;
- (void)notePhoneNumberRegistrationReset;
- (void)postSMSRegistrationConsentNotificationWithCompletion:(id)a3;
- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 failedIdentificationWithRegistrationReason:(int64_t)a6;
- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 identifiedPhoneNumber:(id)a6 token:(id)a7 tokenType:(int64_t)a8;
- (void)reportDailyMetric;
- (void)sendRegistration:(id)a3;
@end

@implementation IDSSMSRegistrationCenter

+ (id)sharedInstance
{
  if (qword_100CBD460 != -1)
  {
    sub_100920D88();
  }

  v3 = qword_100CBD468;

  return v3;
}

- (IDSUserStore)userStore
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];
  v4 = [v3 userStore];

  return v4;
}

- (IDSPhoneUserRegistry)phoneUserRegistry
{
  v2 = +[IDSDaemon sharedInstance];
  v3 = [v2 registrationConductor];
  v4 = [v3 phoneUserRegistry];

  return v4;
}

- (IDSSMSRegistrationCenter)init
{
  v3 = +[IDSRestoreMonitor sharedInstance];
  v4 = +[IMSystemMonitor sharedInstance];
  v5 = [(IDSSMSRegistrationCenter *)self initWithRestoreMonitor:v3 systemMonitor:v4];

  return v5;
}

- (IDSSMSRegistrationCenter)initWithRestoreMonitor:(id)a3 systemMonitor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = IDSSMSRegistrationCenter;
  v9 = [(IDSSMSRegistrationCenter *)&v17 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableArray);
    registrations = v9->_registrations;
    v9->_registrations = v10;

    v12 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    pushHandler = v9->_pushHandler;
    v9->_pushHandler = v12;

    objc_storeStrong(&v9->_restoreMonitor, a3);
    objc_storeStrong(&v9->_systemMonitor, a4);
    v14 = [[IDSRateLimiter alloc] initWithLimit:10 timeLimit:259200.0];
    registrationAttemptRateLimiter = v9->_registrationAttemptRateLimiter;
    v9->_registrationAttemptRateLimiter = v14;
  }

  return v9;
}

- (void)sendRegistration:(id)a3
{
  v4 = a3;
  v5 = [[IDSRegistrationEventTracingAuthenticationEvent alloc] initWithAuthenticationType:@"PhoneAuth"];
  v6 = +[IDSRegistrationEventTracing sharedInstance];
  v7 = [v4 registrationTraceID];
  [v6 beginEvent:v5 identifier:v7];

  if (v4)
  {
    v8 = [v4 userUniqueIdentifier];

    if (v8)
    {
      if (([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:v4]& 1) == 0)
      {
        [(NSMutableArray *)self->_registrations addObject:v4];
        v9 = [(IDSSMSRegistrationCenter *)self pushHandler];
        v10 = [v9 pushToken];
        [v4 setPushToken:v10];

        v11 = [v4 userUniqueIdentifier];
        v12 = +[IMRGLog sms];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v4 pushToken];
          v19 = 138412802;
          v20 = v11;
          v21 = 2112;
          v22 = v4;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling into Phone User Registry to start Phone Number Validation Request. { uniqueIdentifier: %@, registration: %@, pushToken: %@ }", &v19, 0x20u);
        }

        v14 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
        [v14 addListener:self];

        v15 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:v11];
        v16 = +[IDSRegistrationEventTracing sharedInstance];
        v17 = [v4 registrationTraceID];
        [v16 beginEvent:v15 identifier:v17];

        v18 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
        [v18 requestPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:v11 requestOption:0];
      }
    }
  }
}

- (void)cancelActionsForRegistrationInfo:(id)a3
{
  v6 = a3;
  if ([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:?])
  {
    [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:v6];
    [(IDSSMSRegistrationCenter *)self _notifyFailureWithError:0 registration:v6 identifier:0];
    v4 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
    v5 = [v6 userUniqueIdentifier];
    [v4 cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:v5];
  }
}

- (void)reportDailyMetric
{
  [(IDSSMSRegistrationCenter *)self _reportDailyPNRStatusForSimSlot:0];

  [(IDSSMSRegistrationCenter *)self _reportDailyPNRStatusForSimSlot:1];
}

- (void)_reportDailyPNRStatusForSimSlot:(unint64_t)a3
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = +[IDSCTAdapter sharedInstance];
  v5 = [v4 currentSIMsWithError:0];

  v6 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v32 + 1) + 8 * v9) slot] == a3)
        {

          v11 = [IDSPersistentMap alloc];
          v12 = [NSString stringWithFormat:@"com.apple.identityservices.dailyPNRData.%lu", a3];
          v36[0] = objc_opt_class();
          v36[1] = objc_opt_class();
          v13 = [NSArray arrayWithObjects:v36 count:2];
          v14 = [NSSet setWithArray:v13];
          v10 = [(IDSPersistentMap *)v11 initWithIdentifier:v12 versionNumber:0 decodableClasses:v14 migrationBlock:0];

          v15 = [v10 copyDictionaryRepresentation];
          v16 = +[IDSCTAdapter sharedInstance];
          v17 = [v16 hasMultipleSIMs];

          v18 = [v15 objectForKey:IDSPNRRegStatusMetricPNRdKey];
          v19 = [v18 BOOLValue];

          v20 = [v15 objectForKey:IDSPNRRegStatusMetricPNRTimestampKey];
          [v20 doubleValue];
          v22 = v21;

          v23 = +[IDSCurrentServerTime sharedInstance];
          [v23 currentServerTimeInterval];
          v25 = v24;

          if (v25 - v22 >= 0.0)
          {
            v26 = v25 - v22;
          }

          else
          {
            v26 = -(v25 - v22);
          }

          v27 = [v15 objectForKey:IDSPNRRegStatusMetricPNRMechanismKey];
          v28 = 0;
          if (v26 <= 86400.0 && v19 != 0)
          {
            v28 = [v15 objectForKey:IDSPNRRegStatusMetricPNRErrorCodeKey];
          }

          v30 = [[IDSRegistrationDailyPNRStatusMetric alloc] initWithPNRCurrentlyRegistered:v19 pnrRegisteredToday:v26 <= 86400.0 pnrMechanism:v27 errorCode:v28 hasMultipleSIMs:v17];
          v31 = +[IDSCoreAnalyticsLogger defaultLogger];
          [v31 logMetric:v30];

          goto LABEL_20;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = +[IMRGLog sms];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No sim present in slot, not reporting anything. { simSlot: %lu }", buf, 0xCu);
  }

LABEL_20:
}

- (void)notePhoneNumberRegistrationReset
{
  v2 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [v2 notePhoneNumberRegistrationReset];
}

- (void)_noteRegistrationAttemptForIdentifier:(id)a3 withRegistrationInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = [v7 registrationStatus];
    v16 = 1024;
    v17 = [v7 registrationType];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Noting registration attempt for user identifier {%@} with current registration state {%ld} of type {%d}", buf, 0x1Cu);
  }

  [(IDSRateLimiter *)self->_registrationAttemptRateLimiter noteItem:v6];
  if (+[IDSAutoBugCapture isSupported]&& ([(IDSRateLimiter *)self->_registrationAttemptRateLimiter underLimitForItem:v6]& 1) == 0)
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Registration attempted exceeded for user identifier {%@} with current registration state {%ld} of type {%d}", v6, [v7 registrationStatus], objc_msgSend(v7, "registrationType"));
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1004931AC;
    v11 = v10[3] = &unk_100BD9500;
    v9 = v11;
    [IDSAutoBugCapture triggerCaptureWithEvent:205 context:v9 completion:v10];
    [(IDSRateLimiter *)self->_registrationAttemptRateLimiter clearItem:v6];
  }
}

- (void)addListener:(id)a3
{
  v7 = a3;
  if (([(NSMutableArray *)self->_handlers containsObjectIdenticalTo:?]& 1) == 0)
  {
    handlers = self->_handlers;
    if (!handlers)
    {
      v5 = +[NSMutableArray nonRetainingArray];
      v6 = self->_handlers;
      self->_handlers = v5;

      handlers = self->_handlers;
    }

    [(NSMutableArray *)handlers addObject:v7];
  }
}

- (void)_notifyFailureWithError:(int64_t)a3 registration:(id)a4 identifier:(id)a5
{
  v29 = a4;
  v31 = a5;
  v8 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [v8 cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:v31];

  if (!v29 || ([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:v29]& 1) == 0)
  {
    v28 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:v31];
    v9 = +[IDSRegistrationEventTracing sharedInstance];
    v10 = [NSError errorWithDomain:@"IDSSMSRegistrationCenterError" code:a3 userInfo:0];
    [v9 endEvent:v28 identifier:v31 error:v10];

    if (v29)
    {
      v11 = v29;
      [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:v11];
      [v11 setRegistrationStatus:-1];
      v12 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v12;
      v13 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v13)
      {
        v14 = *v43;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v43 != v14)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v42 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v16 center:self failedIdentification:v11 error:a3];
            }
          }

          v13 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v17 = [(NSMutableArray *)self->_registrations copy];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      obj = v17;
      v32 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
      if (v32)
      {
        v30 = *v39;
        do
        {
          for (j = 0; j != v32; j = j + 1)
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v38 + 1) + 8 * j);
            v20 = [v19 userUniqueIdentifier];
            v21 = [v20 isEqualToString:v31];

            if (v21)
            {
              [v19 setRegistrationStatus:-1];
              v22 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v23 = v22;
              v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v24)
              {
                v25 = *v35;
                do
                {
                  for (k = 0; k != v24; k = k + 1)
                  {
                    if (*v35 != v25)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v27 = *(*(&v34 + 1) + 8 * k);
                    if (objc_opt_respondsToSelector())
                    {
                      [v27 center:self failedIdentification:v19 error:a3];
                    }
                  }

                  v24 = [v23 countByEnumeratingWithState:&v34 objects:v46 count:16];
                }

                while (v24);
              }

              [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:v19];
            }
          }

          v32 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        }

        while (v32);
      }

      v11 = obj;
    }
  }
}

- (void)_notifySuccess:(id)a3 token:(id)a4 identifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v44 = a5;
  v10 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [v10 cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:v44];

  v39 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_registrations count])
  {
    v11 = +[IDSPACStateTracker sharedInstance];
    [v11 notePNRSuccess];

    v42 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:v44];
    v12 = +[IDSRegistrationEventTracing sharedInstance];
    [v12 endEvent:v42 identifier:v44 error:0];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v13 = self->_registrations;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v14)
    {
      v15 = *v59;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v59 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v58 + 1) + 8 * i);
          v18 = [v17 userUniqueIdentifier];
          v19 = [v18 isEqualToString:v44];

          if (v19)
          {
            [v17 setAuthenticationCert:0];
            v20 = +[IDSPACStateTracker sharedInstance];
            [v20 notePhoneAuthCertLost:7];

            [v17 setPhoneNumber:v8];
            [v17 setMainID:v8];
            [v17 setRegistrationCert:0];
            [v17 setUris:0];
            v21 = +[IMRGLog sms];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v66 = v17;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updating registration info: %@", buf, 0xCu);
            }

            [v39 addObject:v17];
          }
        }

        v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v14);
    }

    v22 = v42;
  }

  else
  {
    v22 = +[IMRGLog sms];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "No registration info present, we must have been cancelled", buf, 2u);
    }
  }

  if ([(NSMutableArray *)self->_registrations count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = v39;
    v43 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v43)
    {
      v40 = *v51;
      *&v23 = 138412290;
      v38 = v23;
      do
      {
        v24 = 0;
        do
        {
          if (*v51 != v40)
          {
            v25 = v24;
            objc_enumerationMutation(obj);
            v24 = v25;
          }

          v45 = v24;
          v26 = *(*(&v50 + 1) + 8 * v24);
          [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:v26];
          if ([v26 isDisabled])
          {
            v27 = +[IMRGLog registration];
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = v38;
              v66 = v26;
              _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Not reflecting back succeeded identification, registration is disabled: %@", buf, 0xCu);
            }
          }

          else
          {
            if ([v26 registrationStatus] <= 5)
            {
              [v26 setRegistrationStatus:6];
            }

            v28 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v27 = v28;
            v29 = [v27 countByEnumeratingWithState:&v46 objects:v62 count:16];
            if (v29)
            {
              v30 = *v47;
              do
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v47 != v30)
                  {
                    objc_enumerationMutation(v27);
                  }

                  v32 = *(*(&v46 + 1) + 8 * j);
                  if (objc_opt_respondsToSelector())
                  {
                    [v32 center:self succeededIdentification:v26 phoneNumber:v8 token:v9];
                  }
                }

                v29 = [v27 countByEnumeratingWithState:&v46 objects:v62 count:16];
              }

              while (v29);
            }
          }

          v24 = v45 + 1;
        }

        while ((v45 + 1) != v43);
        v43 = [obj countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v43);
    }
  }

  else
  {
    v33 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = v33;
    v34 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
    if (v34)
    {
      v35 = *v55;
      do
      {
        for (k = 0; k != v34; k = k + 1)
        {
          if (*v55 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v37 = *(*(&v54 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v37 center:self succeededIdentification:0 phoneNumber:v8 token:v9];
          }
        }

        v34 = [obj countByEnumeratingWithState:&v54 objects:v64 count:16];
      }

      while (v34);
    }
  }
}

- (void)_notifyNeedsNewIdentification
{
  v3 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 centerNeedsNewIdentification:{self, v9}];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)postSMSRegistrationConsentNotificationWithCompletion:(id)a3
{
  v4 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_registrations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v23;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) serviceType];
        if ((IDSIsFaceTimeRegistrationServiceType() & 1) == 0 && (IDSIsCallingRegistrationServiceType() & 1) == 0)
        {
          v8 |= IDSIsiMessageRegistrationServiceType();
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = IMLocalizedStringFromTableInBundle();
  v14 = IMLocalizedStringFromTableInBundle();
  v15 = IMLocalizedStringFromTableInBundle();
  v16 = IMLocalizedStringFromTableInBundle();
  v17 = [IMUserNotification userNotificationWithIdentifier:@"Registration" title:v13 message:v14 defaultButton:v15 defaultButtonStyle:0 alternateButton:v16 alternateButtonStyle:0 otherButton:0 otherButtonStyle:0];
  [v17 setRequireUserInteraction:1];
  v18 = +[IMUserNotificationCenter sharedInstance];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100494338;
  v20[3] = &unk_100BDD640;
  v21 = v4;
  v19 = v4;
  [v18 addUserNotification:v17 listener:0 completionHandler:v20];
}

- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 identifiedPhoneNumber:(id)a6 token:(id)a7 tokenType:(int64_t)a8
{
  v11 = a7;
  v12 = a6;
  v14 = a5;
  v13 = [(IDSSMSRegistrationCenter *)self registrationReasonTracker];
  [v13 clearPNRReasonForUserUniqueIdentifier:v14];

  [(IDSSMSRegistrationCenter *)self _notifySuccess:v12 token:v11 identifier:v14];
}

- (void)registry:(id)a3 serviceType:(int64_t)a4 identifier:(id)a5 failedIdentificationWithRegistrationReason:(int64_t)a6
{
  v9 = a5;
  v8 = [(IDSSMSRegistrationCenter *)self registrationReasonTracker];
  [v8 clearPNRReasonForUserUniqueIdentifier:v9];

  [(IDSSMSRegistrationCenter *)self _notifyFailureWithError:a6 registration:0 identifier:v9];
}

@end