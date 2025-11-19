@interface IDSAppleIDRegistrationCenter
+ (id)sharedInstance;
- (BOOL)_haveQueuedMessageForRegistration:(id)a3 inQueueForKey:(id)a4;
- (BOOL)_queryInitialInvitationContextForRegistration:(id)a3;
- (BOOL)_registrationIsAuthenticating:(id)a3;
- (BOOL)_registrationNeedsAuthentication:(id)a3;
- (BOOL)_sendAuthenticationRequest:(id)a3 forceNew:(BOOL)a4 forceRenewal:(BOOL)a5 failIfNotSilent:(BOOL)a6;
- (BOOL)_validateRegionID:(id)a3 phoneNumber:(id)a4 registration:(id)a5;
- (BOOL)authenticateRegistration:(id)a3;
- (BOOL)authenticateRegistration:(id)a3 forceNewToken:(BOOL)a4;
- (BOOL)authenticateRegistration:(id)a3 forceNewToken:(BOOL)a4 requireSilentAuth:(BOOL)a5;
- (BOOL)authenticateRegistration:(id)a3 forceRenewal:(BOOL)a4 requireSilentAuth:(BOOL)a5;
- (BOOL)authenticateRegistration:(id)a3 requireSilentAuth:(BOOL)a4;
- (BOOL)queryInitialInvitationContextForRegistration:(id)a3;
- (BOOL)validateRegion:(id)a3 phoneNumber:(id)a4 forRegistration:(id)a5;
- (IDSAppleIDRegistrationCenter)init;
- (IDSAppleIDRegistrationCenter)initWithMessageDelivery:(id)a3 passwordManager:(id)a4;
- (id)_queueForKey:(id)a3;
- (void)_fetchTokenForRegistrationInfo:(id)a3 failIfNotSilent:(BOOL)a4 failureBlock:(id)a5;
- (void)_noteSuccessfulToken:(id)a3 profileID:(id)a4 selfID:(id)a5 forRegistrationInfo:(id)a6 wasFetched:(BOOL)a7;
- (void)_notifyAuthenticating:(id)a3;
- (void)_notifyAuthenticationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7;
- (void)_notifyAuthenticationSuccess:(id)a3;
- (void)_notifyInitialRegionQuerySuccess:(id)a3;
- (void)_notifyRegionValidationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7;
- (void)_notifyRegionValidationSuccess:(id)a3 regionID:(id)a4 phoneNumber:(id)a5 context:(id)a6 verified:(BOOL)a7;
- (void)_postUserNotificationWithTitle:(id)a3 message:(id)a4 identifier:(id)a5 completionHandler:(id)a6;
- (void)_processDefaultInvitationContextMessage:(id)a3 deliveredWithError:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6;
- (void)_processRegionValidationMessage:(id)a3 deliveredWithError:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6;
- (void)_removeMessageForRegistration:(id)a3 fromQueueForKey:(id)a4;
- (void)_renewTokenForRegistrationInfo:(id)a3 forceRenewal:(BOOL)a4 failIfNotSilent:(BOOL)a5;
- (void)_serviceQueueForKey:(id)a3;
- (void)_setQueue:(id)a3 forKey:(id)a4;
- (void)addListener:(id)a3;
- (void)cancelActionsForRegistrationInfo:(id)a3;
- (void)dealloc;
- (void)removeListener:(id)a3;
@end

@implementation IDSAppleIDRegistrationCenter

+ (id)sharedInstance
{
  if (qword_100CBF468 != -1)
  {
    sub_10092E088();
  }

  v3 = qword_100CBF470;

  return v3;
}

- (IDSAppleIDRegistrationCenter)initWithMessageDelivery:(id)a3 passwordManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSAppleIDRegistrationCenter;
  v9 = [(IDSAppleIDRegistrationCenter *)&v12 init];
  if (v9)
  {
    v10 = +[IMSystemMonitor sharedInstance];
    [v10 addListener:v9];

    objc_storeStrong(&v9->_messageDelivery, a3);
    [(IDSAppleIDRegistrationCenterMessageDelivery *)v9->_messageDelivery setUserAgent:@"com.apple.invitation-registration"];
    [(IDSAppleIDRegistrationCenterMessageDelivery *)v9->_messageDelivery setLogToRegistration:1];
    objc_storeStrong(&v9->_passwordManager, a4);
  }

  return v9;
}

