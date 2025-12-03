@interface IDSPhoneUserRegistry
- (BOOL)_hasThresholdReachedForSMSTimeoutForIdentifier:(id)identifier;
- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store;
- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store deviceSupport:(id)support;
- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store server:(id)server phoneNumberValidator:(id)validator deviceSupport:(id)support restoreMonitor:(id)monitor systemMonitor:(id)systemMonitor;
- (__SecKey)phoneAuthenticationCertificatePrivateKey;
- (__SecKey)phoneAuthenticationCertificatePublicKey;
- (id)_identifierForValidator:(id)validator;
- (id)localPhoneAuthenticationCertificates;
- (id)phoneAuthenticationCertificateSigningRequestForUser:(id)user;
- (id)validatorForUniqueID:(id)d withServiceType:(int64_t)type;
- (void)_cleanupUntrackedValidators;
- (void)_clearConsentDenialsForUniqueIdentifier:(id)identifier;
- (void)_notifyFailureWithError:(int64_t)error identifier:(id)identifier;
- (void)_notifySuccess:(id)success token:(id)token tokenType:(int64_t)type identifier:(id)identifier;
- (void)_postPendingConsentAlerts;
- (void)_resetRateLimitersForSMSTimeoutForIdentifier:(id)identifier;
- (void)_sendABCForFailureForIdentifier:(id)identifier WithEvent:(int64_t)event context:(id)context;
- (void)addListener:(id)listener;
- (void)cancelPhoneNumberIdentificationForServiceType:(int64_t)type withUniqueIdentifier:(id)identifier;
- (void)clearConsentDenialsForPhoneUser:(id)user;
- (void)clearCredentialForUserUniqueIdentifier:(id)identifier;
- (void)dealloc;
- (void)notePhoneNumberRegistrationReset;
- (void)requestPhoneNumberIdentificationForServiceType:(int64_t)type withUniqueIdentifier:(id)identifier requestOption:(int64_t)option;
- (void)requestUserConsentToValidatePhoneNumberForCTPNR:(id)r completion:(id)completion;
- (void)setCredential:(id)credential forUserUniqueIdentifier:(id)identifier;
- (void)validator:(id)validator failedIdentificationWithRegistrationError:(int64_t)error;
- (void)validator:(id)validator handleABCEvent:(int64_t)event;
- (void)validator:(id)validator identifiedPhoneNumber:(id)number token:(id)token phoneBookNumber:(id)bookNumber mechanismUsed:(int64_t)used;
@end

@implementation IDSPhoneUserRegistry

- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store
{
  storeCopy = store;
  queueCopy = queue;
  v8 = [[IDSServer alloc] initWithQueue:queueCopy];
  v9 = +[IDSCTAdapter sharedInstance];
  v10 = +[IDSRestoreMonitor sharedInstance];
  v11 = +[IMSystemMonitor sharedInstance];
  v12 = [(IDSPhoneUserRegistry *)self initWithQueue:queueCopy userStore:storeCopy server:v8 phoneNumberValidator:0 deviceSupport:v9 restoreMonitor:v10 systemMonitor:v11];

  return v12;
}

- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store deviceSupport:(id)support
{
  supportCopy = support;
  storeCopy = store;
  queueCopy = queue;
  v11 = [[IDSServer alloc] initWithQueue:queueCopy];
  v12 = +[IDSRestoreMonitor sharedInstance];
  v13 = +[IMSystemMonitor sharedInstance];
  v14 = [(IDSPhoneUserRegistry *)self initWithQueue:queueCopy userStore:storeCopy server:v11 phoneNumberValidator:0 deviceSupport:supportCopy restoreMonitor:v12 systemMonitor:v13];

  return v14;
}

