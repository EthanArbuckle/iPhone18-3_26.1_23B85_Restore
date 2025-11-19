@interface IDSPhoneUserRegistry
- (BOOL)_hasThresholdReachedForSMSTimeoutForIdentifier:(id)a3;
- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4;
- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4 deviceSupport:(id)a5;
- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4 server:(id)a5 phoneNumberValidator:(id)a6 deviceSupport:(id)a7 restoreMonitor:(id)a8 systemMonitor:(id)a9;
- (__SecKey)phoneAuthenticationCertificatePrivateKey;
- (__SecKey)phoneAuthenticationCertificatePublicKey;
- (id)_identifierForValidator:(id)a3;
- (id)localPhoneAuthenticationCertificates;
- (id)phoneAuthenticationCertificateSigningRequestForUser:(id)a3;
- (id)validatorForUniqueID:(id)a3 withServiceType:(int64_t)a4;
- (void)_cleanupUntrackedValidators;
- (void)_clearConsentDenialsForUniqueIdentifier:(id)a3;
- (void)_notifyFailureWithError:(int64_t)a3 identifier:(id)a4;
- (void)_notifySuccess:(id)a3 token:(id)a4 tokenType:(int64_t)a5 identifier:(id)a6;
- (void)_postPendingConsentAlerts;
- (void)_resetRateLimitersForSMSTimeoutForIdentifier:(id)a3;
- (void)_sendABCForFailureForIdentifier:(id)a3 WithEvent:(int64_t)a4 context:(id)a5;
- (void)addListener:(id)a3;
- (void)cancelPhoneNumberIdentificationForServiceType:(int64_t)a3 withUniqueIdentifier:(id)a4;
- (void)clearConsentDenialsForPhoneUser:(id)a3;
- (void)clearCredentialForUserUniqueIdentifier:(id)a3;
- (void)dealloc;
- (void)notePhoneNumberRegistrationReset;
- (void)requestPhoneNumberIdentificationForServiceType:(int64_t)a3 withUniqueIdentifier:(id)a4 requestOption:(int64_t)a5;
- (void)requestUserConsentToValidatePhoneNumberForCTPNR:(id)a3 completion:(id)a4;
- (void)setCredential:(id)a3 forUserUniqueIdentifier:(id)a4;
- (void)validator:(id)a3 failedIdentificationWithRegistrationError:(int64_t)a4;
- (void)validator:(id)a3 handleABCEvent:(int64_t)a4;
- (void)validator:(id)a3 identifiedPhoneNumber:(id)a4 token:(id)a5 phoneBookNumber:(id)a6 mechanismUsed:(int64_t)a7;
@end

@implementation IDSPhoneUserRegistry

- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[IDSServer alloc] initWithQueue:v7];
  v9 = +[IDSCTAdapter sharedInstance];
  v10 = +[IDSRestoreMonitor sharedInstance];
  v11 = +[IMSystemMonitor sharedInstance];
  v12 = [(IDSPhoneUserRegistry *)self initWithQueue:v7 userStore:v6 server:v8 phoneNumberValidator:0 deviceSupport:v9 restoreMonitor:v10 systemMonitor:v11];

  return v12;
}

- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4 deviceSupport:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[IDSServer alloc] initWithQueue:v10];
  v12 = +[IDSRestoreMonitor sharedInstance];
  v13 = +[IMSystemMonitor sharedInstance];
  v14 = [(IDSPhoneUserRegistry *)self initWithQueue:v10 userStore:v9 server:v11 phoneNumberValidator:0 deviceSupport:v8 restoreMonitor:v12 systemMonitor:v13];

  return v14;
}