- (IDSAppleIDRegistrationCenter)init
{
  v3 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  v4 = +[IDSRegistrationRequestTracker sharedInstance];
  [v3 addRequestObserver:v4];

  v5 = +[FTPasswordManager sharedInstance];
  v6 = [(IDSAppleIDRegistrationCenter *)self initWithMessageDelivery:v3 passwordManager:v5];

  return v6;
}

- (void)dealloc
{
  v3 = +[IMSystemMonitor sharedInstance];
  [v3 removeListener:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:0 object:0];

  [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery invalidate];
  v5.receiver = self;
  v5.super_class = IDSAppleIDRegistrationCenter;
  [(IDSAppleIDRegistrationCenter *)&v5 dealloc];
}

- (id)_queueForKey:(id)a3
{
  v4 = a3;
  if (![v4 length])
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [(NSMutableDictionary *)self->_queues objectForKey:v4];
  v6 = v5;
  if (self->_queues)
  {
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    queues = self->_queues;
    self->_queues = Mutable;

    if (v6)
    {
      goto LABEL_8;
    }
  }

  v6 = objc_alloc_init(NSMutableArray);
  [(NSMutableDictionary *)self->_queues setObject:v6 forKey:v4];
LABEL_8:

  return v6;
}

- (void)_setQueue:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 length])
  {
    queues = self->_queues;
    v8 = v11;
    if (v11)
    {
      if (!queues)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v10 = self->_queues;
        self->_queues = Mutable;

        v8 = v11;
        queues = self->_queues;
      }

      [(NSMutableDictionary *)queues setObject:v8 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)queues removeObjectForKey:v6];
    }
  }
}

- (void)_serviceQueueForKey:(id)a3
{
  [(IDSAppleIDRegistrationCenter *)self _queueForKey:a3];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = v20 = 0u;
  obj = [v14 _copyForEnumerating];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 userInfo];
        v9 = [v8 objectForKey:@"info"];

        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 authenticationToken];
          [v7 setAuthToken:v10];
        }

        if (objc_opt_respondsToSelector())
        {
          v11 = [v9 profileID];
          [v7 setProfileID:v11];
        }

        if (objc_opt_respondsToSelector())
        {
          v12 = [v9 pushToken];
          [v7 setPushToken:v12];
        }

        if (objc_opt_respondsToSelector())
        {
          v13 = sub_10001F5A0(v9);
          [v7 setDSAuthID:v13];
        }

        [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery sendMessage:v7];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  [v14 removeAllObjects];
}

- (BOOL)_haveQueuedMessageForRegistration:(id)a3 inQueueForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  v9 = 0;
  if (v6 && v8)
  {
    [(IDSAppleIDRegistrationCenter *)self _queueForKey:v7];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v21 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) userInfo];
          v16 = [v15 objectForKey:@"info"];

          if (v16 == v6 || ([v16 isEqual:v6] & 1) != 0)
          {

            v9 = 1;
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = 0;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_15:
  }

  return v9;
}

