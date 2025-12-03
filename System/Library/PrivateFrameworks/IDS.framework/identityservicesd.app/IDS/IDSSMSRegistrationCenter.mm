@interface IDSSMSRegistrationCenter
+ (id)sharedInstance;
- (IDSPhoneUserRegistry)phoneUserRegistry;
- (IDSSMSRegistrationCenter)init;
- (IDSSMSRegistrationCenter)initWithRestoreMonitor:(id)monitor systemMonitor:(id)systemMonitor;
- (IDSUserStore)userStore;
- (void)_noteRegistrationAttemptForIdentifier:(id)identifier withRegistrationInfo:(id)info;
- (void)_notifyFailureWithError:(int64_t)error registration:(id)registration identifier:(id)identifier;
- (void)_notifyNeedsNewIdentification;
- (void)_notifySuccess:(id)success token:(id)token identifier:(id)identifier;
- (void)_reportDailyPNRStatusForSimSlot:(unint64_t)slot;
- (void)addListener:(id)listener;
- (void)cancelActionsForRegistrationInfo:(id)info;
- (void)notePhoneNumberRegistrationReset;
- (void)postSMSRegistrationConsentNotificationWithCompletion:(id)completion;
- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier failedIdentificationWithRegistrationReason:(int64_t)reason;
- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier identifiedPhoneNumber:(id)number token:(id)token tokenType:(int64_t)tokenType;
- (void)reportDailyMetric;
- (void)sendRegistration:(id)registration;
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
  registrationConductor = [v2 registrationConductor];
  userStore = [registrationConductor userStore];

  return userStore;
}

- (IDSPhoneUserRegistry)phoneUserRegistry
{
  v2 = +[IDSDaemon sharedInstance];
  registrationConductor = [v2 registrationConductor];
  phoneUserRegistry = [registrationConductor phoneUserRegistry];

  return phoneUserRegistry;
}

- (IDSSMSRegistrationCenter)init
{
  v3 = +[IDSRestoreMonitor sharedInstance];
  v4 = +[IMSystemMonitor sharedInstance];
  v5 = [(IDSSMSRegistrationCenter *)self initWithRestoreMonitor:v3 systemMonitor:v4];

  return v5;
}

- (IDSSMSRegistrationCenter)initWithRestoreMonitor:(id)monitor systemMonitor:(id)systemMonitor
{
  monitorCopy = monitor;
  systemMonitorCopy = systemMonitor;
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

    objc_storeStrong(&v9->_restoreMonitor, monitor);
    objc_storeStrong(&v9->_systemMonitor, systemMonitor);
    v14 = [[IDSRateLimiter alloc] initWithLimit:10 timeLimit:259200.0];
    registrationAttemptRateLimiter = v9->_registrationAttemptRateLimiter;
    v9->_registrationAttemptRateLimiter = v14;
  }

  return v9;
}

- (void)sendRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = [[IDSRegistrationEventTracingAuthenticationEvent alloc] initWithAuthenticationType:@"PhoneAuth"];
  v6 = +[IDSRegistrationEventTracing sharedInstance];
  registrationTraceID = [registrationCopy registrationTraceID];
  [v6 beginEvent:v5 identifier:registrationTraceID];

  if (registrationCopy)
  {
    userUniqueIdentifier = [registrationCopy userUniqueIdentifier];

    if (userUniqueIdentifier)
    {
      if (([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:registrationCopy]& 1) == 0)
      {
        [(NSMutableArray *)self->_registrations addObject:registrationCopy];
        pushHandler = [(IDSSMSRegistrationCenter *)self pushHandler];
        pushToken = [pushHandler pushToken];
        [registrationCopy setPushToken:pushToken];

        userUniqueIdentifier2 = [registrationCopy userUniqueIdentifier];
        v12 = +[IMRGLog sms];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          pushToken2 = [registrationCopy pushToken];
          v19 = 138412802;
          v20 = userUniqueIdentifier2;
          v21 = 2112;
          v22 = registrationCopy;
          v23 = 2112;
          v24 = pushToken2;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Calling into Phone User Registry to start Phone Number Validation Request. { uniqueIdentifier: %@, registration: %@, pushToken: %@ }", &v19, 0x20u);
        }

        phoneUserRegistry = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
        [phoneUserRegistry addListener:self];

        v15 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:userUniqueIdentifier2];
        v16 = +[IDSRegistrationEventTracing sharedInstance];
        registrationTraceID2 = [registrationCopy registrationTraceID];
        [v16 beginEvent:v15 identifier:registrationTraceID2];

        phoneUserRegistry2 = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
        [phoneUserRegistry2 requestPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:userUniqueIdentifier2 requestOption:0];
      }
    }
  }
}