- (IDSPhoneUserRegistry)initWithQueue:(id)queue userStore:(id)store server:(id)server phoneNumberValidator:(id)validator deviceSupport:(id)support restoreMonitor:(id)monitor systemMonitor:(id)systemMonitor
{
  queueCopy = queue;
  storeCopy = store;
  serverCopy = server;
  validatorCopy = validator;
  supportCopy = support;
  monitorCopy = monitor;
  systemMonitorCopy = systemMonitor;
  v38.receiver = self;
  v38.super_class = IDSPhoneUserRegistry;
  v18 = [(IDSPhoneUserRegistry *)&v38 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, queue);
    objc_storeStrong(&v19->_userStore, store);
    objc_storeStrong(&v19->_server, server);
    objc_storeStrong(&v19->_phoneNumberValidator, validator);
    objc_storeStrong(&v19->_deviceSupport, support);
    objc_storeStrong(&v19->_restoreMonitor, monitor);
    objc_storeStrong(&v19->_systemMonitor, systemMonitor);
    v20 = objc_alloc_init(NSMutableSet);
    userRequests = v19->_userRequests;
    v19->_userRequests = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    stateMachineByUserID = v19->_stateMachineByUserID;
    v19->_stateMachineByUserID = v22;

    v24 = objc_alloc_init(NSMutableDictionary);
    preflightStackStore = v19->_preflightStackStore;
    v19->_preflightStackStore = v24;

    v26 = objc_alloc_init(NSMutableSet);
    userConsentDeniedForCTPNR = v19->_userConsentDeniedForCTPNR;
    v19->_userConsentDeniedForCTPNR = v26;

    v28 = [[IDSRateLimiter alloc] initWithLimit:3 timeLimit:10800.0];
    smallWindowSMSTimeoutRateLimiter = v19->_smallWindowSMSTimeoutRateLimiter;
    v19->_smallWindowSMSTimeoutRateLimiter = v28;

    v30 = [[IDSRateLimiter alloc] initWithLimit:10 timeLimit:259200.0];
    wideWindowSMSTimeoutRateLimiter = v19->_wideWindowSMSTimeoutRateLimiter;
    v19->_wideWindowSMSTimeoutRateLimiter = v30;
  }

  return v19;
}

- (void)dealloc
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_stateMachineByUserID allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v9 + 1) + 8 * v7) removeListener:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = IDSPhoneUserRegistry;
  [(IDSPhoneUserRegistry *)&v8 dealloc];
}

- (__SecKey)phoneAuthenticationCertificatePublicKey
{
  queue = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = +[IDSRegistrationKeyManager sharedInstance];
  identityPublicKey = [v3 identityPublicKey];

  return identityPublicKey;
}

- (__SecKey)phoneAuthenticationCertificatePrivateKey
{
  queue = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = +[IDSRegistrationKeyManager sharedInstance];
  identityPrivateKey = [v3 identityPrivateKey];

  return identityPrivateKey;
}

- (id)phoneAuthenticationCertificateSigningRequestForUser:(id)user
{
  userCopy = user;
  queue = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[IDSRegistrationKeyManager sharedInstance];
  phoneNumber = [userCopy phoneNumber];

  v8 = [v6 generateCSRForUserID:phoneNumber];

  return v8;
}