- (void)_removeMessageForRegistration:(id)a3 fromQueueForKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 length];
  if (v6 && v8)
  {
    v19 = self;
    v20 = v7;
    v9 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:v7];
    v10 = [v9 mutableCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          v17 = [v16 userInfo];
          v18 = [v17 objectForKey:@"info"];

          if (v18 == v6 || [v18 isEqual:v6])
          {
            [v10 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v7 = v20;
    [(IDSAppleIDRegistrationCenter *)v19 _setQueue:v10 forKey:v20];
  }
}

- (void)_notifyInitialRegionQuerySuccess:(id)a3
{
  v4 = a3;
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back initial region query success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2288];
    [v6 removeObjectIdenticalTo:v4];

    v7 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v7;
    v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 center:self succeededInitialRegionQuery:{v4, v12}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifyRegionValidationSuccess:(id)a3 regionID:(id)a4 phoneNumber:(id)a5 context:(id)a6 verified:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v32 = a4;
  v13 = a5;
  v14 = a6;
  v33 = v12;
  v15 = [v12 isDisabled];
  v16 = +[IMRGLog registration];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 138412290;
      v40 = v12;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not reflecting back region validation success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v17)
    {
      v18 = @"NO";
      *buf = 138413314;
      v40 = v12;
      if (v7)
      {
        v18 = @"YES";
      }

      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v13;
      v45 = 2112;
      v46 = v14;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notifying of region validation success for registration: %@    region: %@   phone number: %@   context: %@  verified: %@", buf, 0x34u);
    }

    [v12 setRegionID:v32];
    [v12 setRegionBasePhoneNumber:v13];
    [v12 setRegionServerContext:v14];
    v19 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
    [v19 removeObjectIdenticalTo:v12];

    v20 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = v20;
    v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = *v35;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v25 center:self succeededRegionValidation:v33 regionID:v32 phoneNumber:v13 extraContext:v14 verified:v7];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    v26 = +[FTNetworkSupport sharedInstance];
    v27 = [v26 wiFiActiveAndReachable];

    if (v27)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    sub_100022FD8(0);
    sub_1000236A8(-1);
    FTAWDLogRegistrationProfileValidateInvitationContext();
    v29 = [IDSRegistrationProfileOperationValidateInvitationContext alloc];
    v30 = sub_100022FD8(0);
    v16 = [v29 initWithGuid:0 success:1 connectionType:v28 resultCode:v30 registrationError:sub_1000236A8(-1) genericError:0 URLError:0 POSIXError:0];
    v31 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v31 logMetric:v16];
  }
}

- (void)_notifyRegionValidationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7
{
  v12 = a3;
  v42 = a6;
  v13 = a7;
  if ([v12 isDisabled])
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not reflecting back region validation success, registration is disabled: %@", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v40 = a4;
  v15 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
  [v15 removeObjectIdenticalTo:v12];

  sub_100450174(0, @"Registration", @"Region Validation failed", 1073);
  v16 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v18)
  {
    v19 = *v44;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v43 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v21 center:self failedRegionValidation:v12 error:a5 info:v13];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v18);
  }

  v22 = [v42 domain];
  v41 = [v22 isEqualToString:NSPOSIXErrorDomain];

  v23 = [v42 domain];
  if ([v23 isEqualToString:NSURLErrorDomain])
  {
    v24 = 1;
  }

  else
  {
    v25 = [v42 domain];
    v24 = [v25 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v26 = +[FTNetworkSupport sharedInstance];
  v27 = [v26 wiFiActiveAndReachable];

  if (v27)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v39 = v28;
  sub_100022FD8(v40);
  sub_1000236A8(a5);
  if ((v24 | v41))
  {
    v29 = 0;
    if (v24)
    {
LABEL_21:
      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
      goto LABEL_24;
    }
  }

  else
  {
    v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
    if (v24)
    {
      goto LABEL_21;
    }
  }

  v30 = 0;
LABEL_24:
  if (v41)
  {
    v31 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
    FTAWDLogRegistrationProfileValidateInvitationContext();
  }

  else
  {
    FTAWDLogRegistrationProfileValidateInvitationContext();
  }

  if (v24)
  {
  }

  if (((v24 | v41) & 1) == 0)
  {
  }

  v32 = [IDSRegistrationProfileOperationValidateInvitationContext alloc];
  v33 = sub_100022FD8(v40);
  v34 = sub_1000236A8(a5);
  if ((v24 | v41))
  {
    v35 = 0;
    if (v24)
    {
LABEL_33:
      v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
      goto LABEL_36;
    }
  }

  else
  {
    v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
    if (v24)
    {
      goto LABEL_33;
    }
  }

  v36 = 0;
LABEL_36:
  if (v41)
  {
    v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v42 code]);
    v14 = [v32 initWithGuid:0 success:0 connectionType:v39 resultCode:v33 registrationError:v34 genericError:v35 URLError:v36 POSIXError:v37];

    if (!v24)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v14 = [v32 initWithGuid:0 success:0 connectionType:v39 resultCode:v33 registrationError:v34 genericError:v35 URLError:v36 POSIXError:0];
  if (v24)
  {
LABEL_40:
  }

LABEL_41:
  if (((v24 | v41) & 1) == 0)
  {
  }

  v38 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v38 logMetric:v14];