- (IDSPhoneUserRegistry)initWithQueue:(id)a3 userStore:(id)a4 server:(id)a5 phoneNumberValidator:(id)a6 deviceSupport:(id)a7 restoreMonitor:(id)a8 systemMonitor:(id)a9
{
  v37 = a3;
  v36 = a4;
  v35 = a5;
  v34 = a6;
  v33 = a7;
  v16 = a8;
  v17 = a9;
  v38.receiver = self;
  v38.super_class = IDSPhoneUserRegistry;
  v18 = [(IDSPhoneUserRegistry *)&v38 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_queue, a3);
    objc_storeStrong(&v19->_userStore, a4);
    objc_storeStrong(&v19->_server, a5);
    objc_storeStrong(&v19->_phoneNumberValidator, a6);
    objc_storeStrong(&v19->_deviceSupport, a7);
    objc_storeStrong(&v19->_restoreMonitor, a8);
    objc_storeStrong(&v19->_systemMonitor, a9);
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
  v3 = [(NSMutableDictionary *)self->_stateMachineByUserID allValues];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) removeListener:self];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = IDSPhoneUserRegistry;
  [(IDSPhoneUserRegistry *)&v8 dealloc];
}

- (__SecKey)phoneAuthenticationCertificatePublicKey
{
  v2 = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = +[IDSRegistrationKeyManager sharedInstance];
  v4 = [v3 identityPublicKey];

  return v4;
}

- (__SecKey)phoneAuthenticationCertificatePrivateKey
{
  v2 = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(v2);

  v3 = +[IDSRegistrationKeyManager sharedInstance];
  v4 = [v3 identityPrivateKey];

  return v4;
}

- (id)phoneAuthenticationCertificateSigningRequestForUser:(id)a3
{
  v4 = a3;
  v5 = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[IDSRegistrationKeyManager sharedInstance];
  v7 = [v4 phoneNumber];

  v8 = [v6 generateCSRForUserID:v7];

  return v8;
}