- (id)localPhoneAuthenticationCertificates
{
  queue = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(queue);

  deviceSupport = [(IDSPhoneUserRegistry *)self deviceSupport];
  supportsIdentification = [deviceSupport supportsIdentification];

  if (supportsIdentification)
  {
    userStore = [(IDSPhoneUserRegistry *)self userStore];
    v7 = [userStore usersWithRealm:0];

    v8 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    fetchCurrentPACState2 = v7;
    v10 = [fetchCurrentPACState2 countByEnumeratingWithState:&v32 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(fetchCurrentPACState2);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          userStore2 = [(IDSPhoneUserRegistry *)self userStore];
          v16 = [userStore2 authenticationCertificateForUser:v14];

          if (v16)
          {
            v17 = [[IDSPhoneUserAuthenticationCertificate alloc] initWithPhoneUser:v14 authenticationCertificate:v16];
            [v8 addObject:v17];
          }
        }

        v11 = [fetchCurrentPACState2 countByEnumeratingWithState:&v32 objects:v42 count:16];
      }

      while (v11);
    }

    v18 = +[IMRGLog sms];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Fetched phone auth certificate from phone user registry {userAuthCerts: %@}", buf, 0xCu);
    }

    if ([v8 count])
    {
      fetchCurrentPACState = [v8 copy];
      v20 = [CUTPromise fulfilledPromiseWithValue:fetchCurrentPACState];
    }

    else
    {
      v25 = +[IDSPACStateTracker sharedInstance];
      fetchCurrentPACState = [v25 fetchCurrentPACState];

      v26 = +[IDSPACStateTracker sharedInstance];
      v27 = [v26 underlyingErrorForPACState:fetchCurrentPACState];

      v38 = NSDebugDescriptionErrorKey;
      v39 = @"This device is not currently authenticated for a phone user";
      v28 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v29 = [NSMutableDictionary dictionaryWithDictionary:v28];

      if (v27)
      {
        [v29 setObject:v27 forKeyedSubscript:NSUnderlyingErrorKey];
      }

      v30 = [[NSError alloc] initWithDomain:@"IDSPhoneUserRegistryErrorDomain" code:-5000 userInfo:v29];
      v20 = [CUTPromise failedPromiseWithError:v30];
    }
  }

  else
  {
    v21 = +[IDSPACStateTracker sharedInstance];
    fetchCurrentPACState2 = [v21 fetchCurrentPACState];

    v22 = +[IDSPACStateTracker sharedInstance];
    v8 = [v22 underlyingErrorForPACState:fetchCurrentPACState2];

    v36 = NSDebugDescriptionErrorKey;
    v37 = @"This device does not support phone number authentication";
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    fetchCurrentPACState = [NSMutableDictionary dictionaryWithDictionary:v23];

    if (v8)
    {
      [fetchCurrentPACState setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    v24 = [[NSError alloc] initWithDomain:@"IDSPhoneUserRegistryErrorDomain" code:-1000 userInfo:fetchCurrentPACState];
    v20 = [CUTPromise failedPromiseWithError:v24];
  }

  return v20;
}

- (void)requestPhoneNumberIdentificationForServiceType:(int64_t)type withUniqueIdentifier:(id)identifier requestOption:(int64_t)option
{
  identifierCopy = identifier;
  v9 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:type uniqueIdentifier:identifierCopy];
  [(NSMutableSet *)self->_userRequests addObject:v9];
  userStore = [(IDSPhoneUserRegistry *)self userStore];
  v11 = [userStore userWithUniqueIdentifier:identifierCopy];

  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithInteger:type];
    v14 = [NSNumber numberWithInteger:option];
    v33 = 138412802;
    selfCopy = v13;
    v35 = 2112;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Phone number credential requested. {serviceType: %@, uniqueIdentifier: %@, requestOption: %@", &v33, 0x20u);
  }

  if (v11)
  {
    if (option == 1)
    {
      v15 = +[IMRGLog sms];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Checking cache for valid phone number credential.", &v33, 2u);
      }

      v16 = v11;
      phoneNumber = [v16 phoneNumber];
      userStore2 = [(IDSPhoneUserRegistry *)self userStore];
      v19 = [userStore2 credentialForUser:v16];

      if (phoneNumber)
      {
        if (v19)
        {
          smsSignature = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];

          if (smsSignature)
          {
            if (type != 2)
            {
              v21 = +[IMRGLog sms];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                smsSignature2 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
                v23 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]];
                v33 = 138413058;
                selfCopy = phoneNumber;
                v35 = 2112;
                v36 = smsSignature2;
                v37 = 2112;
                v38 = v23;
                v39 = 2112;
                v40 = v9;
                v24 = "IDS phone service type request found cached PNR credential. { phoneNumber: %@, token: %@, tokenType: %@, requestID: %@ }";
                goto LABEL_33;
              }

LABEL_34:

              smsSignature3 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
              [(IDSPhoneUserRegistry *)self _notifySuccess:phoneNumber token:smsSignature3 tokenType:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed] identifier:v9];