LABEL_44:
}

- (void)_notifyAuthenticating:(id)a3
{
  v4 = a3;
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back started authenticating, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    if ([v4 registrationStatus] <= 5)
    {
      [v4 setRegistrationStatus:5];
    }

    v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v6;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            [v10 center:self startedAuthenticating:{v4, v11}];
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifyAuthenticationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v38 = _os_activity_create(&_mh_execute_header, "Apple ID registration center notify authentication failure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v38, &state);
  if ([v12 isDisabled])
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v12;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not reflecting back authentication failure, registration is disabled: %@", buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  v16 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
  [v16 removeObject:v12];

  if ([v12 registrationStatus] <= 6)
  {
    [v12 setRegistrationStatus:-1];
  }

  sub_100450174(0, @"Registration", @"Authentication failure", 1073);
  v17 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v31 = a4;
  v32 = v13;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v19)
  {
    v20 = *v34;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v22 center:self failedAuthentication:v12 error:a5 info:v14];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v19);
  }

  v23 = [v32 domain];
  v24 = [v23 isEqualToString:NSPOSIXErrorDomain];

  v25 = [v32 domain];
  if ([v25 isEqualToString:NSURLErrorDomain])
  {
    v26 = 1;
  }

  else
  {
    v27 = [v32 domain];
    v26 = [v27 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v28 = +[FTNetworkSupport sharedInstance];
  [v28 wiFiActiveAndReachable];

  sub_100022FD8(v31);
  sub_1000236A8(a5);
  if ((v26 | v24))
  {
    v15 = 0;
    if (v26)
    {
      goto LABEL_20;
    }

LABEL_23:
    v29 = 0;
    if (!v24)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 code]);
  if (!v26)
  {
    goto LABEL_23;
  }

LABEL_20:
  v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 code]);
  if (!v24)
  {
LABEL_21:
    v30 = 0;
    goto LABEL_25;
  }

LABEL_24:
  v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v32 code]);
LABEL_25:
  FTAWDLogRegistrationProfileAuthenticate();
  v13 = v32;
  if (v24)
  {
  }

  if (v26)
  {
  }

  if (((v26 | v24) & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyAuthenticationSuccess:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = _os_activity_create(&_mh_execute_header, "Apple ID registration center notify authentication success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v19, &state);
  if ([v4 isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back authentication success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    [v6 removeObject:v4];

    v7 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v12 center:self succeededAuthentication:{v4, v14}];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v9);
    }

    v13 = +[FTNetworkSupport sharedInstance];
    [v13 wiFiActiveAndReachable];

    sub_100022FD8(0);
    sub_1000236A8(-1);
    FTAWDLogRegistrationProfileAuthenticate();
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_postUserNotificationWithTitle:(id)a3 message:(id)a4 identifier:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = IMLocalizedStringFromTableInBundle();
  v14 = IMLocalizedStringFromTableInBundle();
  v15 = [IMUserNotification userNotificationWithIdentifier:v10 title:v12 message:v11 defaultButton:v13 alternateButton:v14 otherButton:0];

  v16 = +[IMUserNotificationCenter sharedInstance];
  [v16 addUserNotification:v15 listener:0 completionHandler:v9];
}

- (void)_processDefaultInvitationContextMessage:(id)a3 deliveredWithError:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109634;
    v20[1] = a5;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  Received default invitation context with result: %d  error: %@  result dictionary: %@", v20, 0x1Cu);
  }

  v14 = [v10 userInfo];
  v15 = [v14 objectForKey:@"info"];

  if (a5 == 6005)
  {
    sub_100450174(0, @"Registration", @"Need to re-authenticate", 1073);
    [v15 setAuthenticationToken:0];
  }

  else if (a5)
  {
    sub_100450174(0, @"Registration", @"Default context query failed", 1073);
  }

  else
  {
    v16 = [v10 responseRegionID];
    if (v16)
    {
      v17 = [v10 responseRegionID];
    }

    else
    {
      v17 = &stru_100C06028;
    }

    v18 = [v10 responseBasePhoneNumber];
    v19 = [v10 responseExtraInfo];
    -[IDSAppleIDRegistrationCenter _notifyRegionValidationSuccess:regionID:phoneNumber:context:verified:](self, "_notifyRegionValidationSuccess:regionID:phoneNumber:context:verified:", v15, v17, v18, v19, [v10 responseValidated]);

    if (v16)
    {
    }
  }

  [(IDSAppleIDRegistrationCenter *)self _notifyInitialRegionQuerySuccess:v15];
}