- (id)localPhoneAuthenticationCertificates
{
  v3 = [(IDSPhoneUserRegistry *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(IDSPhoneUserRegistry *)self deviceSupport];
  v5 = [v4 supportsIdentification];

  if (v5)
  {
    v6 = [(IDSPhoneUserRegistry *)self userStore];
    v7 = [v6 usersWithRealm:0];

    v8 = objc_alloc_init(NSMutableArray);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = [(IDSPhoneUserRegistry *)self userStore];
          v16 = [v15 authenticationCertificateForUser:v14];

          if (v16)
          {
            v17 = [[IDSPhoneUserAuthenticationCertificate alloc] initWithPhoneUser:v14 authenticationCertificate:v16];
            [v8 addObject:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v42 count:16];
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
      v19 = [v8 copy];
      v20 = [CUTPromise fulfilledPromiseWithValue:v19];
    }

    else
    {
      v25 = +[IDSPACStateTracker sharedInstance];
      v19 = [v25 fetchCurrentPACState];

      v26 = +[IDSPACStateTracker sharedInstance];
      v27 = [v26 underlyingErrorForPACState:v19];

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
    v9 = [v21 fetchCurrentPACState];

    v22 = +[IDSPACStateTracker sharedInstance];
    v8 = [v22 underlyingErrorForPACState:v9];

    v36 = NSDebugDescriptionErrorKey;
    v37 = @"This device does not support phone number authentication";
    v23 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v19 = [NSMutableDictionary dictionaryWithDictionary:v23];

    if (v8)
    {
      [v19 setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    v24 = [[NSError alloc] initWithDomain:@"IDSPhoneUserRegistryErrorDomain" code:-1000 userInfo:v19];
    v20 = [CUTPromise failedPromiseWithError:v24];
  }

  return v20;
}

- (void)requestPhoneNumberIdentificationForServiceType:(int64_t)a3 withUniqueIdentifier:(id)a4 requestOption:(int64_t)a5
{
  v8 = a4;
  v9 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:a3 uniqueIdentifier:v8];
  [(NSMutableSet *)self->_userRequests addObject:v9];
  v10 = [(IDSPhoneUserRegistry *)self userStore];
  v11 = [v10 userWithUniqueIdentifier:v8];

  v12 = +[IMRGLog sms];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [NSNumber numberWithInteger:a3];
    v14 = [NSNumber numberWithInteger:a5];
    v33 = 138412802;
    v34 = v13;
    v35 = 2112;
    v36 = v8;
    v37 = 2112;
    v38 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Phone number credential requested. {serviceType: %@, uniqueIdentifier: %@, requestOption: %@", &v33, 0x20u);
  }

  if (v11)
  {
    if (a5 == 1)
    {
      v15 = +[IMRGLog sms];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Checking cache for valid phone number credential.", &v33, 2u);
      }

      v16 = v11;
      v17 = [v16 phoneNumber];
      v18 = [(IDSPhoneUserRegistry *)self userStore];
      v19 = [v18 credentialForUser:v16];

      if (v17)
      {
        if (v19)
        {
          v20 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];

          if (v20)
          {
            if (a3 != 2)
            {
              v21 = +[IMRGLog sms];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
                v23 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]];
                v33 = 138413058;
                v34 = v17;
                v35 = 2112;
                v36 = v22;
                v37 = 2112;
                v38 = v23;
                v39 = 2112;
                v40 = v9;
                v24 = "IDS phone service type request found cached PNR credential. { phoneNumber: %@, token: %@, tokenType: %@, requestID: %@ }";
                goto LABEL_33;
              }

LABEL_34:

              v32 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
              [(IDSPhoneUserRegistry *)self _notifySuccess:v17 token:v32 tokenType:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed] identifier:v9];

LABEL_35:
              goto LABEL_36;
            }

            if ([(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]== 2 || [(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]== 3)
            {
              v21 = +[IMRGLog sms];
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [(IDSPhoneNumberValidationStateMachine *)v19 smsSignature];
                v23 = [NSNumber numberWithInteger:[(IDSPhoneNumberValidationStateMachine *)v19 mechanismUsed]];
                v33 = 138413058;
                v34 = v17;
                v35 = 2112;
                v36 = v22;
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
    v16 = [v26 SIMForIdentifier:v8];

    if (v16)
    {
      v27 = +[IDSCTAdapter sharedInstance];
      v17 = [v27 CTPNRForSIM:v16];

      userConsentDeniedForCTPNR = self->_userConsentDeniedForCTPNR;
      v29 = [(IDSPhoneUserRegistry *)v17 uniqueIdentifier];
      LODWORD(userConsentDeniedForCTPNR) = [(NSMutableSet *)userConsentDeniedForCTPNR containsObject:v29];

      if (userConsentDeniedForCTPNR)
      {
        v19 = +[IMRGLog sms];
        if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_ERROR))
        {
          sub_100931D94(self, v17);
        }
      }

      else
      {
        v19 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v9];
        if (!v19)
        {
          v19 = [[IDSPhoneNumberValidationStateMachine alloc] initWithCTPNR:v17 preflightStackStore:self->_preflightStackStore serviceType:a3];
          v30 = [(IDSPhoneUserRegistry *)self registrationReasonTracker];
          -[IDSPhoneNumberValidationStateMachine setReason:](v19, "setReason:", [v30 getPNRReasonForUserUniqueIdentifier:v8]);

          [(IDSPhoneNumberValidationStateMachine *)v19 addListener:self];
          [(NSMutableDictionary *)self->_stateMachineByUserID setObject:v19 forKeyedSubscript:v9];
          v31 = +[IMRGLog sms];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v33 = 138412546;
            v34 = self;
            v35 = 2112;
            v36 = v8;
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
      sub_100931EB4(a3);
    }
  }

LABEL_36:
}

- (void)_cleanupUntrackedValidators
{
  v3 = [(NSMutableDictionary *)self->_stateMachineByUserID allKeys];
  v4 = [v3 __imSetFromArray];
  v5 = [v4 mutableCopy];

  [v5 minusSet:self->_userRequests];
  v6 = +[IMRGLog sms];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userRequests = self->_userRequests;
    v8 = [(NSMutableDictionary *)self->_stateMachineByUserID allKeys];
    *buf = 138412802;
    v25 = self;
    v26 = 2112;
    v27 = userRequests;
    v28 = 2112;
    v29 = v8;
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
          v25 = self;
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

- (void)cancelPhoneNumberIdentificationForServiceType:(int64_t)a3 withUniqueIdentifier:(id)a4
{
  v6 = a4;
  v7 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:a3 uniqueIdentifier:v6];

  [(NSMutableSet *)self->_userRequests removeObject:v7];
  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)setCredential:(id)a3 forUserUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSPhoneUserRegistry *)self userStore];
  v9 = [v8 userWithUniqueIdentifier:v7];

  if (v9)
  {
    v10 = +[IMRGLog sms];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412802;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "External update for credential of phone user. { uniqueIdentifier: %@, user: %@, credential: %@ }", &v12, 0x20u);
    }

    v11 = [(IDSPhoneUserRegistry *)self userStore];
    [v11 setCredential:v6 forUser:v9];
  }
}