LABEL_35:
              goto LABEL_36;
            }

            if ([(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]== 2 || [(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]== 3)
            {
              v21 = +[IMRGLog sms];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                smsSignature2 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
                v23 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]];
                v33 = 138413058;
                selfCopy = phoneNumber;
                v35 = 2112;
                v36 = smsSignature2;
                v37 = 2112;
                v38 = v23;
                v39 = 2112;
                v40 = v9;
                v24 = "RCS phone service type request found cached PNR credential. { phoneNumber: %@, token: %@, tokenType: %@, requestID: %@ }";
LABEL_33:
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v24, &v33, 0x2Au);

                goto LABEL_34;
              }

              goto LABEL_34;
            }
          }
        }
      }
    }

    v25 = +[IMRGLog sms];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Not using cache for phone number credential.", &v33, 2u);
    }

    v26 = +[IDSCTAdapter sharedInstance];
    v16 = [v26 SIMForIdentifier:identifierCopy];

    if (v16)
    {
      v27 = +[IDSCTAdapter sharedInstance];
      phoneNumber = [v27 CTPNRForSIM:v16];

      userConsentDeniedForCTPNR = self->_userConsentDeniedForCTPNR;
      uniqueIdentifier = [(IDSPhoneUserRegistry *)phoneNumber uniqueIdentifier];
      LODWORD(userConsentDeniedForCTPNR) = [(NSMutableSet *)userConsentDeniedForCTPNR containsObject:uniqueIdentifier];

      if (userConsentDeniedForCTPNR)
      {
        v19 = +[IMRGLog sms];
        if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
        {
          sub_100931D94(self, phoneNumber);
        }
      }

      else
      {
        v19 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v9];
        if (!v19)
        {
          v19 = [[IDSPhoneNumberValidationStateMachine alloc] initWithCTPNR:phoneNumber preflightStackStore:self->_preflightStackStore serviceType:type];
          registrationReasonTracker = [(IDSPhoneUserRegistry *)self registrationReasonTracker];
          -[IDSPhoneNumberValidationStateMachine setReason:](v19, "setReason:", [registrationReasonTracker getPNRReasonForUserUniqueIdentifier:identifierCopy]);

          [(IDSPhoneNumberValidationStateMachine *)v19 addListener:self];
          [(NSMutableDictionary *)self->_stateMachineByUserID setObject:v19 forKeyedSubscript:v9];
          v31 = +[IMRGLog sms];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 138412546;
            selfCopy = self;
            v35 = 2112;
            v36 = identifierCopy;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Adding new validations state machine {self: %@, uniqueIdentifier: %@}", &v33, 0x16u);
          }
        }

        [(IDSPhoneNumberValidationStateMachine *)v19 addPhoneNumberValidationRequestor:self];
      }

      goto LABEL_35;
    }

    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100931E38();
    }
  }

  else
  {
    v16 = +[IMRGLog sms];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100931EB4(type);
    }
  }

LABEL_36:
}

- (void)_cleanupUntrackedValidators
{
  allKeys = [(NSMutableDictionary *)self->_stateMachineByUserID allKeys];
  __imSetFromArray = [allKeys __imSetFromArray];
  v5 = [__imSetFromArray mutableCopy];

  [v5 minusSet:self->_userRequests];
  v6 = +[IMRGLog sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userRequests = self->_userRequests;
    allKeys2 = [(NSMutableDictionary *)self->_stateMachineByUserID allKeys];
    *buf = 138412802;
    selfCopy2 = self;
    v26 = 2112;
    v27 = userRequests;
    v28 = 2112;
    v29 = allKeys2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_cleanupUntrackedValidators {self: %@, remainingUsers: %@, _stateMachineByUserIDKeys: %@}", buf, 0x20u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
    *&v11 = 138412546;
    v18 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v15, v18, v19];
        [v16 removePhoneNumberValidationRequestor:self];
        v17 = +[IMRGLog sms];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v18;
          selfCopy2 = self;
          v26 = 2112;
          v27 = v15;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Removing self as a phone number validation requestor {self: %@, uniqueIdentifier: %@}", buf, 0x16u);
        }

        [v16 invalidate];
        [(NSMutableDictionary *)self->_stateMachineByUserID setObject:0 forKeyedSubscript:v15];
      }

      v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)cancelPhoneNumberIdentificationForServiceType:(int64_t)type withUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:type uniqueIdentifier:identifierCopy];

  [(NSMutableSet *)self->_userRequests removeObject:v7];
  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)setCredential:(id)credential forUserUniqueIdentifier:(id)identifier
{
  credentialCopy = credential;
  identifierCopy = identifier;
  userStore = [(IDSPhoneUserRegistry *)self userStore];
  v9 = [userStore userWithUniqueIdentifier:identifierCopy];

  if (v9)
  {
    v10 = +[IMRGLog sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = identifierCopy;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = credentialCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "External update for credential of phone user. { uniqueIdentifier: %@, user: %@, credential: %@ }", &v12, 0x20u);
    }

    userStore2 = [(IDSPhoneUserRegistry *)self userStore];
    [userStore2 setCredential:credentialCopy forUser:v9];
  }
}