- (void)_processRegionValidationMessage:(id)a3 deliveredWithError:(id)a4 resultCode:(int64_t)a5 resultDictionary:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109378;
    v19[1] = a5;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  Received region validation response with result: %d  error: %@", v19, 0x12u);
  }

  v12 = [v9 userInfo];
  v13 = [v12 objectForKey:@"info"];

  if (a5 == 6005)
  {
    sub_100450174(0, @"Registration", @"Need to re-authenticate", 1073);
    [v13 setAuthenticationToken:0];
    [(IDSAppleIDRegistrationCenter *)self _renewTokenForRegistrationInfo:v13 forceRenewal:0 failIfNotSilent:0];
  }

  else if (a5)
  {
    sub_100450174(0, @"Registration", @"Region validation failed", 1073);
    v16 = [v9 responseAlertInfo];
    [(IDSAppleIDRegistrationCenter *)self _notifyRegionValidationFailure:v13 responseCode:a5 registrationError:46 error:v10 info:v16];
  }

  else
  {
    v14 = [v9 responseRegionID];
    if (v14)
    {
      v15 = [v9 responseRegionID];
    }

    else
    {
      v15 = &stru_100C06028;
    }

    v17 = [v9 responseBasePhoneNumber];
    v18 = [v9 responseExtraInfo];
    [(IDSAppleIDRegistrationCenter *)self _notifyRegionValidationSuccess:v13 regionID:v15 phoneNumber:v17 context:v18 verified:1];

    if (v14)
    {
    }
  }
}

- (void)_noteSuccessfulToken:(id)a3 profileID:(id)a4 selfID:(id)a5 forRegistrationInfo:(id)a6 wasFetched:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v25 = _os_activity_create(&_mh_execute_header, "Apple ID registration center note successful token", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v25, &state);
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 134219010;
    v27 = v12;
    if (v7)
    {
      v17 = @"YES";
    }

    v28 = 2112;
    v29 = v13;
    v30 = 2112;
    v31 = v14;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Noting successful token: %p   for profile ID: %@   self handle: %@  wasFetched: %@  registration: %@", buf, 0x34u);
  }

  if ([v13 rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = [v15 profileID];
    if (!v18 || ([v15 profileID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", v13), v19, v18, (v20 & 1) == 0))
    {
      [v15 setProfileID:v13];
    }
  }

  else
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_10092E09C(v13, v21);
    }

    IMLogBacktrace();
  }

  if ([v14 length])
  {
    [v15 setDSHandle:v14];
  }

  if (!v7)
  {
    v22 = [v15 authenticationToken];
    v23 = v22;
    if (!v22 || ([v22 isEqualToString:v12] & 1) == 0)
    {
      [v15 setAuthenticationToken:v12];
    }
  }

  [(IDSAppleIDRegistrationCenter *)self _notifyAuthenticationSuccess:v15];
  [(IDSAppleIDRegistrationCenter *)self _serviceQueueForKey:off_100CB2288];
  [(IDSAppleIDRegistrationCenter *)self _serviceQueueForKey:off_100CB2290];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_renewTokenForRegistrationInfo:(id)a3 forceRenewal:(BOOL)a4 failIfNotSilent:(BOOL)a5
{
  v6 = a4;
  v8 = a3;
  v9 = +[IMRGLog registration];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting renew for %@", buf, 0xCu);
    }

    passwordManager = self->_passwordManager;
    v12 = [v8 profileID];
    v13 = [v8 email];
    v14 = IMStripLoginID();
    v15 = [v14 lowercaseString];
    v16 = [v8 serviceType];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100696530;
    v18[3] = &unk_100BE3FA8;
    v19 = v8;
    v20 = self;
    LOBYTE(v17) = a5;
    [(FTPasswordManager *)passwordManager requestAuthTokenForProfileID:v12 username:v15 service:v16 badPassword:0 showForgotPassword:0 forceRenewal:v6 failIfNotSilent:v17 outRequestID:0 completionBlock:v18];

    v9 = v19;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Empty registration info supplied for password fetch, bailing", buf, 2u);
  }
}