- (void)clearCredentialForUserUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSPhoneUserRegistry *)self userStore];
  v6 = [v5 userWithUniqueIdentifier:v4];

  if (v6)
  {
    v7 = +[IMRGLog sms];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "External clear of credential for user identifier: %@", &v9, 0xCu);
    }

    v8 = [(IDSPhoneUserRegistry *)self userStore];
    [v8 setCredential:0 forUser:v6];
  }
}

- (void)requestUserConsentToValidatePhoneNumberForCTPNR:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_time(0, 1000000000);
    v9 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1006C53AC;
    block[3] = &unk_100BDA5A8;
    v12 = v7;
    block[4] = self;
    v11 = v6;
    dispatch_after(v8, v9, block);
  }
}

- (void)_postPendingConsentAlerts
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(IDSPhoneUserRegistry *)self CTPNRByConsentCompletion];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = +[IMRGLog sms];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Processing pending SMS alerts after restore {CTPNR: %@}", buf, 0xCu);
        }

        v11 = [(IDSPhoneUserRegistry *)self CTPNRByConsentCompletion];
        v12 = [v11 objectForKey:v9];

        [(IDSPhoneUserRegistry *)self requestUserConsentToValidatePhoneNumberForCTPNR:v9 completion:v12];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v6);
  }

  [(IDSPhoneUserRegistry *)self setCTPNRByConsentCompletion:0];
}

- (void)clearConsentDenialsForPhoneUser:(id)a3
{
  v4 = [a3 uniqueIdentifier];
  [(IDSPhoneUserRegistry *)self _clearConsentDenialsForUniqueIdentifier:v4];
}

- (void)_clearConsentDenialsForUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[IDSCTAdapter sharedInstance];
  v12 = [v5 SIMForIdentifier:v4];

  v6 = +[IDSCTAdapter sharedInstance];
  v7 = [v6 CTPNRForSIM:v12];

  userConsentDeniedForCTPNR = self->_userConsentDeniedForCTPNR;
  v9 = [v7 uniqueIdentifier];
  LODWORD(userConsentDeniedForCTPNR) = [(NSMutableSet *)userConsentDeniedForCTPNR containsObject:v9];

  if (userConsentDeniedForCTPNR)
  {
    v10 = self->_userConsentDeniedForCTPNR;
    v11 = [v7 uniqueIdentifier];
    [(NSMutableSet *)v10 removeObject:v11];
  }
}

- (void)notePhoneNumberRegistrationReset
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_stateMachineByUserID allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) resetSMSCounter];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(IDSPreflightStackStore *)self->_preflightStackStore clearAllPreflightStacks];
}

- (id)validatorForUniqueID:(id)a3 withServiceType:(int64_t)a4
{
  v6 = a3;
  v7 = [[IDSPhoneUserRegistryRequest alloc] initWithServiceType:a4 uniqueIdentifier:v6];

  v8 = [(NSMutableDictionary *)self->_stateMachineByUserID objectForKeyedSubscript:v7];

  return v8;
}