- (void)clearCredentialForUserUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  userStore = [(IDSPhoneUserRegistry *)self userStore];
  v6 = [userStore userWithUniqueIdentifier:identifierCopy];

  if (v6)
  {
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "External clear of credential for user identifier: %@", &v9, 0xCu);
    }

    userStore2 = [(IDSPhoneUserRegistry *)self userStore];
    [userStore2 setCredential:0 forUser:v6];
  }
}

- (void)requestUserConsentToValidatePhoneNumberForCTPNR:(id)r completion:(id)completion
{
  rCopy = r;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = dispatch_time(0, 1000000000);
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006C53AC;
    block[3] = &unk_100BDA5A8;
    v12 = completionCopy;
    block[4] = self;
    v11 = rCopy;
    dispatch_after(v8, v9, block);
  }
}

- (void)_postPendingConsentAlerts
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  cTPNRByConsentCompletion = [(IDSPhoneUserRegistry *)self CTPNRByConsentCompletion];
  v4 = [cTPNRByConsentCompletion countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    *&v5 = 138412290;
    v13 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(cTPNRByConsentCompletion);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = +[IMRGLog sms];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Processing pending SMS alerts after restore {CTPNR: %@}", buf, 0xCu);
        }

        cTPNRByConsentCompletion2 = [(IDSPhoneUserRegistry *)self CTPNRByConsentCompletion];
        v12 = [cTPNRByConsentCompletion2 objectForKey:v9];

        [(IDSPhoneUserRegistry *)self requestUserConsentToValidatePhoneNumberForCTPNR:v9 completion:v12];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [cTPNRByConsentCompletion countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  [(IDSPhoneUserRegistry *)self setCTPNRByConsentCompletion:0];
}

- (void)clearConsentDenialsForPhoneUser:(id)user
{
  uniqueIdentifier = [user uniqueIdentifier];
  [(IDSPhoneUserRegistry *)self _clearConsentDenialsForUniqueIdentifier:uniqueIdentifier];
}

- (void)_clearConsentDenialsForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[IDSCTAdapter sharedInstance];
  v12 = [v5 SIMForIdentifier:identifierCopy];

  v6 = +[IDSCTAdapter sharedInstance];
  v7 = [v6 CTPNRForSIM:v12];

  userConsentDeniedForCTPNR = self->_userConsentDeniedForCTPNR;
  uniqueIdentifier = [v7 uniqueIdentifier];
  LODWORD(userConsentDeniedForCTPNR) = [(NSMutableSet *)userConsentDeniedForCTPNR containsObject:uniqueIdentifier];

  if (userConsentDeniedForCTPNR)
  {
    v10 = self->_userConsentDeniedForCTPNR;
    uniqueIdentifier2 = [v7 uniqueIdentifier];
    [(NSMutableSet *)v10 removeObject:uniqueIdentifier2];
  }
}

- (void)notePhoneNumberRegistrationReset
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_stateMachineByUserID allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7) resetSMSCounter];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(IDSPreflightStackStore *)self->_preflightStackStore clearAllPreflightStacks];
}

- (id)validatorForUniqueID:(id)d withServiceType:(int64_t)type
{
  dCopy = d;
  v7 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:type uniqueIdentifier:dCopy];

  v8 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v7];

  return v8;
}