- (void)cancelActionsForRegistrationInfo:(id)info
{
  infoCopy = info;
  if ([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:?])
  {
    [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:infoCopy];
    [(IDSSMSRegistrationCenter *)self _notifyFailureWithError:0 registration:infoCopy identifier:0];
    phoneUserRegistry = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
    userUniqueIdentifier = [infoCopy userUniqueIdentifier];
    [phoneUserRegistry cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:userUniqueIdentifier];
  }
}

- (void)reportDailyMetric
{
  [(IDSSMSRegistrationCenter *)self _reportDailyPNRStatusForSimSlot:0];

  [(IDSSMSRegistrationCenter *)self _reportDailyPNRStatusForSimSlot:1];
}

- (void)_reportDailyPNRStatusForSimSlot:(unint64_t)slot
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

        if ([*(*(&v32 + 1) + 8 * v9) slot] == slot)
        {

          v11 = [IDSPersistentMap alloc];
          slot = [NSString stringWithFormat:@"com.apple.identityservices.dailyPNRData.%lu", slot];
          v36[0] = objc_opt_class();
          v36[1] = objc_opt_class();
          v13 = [NSArray arrayWithObjects:v36 count:2];
          v14 = [NSSet setWithArray:v13];
          v10 = [(IDSPersistentMap *)v11 initWithIdentifier:slot versionNumber:0 decodableClasses:v14 migrationBlock:0];

          copyDictionaryRepresentation = [v10 copyDictionaryRepresentation];
          v16 = +[IDSCTAdapter sharedInstance];
          hasMultipleSIMs = [v16 hasMultipleSIMs];

          v18 = [copyDictionaryRepresentation objectForKey:IDSPNRRegStatusMetricPNRdKey];
          bOOLValue = [v18 BOOLValue];

          v20 = [copyDictionaryRepresentation objectForKey:IDSPNRRegStatusMetricPNRTimestampKey];
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

          v27 = [copyDictionaryRepresentation objectForKey:IDSPNRRegStatusMetricPNRMechanismKey];
          v28 = 0;
          if (v26 <= 86400.0 && bOOLValue != 0)
          {
            v28 = [copyDictionaryRepresentation objectForKey:IDSPNRRegStatusMetricPNRErrorCodeKey];
          }

          v30 = [[IDSRegistrationDailyPNRStatusMetric alloc] initWithPNRCurrentlyRegistered:bOOLValue pnrRegisteredToday:v26 <= 86400.0 pnrMechanism:v27 errorCode:v28 hasMultipleSIMs:hasMultipleSIMs];
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
    slotCopy = slot;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No sim present in slot, not reporting anything. { simSlot: %lu }", buf, 0xCu);
  }

LABEL_20:
}

- (void)notePhoneNumberRegistrationReset
{
  phoneUserRegistry = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [phoneUserRegistry notePhoneNumberRegistrationReset];
}

- (void)_noteRegistrationAttemptForIdentifier:(id)identifier withRegistrationInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v8 = +[IMRGLog sms];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v13 = identifierCopy;
    v14 = 2048;
    registrationStatus = [infoCopy registrationStatus];
    v16 = 1024;
    registrationType = [infoCopy registrationType];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Noting registration attempt for user identifier {%@} with current registration state {%ld} of type {%d}", buf, 0x1Cu);
  }

  [(IDSRateLimiter *)self->_registrationAttemptRateLimiter noteItem:identifierCopy];
  if (+[IDSAutoBugCapture isSupported]&& ([(IDSRateLimiter *)self->_registrationAttemptRateLimiter underLimitForItem:identifierCopy]& 1) == 0)
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Registration attempted exceeded for user identifier {%@} with current registration state {%ld} of type {%d}", identifierCopy, [infoCopy registrationStatus], objc_msgSend(infoCopy, "registrationType"));
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1004931AC;
    v11 = v10[3] = &unk_100BD9500;
    v9 = v11;
    [IDSAutoBugCapture triggerCaptureWithEvent:205 context:v9 completion:v10];
    [(IDSRateLimiter *)self->_registrationAttemptRateLimiter clearItem:identifierCopy];
  }
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
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

    [(NSMutableArray *)handlers addObject:listenerCopy];
  }
}