- (id)_identifierForValidator:(id)a3
{
  v4 = a3;
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

        if (v11 == v4)
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

- (void)_notifyFailureWithError:(int64_t)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
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
          v12 = [v5 serviceType];
          v13 = [v5 uniqueIdentifier];
          [v11 registry:self serviceType:v12 identifier:v13 failedIdentificationWithRegistrationReason:a3];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)_notifySuccess:(id)a3 token:(id)a4 tokenType:(int64_t)a5 identifier:(id)a6
{
  v20 = a3;
  v19 = a4;
  v9 = a6;
  v10 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
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
          v16 = [v9 serviceType];
          v17 = [v9 uniqueIdentifier];
          [v15 registry:self serviceType:v16 identifier:v17 identifiedPhoneNumber:v20 token:v19 tokenType:a5];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)validator:(id)a3 identifiedPhoneNumber:(id)a4 token:(id)a5 phoneBookNumber:(id)a6 mechanismUsed:(int64_t)a7
{
  v22 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(IDSPhoneUserRegistry *)self _identifierForValidator:a3];
  if (v14)
  {
    v15 = [(IDSPhoneUserRegistry *)self userStore];
    v16 = [v14 uniqueIdentifier];
    v17 = [v15 userWithUniqueIdentifier:v16];

    v18 = [v17 phoneUserWithUpdatedPhoneNumber:v22 phoneBookNumber:v13];

    v19 = [(IDSPhoneUserRegistry *)self userStore];
    [v19 updateUser:v18];

    v20 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:v12 mechanismUsed:a7];
    v21 = [(IDSPhoneUserRegistry *)self userStore];
    [v21 setCredential:v20 forUser:v18];

    [(IDSPhoneUserRegistry *)self _notifySuccess:v22 token:v12 tokenType:[(IDSPhoneUserCredential *)v20 mechanismUsed] identifier:v14];
  }

  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)validator:(id)a3 failedIdentificationWithRegistrationError:(int64_t)a4
{
  v6 = [(IDSPhoneUserRegistry *)self _identifierForValidator:a3];
  [(IDSPhoneUserRegistry *)self _notifyFailureWithError:a4 identifier:v6];
  [(IDSPhoneUserRegistry *)self _cleanupUntrackedValidators];
}

- (void)validator:(id)a3 handleABCEvent:(int64_t)a4
{
  v6 = [(IDSPhoneUserRegistry *)self _identifierForValidator:a3];
  if (a4 == 204)
  {
    v14 = v6;
    v10 = [v6 uniqueIdentifier];
    v11 = [(IDSPhoneUserRegistry *)self _hasThresholdReachedForSMSTimeoutForIdentifier:v10];

    v6 = v14;
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [v14 uniqueIdentifier];
    v8 = [NSString stringWithFormat:@"PNR Registration failed for Identifier: %@ Failure: SMS timeout threshold reached", v12];

    v13 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _sendABCForFailureForIdentifier:v13 WithEvent:204 context:v8];

    v9 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _resetRateLimitersForSMSTimeoutForIdentifier:v9];
  }

  else
  {
    if (a4 != 203)
    {
      goto LABEL_7;
    }

    v14 = v6;
    v7 = [v6 uniqueIdentifier];
    v8 = [NSString stringWithFormat:@"PNR Registration failed for Identifier: %@ Failure: SMS quota exhausted", v7];

    v9 = [v14 uniqueIdentifier];
    [(IDSPhoneUserRegistry *)self _sendABCForFailureForIdentifier:v9 WithEvent:203 context:v8];
  }

  v6 = v14;
LABEL_7:
}

- (BOOL)_hasThresholdReachedForSMSTimeoutForIdentifier:(id)a3
{
  v4 = a3;
  [(IDSRateLimiter *)self->_smallWindowSMSTimeoutRateLimiter noteItem:v4];
  [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter noteItem:v4];
  if ([(IDSRateLimiter *)self->_smallWindowSMSTimeoutRateLimiter underLimitForItem:v4])
  {
    v5 = [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter underLimitForItem:v4]^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_resetRateLimitersForSMSTimeoutForIdentifier:(id)a3
{
  smallWindowSMSTimeoutRateLimiter = self->_smallWindowSMSTimeoutRateLimiter;
  v5 = a3;
  [(IDSRateLimiter *)smallWindowSMSTimeoutRateLimiter clearItem:v5];
  [(IDSRateLimiter *)self->_wideWindowSMSTimeoutRateLimiter clearItem:v5];
}

- (void)_sendABCForFailureForIdentifier:(id)a3 WithEvent:(int64_t)a4 context:(id)a5
{
  v6 = a5;
  if (+[IDSAutoBugCapture isSupported])
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1006C65E8;
    v7[3] = &unk_100BD9500;
    v8 = v6;
    [IDSAutoBugCapture triggerCaptureWithEvent:a4 context:v8 completion:v7];
  }
}

@end