- (id)_identifierForValidator:(id)validator
{
  validatorCopy = validator;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_stateMachineByUserID;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v10, v14];

        if (v11 == validatorCopy)
        {
          v12 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
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

- (void)_notifyFailureWithError:(int64_t)error identifier:(id)identifier
{
  identifierCopy = identifier;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = _copyForEnumerating;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          serviceType = [identifierCopy serviceType];
          uniqueIdentifier = [identifierCopy uniqueIdentifier];
          [v11 registry:self serviceType:serviceType identifier:uniqueIdentifier failedIdentificationWithRegistrationReason:error];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_notifySuccess:(id)success token:(id)token tokenType:(int64_t)type identifier:(id)identifier
{
  successCopy = success;
  tokenCopy = token;
  identifierCopy = identifier;
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = _copyForEnumerating;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          serviceType = [identifierCopy serviceType];
          uniqueIdentifier = [identifierCopy uniqueIdentifier];
          [v15 registry:self serviceType:serviceType identifier:uniqueIdentifier identifiedPhoneNumber:successCopy token:tokenCopy tokenType:type];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)validator:(id)validator identifiedPhoneNumber:(id)number token:(id)token phoneBookNumber:(id)bookNumber mechanismUsed:(int64_t)used
{
  numberCopy = number;
  tokenCopy = token;
  bookNumberCopy = bookNumber;
  v14 = [(IDSPhoneUserRegistry *)self _identifierForValidator:validator];
  if (v14)
  {
    userStore = [(IDSPhoneUserRegistry *)self userStore];
    uniqueIdentifier = [v14 uniqueIdentifier];
    v17 = [userStore userWithUniqueIdentifier:uniqueIdentifier];

    v18 = [v17 phoneUserWithUpdatedPhoneNumber:numberCopy phoneBookNumber:bookNumberCopy];

    userStore2 = [(IDSPhoneUserRegistry *)self userStore];
    [userStore2 updateUser:v18];

    v20 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:tokenCopy mechanismUsed:used];
    userStore3 = [(IDSPhoneUserRegistry *)self userStore];
    [userStore3 setCredential:v20 forUser:v18];

    [(IDSPhoneUserRegistry *)self _notifySuccess:numberCopy token:tokenCopy tokenType:[(IDSPhoneUserCredential *)v20 mechanismUsed] identifier:v14];
  }

  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)validator:(id)validator failedIdentificationWithRegistrationError:(int64_t)error
{
  v6 = [(IDSPhoneUserRegistry *)self _identifierForValidator:validator];
  [(IDSPhoneUserRegistry *)self _notifyFailureWithError:error identifier:v6];
  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)validator:(id)validator handleABCEvent:(int64_t)event
{
  v6 = [(IDSPhoneUserRegistry *)self _identifierForValidator:validator];
  if (event == 204)
  {
    v14 = v6;
    uniqueIdentifier = [v6 uniqueIdentifier];
    v11 = [(IDSPhoneUserRegistry *)self _hasThresholdReachedForSMSTimeoutForIdentifier:uniqueIdentifier];

    v6 = v14;
    if (!v11)
    {
      goto LABEL_7;
    }

    uniqueIdentifier2 = [v14 uniqueIdentifier];
    v8 = [NSString stringWithFormat:@"PNR Registration failed for Identifier: %@ Failure: SMS timeout threshold reached", uniqueIdentifier2];

    uniqueIdentifier3 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _sendABCForFailureForIdentifier:uniqueIdentifier3 WithEvent:204 context:v8];

    uniqueIdentifier4 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _resetRateLimitersForSMSTimeoutForIdentifier:uniqueIdentifier4];
  }

  else
  {
    if (event != 203)
    {
      goto LABEL_7;
    }

    v14 = v6;
    uniqueIdentifier5 = [v6 uniqueIdentifier];
    v8 = [NSString stringWithFormat:@"PNR Registration failed for Identifier: %@ Failure: SMS quota exhausted", uniqueIdentifier5];

    uniqueIdentifier4 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _sendABCForFailureForIdentifier:uniqueIdentifier4 WithEvent:203 context:v8];
  }

  v6 = v14;
LABEL_7:
}

- (BOOL)_hasThresholdReachedForSMSTimeoutForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(IDSRateLimiter *)self->_smallWindowSMSTimeoutRateLimiter noteItem:identifierCopy];
  [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter noteItem:identifierCopy];
  if ([(IDSRateLimiter *)self->_smallWindowSMSTimeoutRateLimiter underLimitForItem:identifierCopy])
  {
    v5 = [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter underLimitForItem:identifierCopy]^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_resetRateLimitersForSMSTimeoutForIdentifier:(id)identifier
{
  smallWindowSMSTimeoutRateLimiter = self->_smallWindowSMSTimeoutRateLimiter;
  identifierCopy = identifier;
  [(IDSRateLimiter *)smallWindowSMSTimeoutRateLimiter clearItem:identifierCopy];
  [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter clearItem:identifierCopy];
}

- (void)_sendABCForFailureForIdentifier:(id)identifier WithEvent:(int64_t)event context:(id)context
{
  contextCopy = context;
  if (+[IDSAutoBugCapture isSupported])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006C65E8;
    v7[3] = &unk_100BD9500;
    v8 = contextCopy;
    [IDSAutoBugCapture triggerCaptureWithEvent:event context:v8 completion:v7];
  }
}

@end