- (void)_fetchTokenForRegistrationInfo:(id)a3 failIfNotSilent:(BOOL)a4 failureBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[IMRGLog registration];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting token fetch for %@", buf, 0xCu);
    }

    passwordManager = self->_passwordManager;
    v13 = [v8 profileID];
    v14 = [v8 email];
    v15 = [v14 lowercaseString];
    v16 = [v8 serviceType];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006969B8;
    v17[3] = &unk_100BE3FD0;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v21 = a4;
    [(FTPasswordManager *)passwordManager fetchAuthTokenForProfileID:v13 username:v15 service:v16 outRequestID:0 completionBlock:v17];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Empty registration info supplied for password fetch, bailing", buf, 2u);
    }

    if (v9)
    {
      v9[2](v9);
    }
  }
}

- (BOOL)_sendAuthenticationRequest:(id)a3 forceNew:(BOOL)a4 forceRenewal:(BOOL)a5 failIfNotSilent:(BOOL)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v22 = _os_activity_create(&_mh_execute_header, "Apple ID registration center authentication request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v22, &state);
  if ([v10 registrationStatus] <= 3)
  {
    [v10 setRegistrationStatus:4];
  }

  v11 = [v10 email];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    if ([v13 containsObject:v10])
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not adding this to the queue, we're already trying to authenticate: %@", buf, 0xCu);
      }
    }

    else
    {
      [v13 addObject:v10];
      v16 = a6 || [v10 registrationType] == 2;
      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = +[FTDeviceSupport sharedInstance];
        v19 = [v18 deviceInformationString];
        *buf = 138412546;
        v24 = v10;
        v25 = 2112;
        v26 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching password for: %@  (Environment: %@)", buf, 0x16u);
      }

      if (v8)
      {
        [(IDSAppleIDRegistrationCenter *)self _renewTokenForRegistrationInfo:v10 forceRenewal:v7 failIfNotSilent:v16];
      }

      else
      {
        [(IDSAppleIDRegistrationCenter *)self _fetchTokenForRegistrationInfo:v10 failIfNotSilent:v16 failureBlock:0];
      }
    }
  }

  else
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No email present for registration: %@", buf, 0xCu);
    }

    [(IDSAppleIDRegistrationCenter *)self _notifyAuthenticationFailure:v10 responseCode:1 registrationError:16 error:0 info:0];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v12 != 0;
}

- (BOOL)_registrationIsAuthenticating:(id)a3
{
  v4 = off_100CB2298;
  v5 = a3;
  v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:v4];
  LOBYTE(v4) = [v6 containsObject:v5];

  return v4;
}

- (BOOL)_registrationNeedsAuthentication:(id)a3
{
  v3 = a3;
  v4 = [v3 authenticationToken];
  v7 = (!v4 || (v5 = v4, [v3 profileID], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6)) && objc_msgSend(v3, "registrationType") == 1;

  return v7;
}

- (BOOL)_validateRegionID:(id)a3 phoneNumber:(id)a4 registration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(IDSProfileValidateInvitationContext);
  v12 = sub_10001F5A0(v10);
  [(IDSProfileValidateInvitationContext *)v11 setDSAuthID:v12];

  v13 = [v10 pushToken];
  [(IDSProfileMessage *)v11 setPushToken:v13];

  v14 = [v10 profileID];
  [(IDSProfileMessage *)v11 setProfileID:v14];

  v15 = [v10 authenticationToken];
  [(IDSProfileMessage *)v11 setAuthToken:v15];

  [(IDSProfileValidateInvitationContext *)v11 setRegionID:v8];
  [(IDSProfileValidateInvitationContext *)v11 setBasePhoneNumber:v9];
  v16 = [NSDictionary dictionaryWithObject:v10 forKey:@"info"];
  [(IDSProfileValidateInvitationContext *)v11 setUserInfo:v16];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100697354;
  v20[3] = &unk_100BE07C8;
  v20[4] = self;
  [(IDSProfileValidateInvitationContext *)v11 setCompletionBlock:v20];
  if ([(IDSAppleIDRegistrationCenter *)self _registrationNeedsAuthentication:v10])
  {
    v17 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
    [v17 addObject:v11];

    if (![(IDSAppleIDRegistrationCenter *)self _registrationIsAuthenticating:v10])
    {
      [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v10 forceNew:0];
    }
  }

  else
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending region validation request: %@ number: %@ (%@)", buf, 0x20u);
    }

    [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery sendMessage:v11];
  }

  return 1;
}