- (void)_notifyFailureWithError:(int64_t)error registration:(id)registration identifier:(id)identifier
{
  registrationCopy = registration;
  identifierCopy = identifier;
  phoneUserRegistry = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [phoneUserRegistry cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:identifierCopy];

  if (!registrationCopy || ([(NSMutableArray *)self->_registrations containsObjectIdenticalTo:registrationCopy]& 1) == 0)
  {
    v28 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:identifierCopy];
    v9 = +[IDSRegistrationEventTracing sharedInstance];
    v10 = [NSError errorWithDomain:@"IDSSMSRegistrationCenterError" code:error userInfo:0];
    [v9 endEvent:v28 identifier:identifierCopy error:v10];

    if (registrationCopy)
    {
      v11 = registrationCopy;
      [(NSMutableArray *)self->_registrations removeObjectIdenticalTo:v11];
      [v11 setRegistrationStatus:-1];
      _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = _copyForEnumerating;
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
              [v16 center:self failedIdentification:v11 error:error];
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
            userUniqueIdentifier = [v19 userUniqueIdentifier];
            v21 = [userUniqueIdentifier isEqualToString:identifierCopy];

            if (v21)
            {
              [v19 setRegistrationStatus:-1];
              _copyForEnumerating2 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v23 = _copyForEnumerating2;
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
                      [v27 center:self failedIdentification:v19 error:error];
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

- (void)_notifySuccess:(id)success token:(id)token identifier:(id)identifier
{
  successCopy = success;
  tokenCopy = token;
  identifierCopy = identifier;
  phoneUserRegistry = [(IDSSMSRegistrationCenter *)self phoneUserRegistry];
  [phoneUserRegistry cancelPhoneNumberIdentificationForServiceType:1 withUniqueIdentifier:identifierCopy];

  v39 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_registrations count])
  {
    v11 = +[IDSPACStateTracker sharedInstance];
    [v11 notePNRSuccess];

    v42 = [[IDSRegistrationEventTracingPNREvent alloc] initWithSimUniqueIdentifier:identifierCopy];
    v12 = +[IDSRegistrationEventTracing sharedInstance];
    [v12 endEvent:v42 identifier:identifierCopy error:0];

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
          userUniqueIdentifier = [v17 userUniqueIdentifier];
          v19 = [userUniqueIdentifier isEqualToString:identifierCopy];

          if (v19)
          {
            [v17 setAuthenticationCert:0];
            v20 = +[IDSPACStateTracker sharedInstance];
            [v20 notePhoneAuthCertLost:7];

            [v17 setPhoneNumber:successCopy];
            [v17 setMainID:successCopy];
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

            _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v27 = _copyForEnumerating;
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
                    [v32 center:self succeededIdentification:v26 phoneNumber:successCopy token:tokenCopy];
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
    _copyForEnumerating2 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = _copyForEnumerating2;
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
            [v37 center:self succeededIdentification:0 phoneNumber:successCopy token:tokenCopy];
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
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = _copyForEnumerating;
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

- (void)postSMSRegistrationConsentNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
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

        serviceType = [*(*(&v22 + 1) + 8 * i) serviceType];
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
  v21 = completionCopy;
  v19 = completionCopy;
  [v18 addUserNotification:v17 listener:0 completionHandler:v20];
}

- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier identifiedPhoneNumber:(id)number token:(id)token tokenType:(int64_t)tokenType
{
  tokenCopy = token;
  numberCopy = number;
  identifierCopy = identifier;
  registrationReasonTracker = [(IDSSMSRegistrationCenter *)self registrationReasonTracker];
  [registrationReasonTracker clearPNRReasonForUserUniqueIdentifier:identifierCopy];

  [(IDSSMSRegistrationCenter *)self _notifySuccess:numberCopy token:tokenCopy identifier:identifierCopy];
}

- (void)registry:(id)registry serviceType:(int64_t)type identifier:(id)identifier failedIdentificationWithRegistrationReason:(int64_t)reason
{
  identifierCopy = identifier;
  registrationReasonTracker = [(IDSSMSRegistrationCenter *)self registrationReasonTracker];
  [registrationReasonTracker clearPNRReasonForUserUniqueIdentifier:identifierCopy];

  [(IDSSMSRegistrationCenter *)self _notifyFailureWithError:reason registration:0 identifier:identifierCopy];
}

@end