- (BOOL)_queryInitialInvitationContextForRegistration:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSProfileGetDefaultInvitationContext);
  v6 = sub_10001F5A0(v4);
  [(IDSProfileGetDefaultInvitationContext *)v5 setDSAuthID:v6];

  v7 = [v4 pushToken];
  [(IDSProfileMessage *)v5 setPushToken:v7];

  v8 = [v4 profileID];
  [(IDSProfileMessage *)v5 setProfileID:v8];

  v9 = [v4 authenticationToken];
  [(IDSProfileMessage *)v5 setAuthToken:v9];

  v10 = [NSDictionary dictionaryWithObject:v4 forKey:@"info"];
  [(IDSProfileGetDefaultInvitationContext *)v5 setUserInfo:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006975AC;
  v14[3] = &unk_100BE07C8;
  v14[4] = self;
  [(IDSProfileGetDefaultInvitationContext *)v5 setCompletionBlock:v14];
  if ([(IDSAppleIDRegistrationCenter *)self _registrationNeedsAuthentication:v4])
  {
    v11 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2288];
    [v11 addObject:v5];

    if (![(IDSAppleIDRegistrationCenter *)self _registrationIsAuthenticating:v4])
    {
      [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v4 forceNew:0];
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending initial context request for: %@", buf, 0xCu);
    }

    [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery sendMessage:v5];
  }

  return 1;
}

- (BOOL)queryInitialInvitationContextForRegistration:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting initial context for: %@", &v8, 0xCu);
  }

  v6 = [(IDSAppleIDRegistrationCenter *)self _queryInitialInvitationContextForRegistration:v4];
  return v6;
}

- (BOOL)validateRegion:(id)a3 phoneNumber:(id)a4 forRegistration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting region validation for: %@  number: %@, %@", &v14, 0x20u);
  }

  v12 = [(IDSAppleIDRegistrationCenter *)self _validateRegionID:v8 phoneNumber:v9 registration:v10];
  return v12;
}

- (BOOL)authenticateRegistration:(id)a3 forceRenewal:(BOOL)a4 requireSilentAuth:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v12, 0xCu);
  }

  v10 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v8 forceNew:v6 forceRenewal:v6 failIfNotSilent:v5];
  return v10;
}

- (BOOL)authenticateRegistration:(id)a3 forceNewToken:(BOOL)a4 requireSilentAuth:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v12, 0xCu);
  }

  v10 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v8 forceNew:v6 failIfNotSilent:v5];
  return v10;
}

- (BOOL)authenticateRegistration:(id)a3 forceNewToken:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v10, 0xCu);
  }

  v8 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v6 forceNew:v4 failIfNotSilent:0];
  return v8;
}

- (BOOL)authenticateRegistration:(id)a3 requireSilentAuth:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v10, 0xCu);
  }

  v8 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:v6 forceNew:0 failIfNotSilent:v4];
  return v8;
}

- (BOOL)authenticateRegistration:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v8, 0xCu);
  }

  v6 = [(IDSAppleIDRegistrationCenter *)self authenticateRegistration:v4 forceNewToken:0];
  return v6;
}

- (void)cancelActionsForRegistrationInfo:(id)a3
{
  if (a3)
  {
    v4 = off_100CB2288;
    v5 = a3;
    [(IDSAppleIDRegistrationCenter *)self _removeMessageForRegistration:v5 fromQueueForKey:v4];
    [(IDSAppleIDRegistrationCenter *)self _removeMessageForRegistration:v5 fromQueueForKey:off_100CB2290];
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    [v6 removeObject:v5];
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

- (void)removeListener:(id)a3
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:a3];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

@end