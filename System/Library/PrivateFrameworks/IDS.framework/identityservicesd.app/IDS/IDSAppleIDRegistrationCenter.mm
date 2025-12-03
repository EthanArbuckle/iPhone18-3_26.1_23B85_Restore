@interface IDSAppleIDRegistrationCenter
+ (id)sharedInstance;
- (BOOL)_haveQueuedMessageForRegistration:(id)registration inQueueForKey:(id)key;
- (BOOL)_queryInitialInvitationContextForRegistration:(id)registration;
- (BOOL)_registrationIsAuthenticating:(id)authenticating;
- (BOOL)_registrationNeedsAuthentication:(id)authentication;
- (BOOL)_sendAuthenticationRequest:(id)request forceNew:(BOOL)new forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent;
- (BOOL)_validateRegionID:(id)d phoneNumber:(id)number registration:(id)registration;
- (BOOL)authenticateRegistration:(id)registration;
- (BOOL)authenticateRegistration:(id)registration forceNewToken:(BOOL)token;
- (BOOL)authenticateRegistration:(id)registration forceNewToken:(BOOL)token requireSilentAuth:(BOOL)auth;
- (BOOL)authenticateRegistration:(id)registration forceRenewal:(BOOL)renewal requireSilentAuth:(BOOL)auth;
- (BOOL)authenticateRegistration:(id)registration requireSilentAuth:(BOOL)auth;
- (BOOL)queryInitialInvitationContextForRegistration:(id)registration;
- (BOOL)validateRegion:(id)region phoneNumber:(id)number forRegistration:(id)registration;
- (IDSAppleIDRegistrationCenter)init;
- (IDSAppleIDRegistrationCenter)initWithMessageDelivery:(id)delivery passwordManager:(id)manager;
- (id)_queueForKey:(id)key;
- (void)_fetchTokenForRegistrationInfo:(id)info failIfNotSilent:(BOOL)silent failureBlock:(id)block;
- (void)_noteSuccessfulToken:(id)token profileID:(id)d selfID:(id)iD forRegistrationInfo:(id)info wasFetched:(BOOL)fetched;
- (void)_notifyAuthenticating:(id)authenticating;
- (void)_notifyAuthenticationFailure:(id)failure responseCode:(int64_t)code registrationError:(int64_t)error error:(id)a6 info:(id)info;
- (void)_notifyAuthenticationSuccess:(id)success;
- (void)_notifyInitialRegionQuerySuccess:(id)success;
- (void)_notifyRegionValidationFailure:(id)failure responseCode:(int64_t)code registrationError:(int64_t)error error:(id)a6 info:(id)info;
- (void)_notifyRegionValidationSuccess:(id)success regionID:(id)d phoneNumber:(id)number context:(id)context verified:(BOOL)verified;
- (void)_postUserNotificationWithTitle:(id)title message:(id)message identifier:(id)identifier completionHandler:(id)handler;
- (void)_processDefaultInvitationContextMessage:(id)message deliveredWithError:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary;
- (void)_processRegionValidationMessage:(id)message deliveredWithError:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary;
- (void)_removeMessageForRegistration:(id)registration fromQueueForKey:(id)key;
- (void)_renewTokenForRegistrationInfo:(id)info forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent;
- (void)_serviceQueueForKey:(id)key;
- (void)_setQueue:(id)queue forKey:(id)key;
- (void)addListener:(id)listener;
- (void)cancelActionsForRegistrationInfo:(id)info;
- (void)dealloc;
- (void)removeListener:(id)listener;
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

- (IDSAppleIDRegistrationCenter)initWithMessageDelivery:(id)delivery passwordManager:(id)manager
{
  deliveryCopy = delivery;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = IDSAppleIDRegistrationCenter;
  v9 = [(IDSAppleIDRegistrationCenter *)&v12 init];
  if (v9)
  {
    v10 = +[IMSystemMonitor sharedInstance];
    [v10 addListener:v9];

    objc_storeStrong(&v9->_messageDelivery, delivery);
    [(IDSAppleIDRegistrationCenterMessageDelivery *)v9->_messageDelivery setUserAgent:@"com.apple.invitation-registration"];
    [(IDSAppleIDRegistrationCenterMessageDelivery *)v9->_messageDelivery setLogToRegistration:1];
    objc_storeStrong(&v9->_passwordManager, manager);
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

- (id)_queueForKey:(id)key
{
  keyCopy = key;
  if (![keyCopy length])
  {
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [(NSMutableDictionary *)self->_queues objectForKey:keyCopy];
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
  [(NSMutableDictionary *)self->_queues setObject:v6 forKey:keyCopy];
LABEL_8:

  return v6;
}

- (void)_setQueue:(id)queue forKey:(id)key
{
  queueCopy = queue;
  keyCopy = key;
  if ([keyCopy length])
  {
    queues = self->_queues;
    v8 = queueCopy;
    if (queueCopy)
    {
      if (!queues)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v10 = self->_queues;
        self->_queues = Mutable;

        v8 = queueCopy;
        queues = self->_queues;
      }

      [(NSMutableDictionary *)queues setObject:v8 forKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)queues removeObjectForKey:keyCopy];
    }
  }
}

- (void)_serviceQueueForKey:(id)key
{
  [(IDSAppleIDRegistrationCenter *)self _queueForKey:key];
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
        userInfo = [v7 userInfo];
        v9 = [userInfo objectForKey:@"info"];

        if (objc_opt_respondsToSelector())
        {
          authenticationToken = [v9 authenticationToken];
          [v7 setAuthToken:authenticationToken];
        }

        if (objc_opt_respondsToSelector())
        {
          profileID = [v9 profileID];
          [v7 setProfileID:profileID];
        }

        if (objc_opt_respondsToSelector())
        {
          pushToken = [v9 pushToken];
          [v7 setPushToken:pushToken];
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

- (BOOL)_haveQueuedMessageForRegistration:(id)registration inQueueForKey:(id)key
{
  registrationCopy = registration;
  keyCopy = key;
  v8 = [keyCopy length];
  v9 = 0;
  if (registrationCopy && v8)
  {
    [(IDSAppleIDRegistrationCenter *)self _queueForKey:keyCopy];
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

          userInfo = [*(*(&v18 + 1) + 8 * i) userInfo];
          v16 = [userInfo objectForKey:@"info"];

          if (v16 == registrationCopy || ([v16 isEqual:registrationCopy] & 1) != 0)
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

- (void)_removeMessageForRegistration:(id)registration fromQueueForKey:(id)key
{
  registrationCopy = registration;
  keyCopy = key;
  v8 = [keyCopy length];
  if (registrationCopy && v8)
  {
    selfCopy = self;
    v20 = keyCopy;
    v9 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:keyCopy];
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
          userInfo = [v16 userInfo];
          v18 = [userInfo objectForKey:@"info"];

          if (v18 == registrationCopy || [v18 isEqual:registrationCopy])
          {
            [v10 removeObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    keyCopy = v20;
    [(IDSAppleIDRegistrationCenter *)selfCopy _setQueue:v10 forKey:v20];
  }
}

- (void)_notifyInitialRegionQuerySuccess:(id)success
{
  successCopy = success;
  if ([successCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = successCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back initial region query success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2288];
    [v6 removeObjectIdenticalTo:successCopy];

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = _copyForEnumerating;
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
            [v11 center:self succeededInitialRegionQuery:{successCopy, v12}];
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

- (void)_notifyRegionValidationSuccess:(id)success regionID:(id)d phoneNumber:(id)number context:(id)context verified:(BOOL)verified
{
  verifiedCopy = verified;
  successCopy = success;
  dCopy = d;
  numberCopy = number;
  contextCopy = context;
  v33 = successCopy;
  isDisabled = [successCopy isDisabled];
  v16 = +[IMRGLog registration];
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (isDisabled)
  {
    if (v17)
    {
      *buf = 138412290;
      v40 = successCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Not reflecting back region validation success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    if (v17)
    {
      v18 = @"NO";
      *buf = 138413314;
      v40 = successCopy;
      if (verifiedCopy)
      {
        v18 = @"YES";
      }

      v41 = 2112;
      v42 = dCopy;
      v43 = 2112;
      v44 = numberCopy;
      v45 = 2112;
      v46 = contextCopy;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Notifying of region validation success for registration: %@    region: %@   phone number: %@   context: %@  verified: %@", buf, 0x34u);
    }

    [successCopy setRegionID:dCopy];
    [successCopy setRegionBasePhoneNumber:numberCopy];
    [successCopy setRegionServerContext:contextCopy];
    v19 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
    [v19 removeObjectIdenticalTo:successCopy];

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = _copyForEnumerating;
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
            [v25 center:self succeededRegionValidation:v33 regionID:dCopy phoneNumber:numberCopy extraContext:contextCopy verified:verifiedCopy];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    v26 = +[FTNetworkSupport sharedInstance];
    wiFiActiveAndReachable = [v26 wiFiActiveAndReachable];

    if (wiFiActiveAndReachable)
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

- (void)_notifyRegionValidationFailure:(id)failure responseCode:(int64_t)code registrationError:(int64_t)error error:(id)a6 info:(id)info
{
  failureCopy = failure;
  v42 = a6;
  infoCopy = info;
  if ([failureCopy isDisabled])
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = failureCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not reflecting back region validation success, registration is disabled: %@", buf, 0xCu);
    }

    goto LABEL_44;
  }

  codeCopy = code;
  v15 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
  [v15 removeObjectIdenticalTo:failureCopy];

  sub_100450174(0, @"Registration", @"Region Validation failed", 1073);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = _copyForEnumerating;
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
          [v21 center:self failedRegionValidation:failureCopy error:error info:infoCopy];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v18);
  }

  domain = [v42 domain];
  v41 = [domain isEqualToString:NSPOSIXErrorDomain];

  domain2 = [v42 domain];
  if ([domain2 isEqualToString:NSURLErrorDomain])
  {
    v24 = 1;
  }

  else
  {
    domain3 = [v42 domain];
    v24 = [domain3 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v26 = +[FTNetworkSupport sharedInstance];
  wiFiActiveAndReachable = [v26 wiFiActiveAndReachable];

  if (wiFiActiveAndReachable)
  {
    v28 = 2;
  }

  else
  {
    v28 = 1;
  }

  v39 = v28;
  sub_100022FD8(codeCopy);
  sub_1000236A8(error);
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
  v33 = sub_100022FD8(codeCopy);
  v34 = sub_1000236A8(error);
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

- (void)_notifyAuthenticating:(id)authenticating
{
  authenticatingCopy = authenticating;
  if ([authenticatingCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = authenticatingCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back started authenticating, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    if ([authenticatingCopy registrationStatus] <= 5)
    {
      [authenticatingCopy setRegistrationStatus:5];
    }

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = _copyForEnumerating;
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
            [v10 center:self startedAuthenticating:{authenticatingCopy, v11}];
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

- (void)_notifyAuthenticationFailure:(id)failure responseCode:(int64_t)code registrationError:(int64_t)error error:(id)a6 info:(id)info
{
  failureCopy = failure;
  v13 = a6;
  infoCopy = info;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v38 = _os_activity_create(&_mh_execute_header, "Apple ID registration center notify authentication failure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v38, &state);
  if ([failureCopy isDisabled])
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = failureCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not reflecting back authentication failure, registration is disabled: %@", buf, 0xCu);
    }

LABEL_30:

    goto LABEL_31;
  }

  v16 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
  [v16 removeObject:failureCopy];

  if ([failureCopy registrationStatus] <= 6)
  {
    [failureCopy setRegistrationStatus:-1];
  }

  sub_100450174(0, @"Registration", @"Authentication failure", 1073);
  _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  codeCopy = code;
  v32 = v13;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v18 = _copyForEnumerating;
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
          [v22 center:self failedAuthentication:failureCopy error:error info:infoCopy];
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v19);
  }

  domain = [v32 domain];
  v24 = [domain isEqualToString:NSPOSIXErrorDomain];

  domain2 = [v32 domain];
  if ([domain2 isEqualToString:NSURLErrorDomain])
  {
    v26 = 1;
  }

  else
  {
    domain3 = [v32 domain];
    v26 = [domain3 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v28 = +[FTNetworkSupport sharedInstance];
  [v28 wiFiActiveAndReachable];

  sub_100022FD8(codeCopy);
  sub_1000236A8(error);
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

- (void)_notifyAuthenticationSuccess:(id)success
{
  successCopy = success;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v19 = _os_activity_create(&_mh_execute_header, "Apple ID registration center notify authentication success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v19, &state);
  if ([successCopy isDisabled])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = successCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not reflecting back authentication success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    [v6 removeObject:successCopy];

    _copyForEnumerating = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = _copyForEnumerating;
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
            [v12 center:self succeededAuthentication:{successCopy, v14}];
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

- (void)_postUserNotificationWithTitle:(id)title message:(id)message identifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  messageCopy = message;
  titleCopy = title;
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = IMLocalizedStringFromTableInBundle();
  v14 = IMLocalizedStringFromTableInBundle();
  v15 = [IMUserNotification userNotificationWithIdentifier:identifierCopy title:titleCopy message:messageCopy defaultButton:v13 alternateButton:v14 otherButton:0];

  v16 = +[IMUserNotificationCenter sharedInstance];
  [v16 addUserNotification:v15 listener:0 completionHandler:handlerCopy];
}

- (void)_processDefaultInvitationContextMessage:(id)message deliveredWithError:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary
{
  messageCopy = message;
  errorCopy = error;
  dictionaryCopy = dictionary;
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20[0] = 67109634;
    v20[1] = code;
    v21 = 2112;
    v22 = errorCopy;
    v23 = 2112;
    v24 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  Received default invitation context with result: %d  error: %@  result dictionary: %@", v20, 0x1Cu);
  }

  userInfo = [messageCopy userInfo];
  v15 = [userInfo objectForKey:@"info"];

  if (code == 6005)
  {
    sub_100450174(0, @"Registration", @"Need to re-authenticate", 1073);
    [v15 setAuthenticationToken:0];
  }

  else if (code)
  {
    sub_100450174(0, @"Registration", @"Default context query failed", 1073);
  }

  else
  {
    responseRegionID = [messageCopy responseRegionID];
    if (responseRegionID)
    {
      responseRegionID2 = [messageCopy responseRegionID];
    }

    else
    {
      responseRegionID2 = &stru_100C06028;
    }

    responseBasePhoneNumber = [messageCopy responseBasePhoneNumber];
    responseExtraInfo = [messageCopy responseExtraInfo];
    -[IDSAppleIDRegistrationCenter _notifyRegionValidationSuccess:regionID:phoneNumber:context:verified:](self, "_notifyRegionValidationSuccess:regionID:phoneNumber:context:verified:", v15, responseRegionID2, responseBasePhoneNumber, responseExtraInfo, [messageCopy responseValidated]);

    if (responseRegionID)
    {
    }
  }

  [(IDSAppleIDRegistrationCenter *)self _notifyInitialRegionQuerySuccess:v15];
}

- (void)_processRegionValidationMessage:(id)message deliveredWithError:(id)error resultCode:(int64_t)code resultDictionary:(id)dictionary
{
  messageCopy = message;
  errorCopy = error;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109378;
    v19[1] = code;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  Received region validation response with result: %d  error: %@", v19, 0x12u);
  }

  userInfo = [messageCopy userInfo];
  v13 = [userInfo objectForKey:@"info"];

  if (code == 6005)
  {
    sub_100450174(0, @"Registration", @"Need to re-authenticate", 1073);
    [v13 setAuthenticationToken:0];
    [(IDSAppleIDRegistrationCenter *)self _renewTokenForRegistrationInfo:v13 forceRenewal:0 failIfNotSilent:0];
  }

  else if (code)
  {
    sub_100450174(0, @"Registration", @"Region validation failed", 1073);
    responseAlertInfo = [messageCopy responseAlertInfo];
    [(IDSAppleIDRegistrationCenter *)self _notifyRegionValidationFailure:v13 responseCode:code registrationError:46 error:errorCopy info:responseAlertInfo];
  }

  else
  {
    responseRegionID = [messageCopy responseRegionID];
    if (responseRegionID)
    {
      responseRegionID2 = [messageCopy responseRegionID];
    }

    else
    {
      responseRegionID2 = &stru_100C06028;
    }

    responseBasePhoneNumber = [messageCopy responseBasePhoneNumber];
    responseExtraInfo = [messageCopy responseExtraInfo];
    [(IDSAppleIDRegistrationCenter *)self _notifyRegionValidationSuccess:v13 regionID:responseRegionID2 phoneNumber:responseBasePhoneNumber context:responseExtraInfo verified:1];

    if (responseRegionID)
    {
    }
  }
}

- (void)_noteSuccessfulToken:(id)token profileID:(id)d selfID:(id)iD forRegistrationInfo:(id)info wasFetched:(BOOL)fetched
{
  fetchedCopy = fetched;
  tokenCopy = token;
  dCopy = d;
  iDCopy = iD;
  infoCopy = info;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v25 = _os_activity_create(&_mh_execute_header, "Apple ID registration center note successful token", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v25, &state);
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"NO";
    *buf = 134219010;
    v27 = tokenCopy;
    if (fetchedCopy)
    {
      v17 = @"YES";
    }

    v28 = 2112;
    v29 = dCopy;
    v30 = 2112;
    v31 = iDCopy;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = infoCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Noting successful token: %p   for profile ID: %@   self handle: %@  wasFetched: %@  registration: %@", buf, 0x34u);
  }

  if ([dCopy rangeOfString:@"@"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    profileID = [infoCopy profileID];
    if (!profileID || ([infoCopy profileID], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isEqualToString:", dCopy), v19, profileID, (v20 & 1) == 0))
    {
      [infoCopy setProfileID:dCopy];
    }
  }

  else
  {
    v21 = +[IMRGLog warning];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_10092E09C(dCopy, v21);
    }

    IMLogBacktrace();
  }

  if ([iDCopy length])
  {
    [infoCopy setDSHandle:iDCopy];
  }

  if (!fetchedCopy)
  {
    authenticationToken = [infoCopy authenticationToken];
    v23 = authenticationToken;
    if (!authenticationToken || ([authenticationToken isEqualToString:tokenCopy] & 1) == 0)
    {
      [infoCopy setAuthenticationToken:tokenCopy];
    }
  }

  [(IDSAppleIDRegistrationCenter *)self _notifyAuthenticationSuccess:infoCopy];
  [(IDSAppleIDRegistrationCenter *)self _serviceQueueForKey:off_100CB2288];
  [(IDSAppleIDRegistrationCenter *)self _serviceQueueForKey:off_100CB2290];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_renewTokenForRegistrationInfo:(id)info forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent
{
  renewalCopy = renewal;
  infoCopy = info;
  v9 = +[IMRGLog registration];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (infoCopy)
  {
    if (v10)
    {
      *buf = 138412290;
      v22 = infoCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting renew for %@", buf, 0xCu);
    }

    passwordManager = self->_passwordManager;
    profileID = [infoCopy profileID];
    email = [infoCopy email];
    v14 = IMStripLoginID();
    lowercaseString = [v14 lowercaseString];
    serviceType = [infoCopy serviceType];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100696530;
    v18[3] = &unk_100BE3FA8;
    v19 = infoCopy;
    selfCopy = self;
    LOBYTE(v17) = silent;
    [(FTPasswordManager *)passwordManager requestAuthTokenForProfileID:profileID username:lowercaseString service:serviceType badPassword:0 showForgotPassword:0 forceRenewal:renewalCopy failIfNotSilent:v17 outRequestID:0 completionBlock:v18];

    v9 = v19;
  }

  else if (v10)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Empty registration info supplied for password fetch, bailing", buf, 2u);
  }
}

- (void)_fetchTokenForRegistrationInfo:(id)info failIfNotSilent:(BOOL)silent failureBlock:(id)block
{
  infoCopy = info;
  blockCopy = block;
  v10 = +[IMRGLog registration];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (infoCopy)
  {
    if (v11)
    {
      *buf = 138412290;
      v23 = infoCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Starting token fetch for %@", buf, 0xCu);
    }

    passwordManager = self->_passwordManager;
    profileID = [infoCopy profileID];
    email = [infoCopy email];
    lowercaseString = [email lowercaseString];
    serviceType = [infoCopy serviceType];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1006969B8;
    v17[3] = &unk_100BE3FD0;
    v18 = infoCopy;
    selfCopy = self;
    v20 = blockCopy;
    silentCopy = silent;
    [(FTPasswordManager *)passwordManager fetchAuthTokenForProfileID:profileID username:lowercaseString service:serviceType outRequestID:0 completionBlock:v17];
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Empty registration info supplied for password fetch, bailing", buf, 2u);
    }

    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }
  }
}

- (BOOL)_sendAuthenticationRequest:(id)request forceNew:(BOOL)new forceRenewal:(BOOL)renewal failIfNotSilent:(BOOL)silent
{
  renewalCopy = renewal;
  newCopy = new;
  requestCopy = request;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v22 = _os_activity_create(&_mh_execute_header, "Apple ID registration center authentication request", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v22, &state);
  if ([requestCopy registrationStatus] <= 3)
  {
    [requestCopy setRegistrationStatus:4];
  }

  email = [requestCopy email];
  v12 = [email length];

  if (v12)
  {
    v13 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    if ([v13 containsObject:requestCopy])
    {
      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = requestCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not adding this to the queue, we're already trying to authenticate: %@", buf, 0xCu);
      }
    }

    else
    {
      [v13 addObject:requestCopy];
      v16 = silent || [requestCopy registrationType] == 2;
      v17 = +[IMRGLog registration];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = +[FTDeviceSupport sharedInstance];
        deviceInformationString = [v18 deviceInformationString];
        *buf = 138412546;
        v24 = requestCopy;
        v25 = 2112;
        v26 = deviceInformationString;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetching password for: %@  (Environment: %@)", buf, 0x16u);
      }

      if (newCopy)
      {
        [(IDSAppleIDRegistrationCenter *)self _renewTokenForRegistrationInfo:requestCopy forceRenewal:renewalCopy failIfNotSilent:v16];
      }

      else
      {
        [(IDSAppleIDRegistrationCenter *)self _fetchTokenForRegistrationInfo:requestCopy failIfNotSilent:v16 failureBlock:0];
      }
    }
  }

  else
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = requestCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No email present for registration: %@", buf, 0xCu);
    }

    [(IDSAppleIDRegistrationCenter *)self _notifyAuthenticationFailure:requestCopy responseCode:1 registrationError:16 error:0 info:0];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v12 != 0;
}

- (BOOL)_registrationIsAuthenticating:(id)authenticating
{
  v4 = off_100CB2298;
  authenticatingCopy = authenticating;
  v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:v4];
  LOBYTE(v4) = [v6 containsObject:authenticatingCopy];

  return v4;
}

- (BOOL)_registrationNeedsAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  authenticationToken = [authenticationCopy authenticationToken];
  v7 = (!authenticationToken || (v5 = authenticationToken, [authenticationCopy profileID], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6)) && objc_msgSend(authenticationCopy, "registrationType") == 1;

  return v7;
}

- (BOOL)_validateRegionID:(id)d phoneNumber:(id)number registration:(id)registration
{
  dCopy = d;
  numberCopy = number;
  registrationCopy = registration;
  v11 = objc_alloc_init(IDSProfileValidateInvitationContext);
  v12 = sub_10001F5A0(registrationCopy);
  [(IDSProfileValidateInvitationContext *)v11 setDSAuthID:v12];

  pushToken = [registrationCopy pushToken];
  [(IDSProfileMessage *)v11 setPushToken:pushToken];

  profileID = [registrationCopy profileID];
  [(IDSProfileMessage *)v11 setProfileID:profileID];

  authenticationToken = [registrationCopy authenticationToken];
  [(IDSProfileMessage *)v11 setAuthToken:authenticationToken];

  [(IDSProfileValidateInvitationContext *)v11 setRegionID:dCopy];
  [(IDSProfileValidateInvitationContext *)v11 setBasePhoneNumber:numberCopy];
  v16 = [NSDictionary dictionaryWithObject:registrationCopy forKey:@"info"];
  [(IDSProfileValidateInvitationContext *)v11 setUserInfo:v16];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100697354;
  v20[3] = &unk_100BE07C8;
  v20[4] = self;
  [(IDSProfileValidateInvitationContext *)v11 setCompletionBlock:v20];
  if ([(IDSAppleIDRegistrationCenter *)self _registrationNeedsAuthentication:registrationCopy])
  {
    v17 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2290];
    [v17 addObject:v11];

    if (![(IDSAppleIDRegistrationCenter *)self _registrationIsAuthenticating:registrationCopy])
    {
      [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:0];
    }
  }

  else
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v22 = dCopy;
      v23 = 2112;
      v24 = numberCopy;
      v25 = 2112;
      v26 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending region validation request: %@ number: %@ (%@)", buf, 0x20u);
    }

    [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery sendMessage:v11];
  }

  return 1;
}

- (BOOL)_queryInitialInvitationContextForRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = objc_alloc_init(IDSProfileGetDefaultInvitationContext);
  v6 = sub_10001F5A0(registrationCopy);
  [(IDSProfileGetDefaultInvitationContext *)v5 setDSAuthID:v6];

  pushToken = [registrationCopy pushToken];
  [(IDSProfileMessage *)v5 setPushToken:pushToken];

  profileID = [registrationCopy profileID];
  [(IDSProfileMessage *)v5 setProfileID:profileID];

  authenticationToken = [registrationCopy authenticationToken];
  [(IDSProfileMessage *)v5 setAuthToken:authenticationToken];

  v10 = [NSDictionary dictionaryWithObject:registrationCopy forKey:@"info"];
  [(IDSProfileGetDefaultInvitationContext *)v5 setUserInfo:v10];

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006975AC;
  v14[3] = &unk_100BE07C8;
  v14[4] = self;
  [(IDSProfileGetDefaultInvitationContext *)v5 setCompletionBlock:v14];
  if ([(IDSAppleIDRegistrationCenter *)self _registrationNeedsAuthentication:registrationCopy])
  {
    v11 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2288];
    [v11 addObject:v5];

    if (![(IDSAppleIDRegistrationCenter *)self _registrationIsAuthenticating:registrationCopy])
    {
      [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:0];
    }
  }

  else
  {
    v12 = +[IMRGLog registration];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = registrationCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending initial context request for: %@", buf, 0xCu);
    }

    [(IDSAppleIDRegistrationCenterMessageDelivery *)self->_messageDelivery sendMessage:v5];
  }

  return 1;
}

- (BOOL)queryInitialInvitationContextForRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting initial context for: %@", &v8, 0xCu);
  }

  v6 = [(IDSAppleIDRegistrationCenter *)self _queryInitialInvitationContextForRegistration:registrationCopy];
  return v6;
}

- (BOOL)validateRegion:(id)region phoneNumber:(id)number forRegistration:(id)registration
{
  regionCopy = region;
  numberCopy = number;
  registrationCopy = registration;
  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = regionCopy;
    v16 = 2112;
    v17 = numberCopy;
    v18 = 2112;
    v19 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Requesting region validation for: %@  number: %@, %@", &v14, 0x20u);
  }

  v12 = [(IDSAppleIDRegistrationCenter *)self _validateRegionID:regionCopy phoneNumber:numberCopy registration:registrationCopy];
  return v12;
}

- (BOOL)authenticateRegistration:(id)registration forceRenewal:(BOOL)renewal requireSilentAuth:(BOOL)auth
{
  authCopy = auth;
  renewalCopy = renewal;
  registrationCopy = registration;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v12, 0xCu);
  }

  v10 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:renewalCopy forceRenewal:renewalCopy failIfNotSilent:authCopy];
  return v10;
}

- (BOOL)authenticateRegistration:(id)registration forceNewToken:(BOOL)token requireSilentAuth:(BOOL)auth
{
  authCopy = auth;
  tokenCopy = token;
  registrationCopy = registration;
  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v12, 0xCu);
  }

  v10 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:tokenCopy failIfNotSilent:authCopy];
  return v10;
}

- (BOOL)authenticateRegistration:(id)registration forceNewToken:(BOOL)token
{
  tokenCopy = token;
  registrationCopy = registration;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v10, 0xCu);
  }

  v8 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:tokenCopy failIfNotSilent:0];
  return v8;
}

- (BOOL)authenticateRegistration:(id)registration requireSilentAuth:(BOOL)auth
{
  authCopy = auth;
  registrationCopy = registration;
  v7 = +[IMRGLog registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v10, 0xCu);
  }

  v8 = [(IDSAppleIDRegistrationCenter *)self _sendAuthenticationRequest:registrationCopy forceNew:0 failIfNotSilent:authCopy];
  return v8;
}

- (BOOL)authenticateRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = registrationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Kicking off authentication request for: %@", &v8, 0xCu);
  }

  v6 = [(IDSAppleIDRegistrationCenter *)self authenticateRegistration:registrationCopy forceNewToken:0];
  return v6;
}

- (void)cancelActionsForRegistrationInfo:(id)info
{
  if (info)
  {
    v4 = off_100CB2288;
    infoCopy = info;
    [(IDSAppleIDRegistrationCenter *)self _removeMessageForRegistration:infoCopy fromQueueForKey:v4];
    [(IDSAppleIDRegistrationCenter *)self _removeMessageForRegistration:infoCopy fromQueueForKey:off_100CB2290];
    v6 = [(IDSAppleIDRegistrationCenter *)self _queueForKey:off_100CB2298];
    [v6 removeObject:infoCopy];
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

- (void)removeListener:(id)listener
{
  [(NSMutableArray *)self->_handlers removeObjectIdenticalTo:listener];
  if (![(NSMutableArray *)self->_handlers count])
  {
    handlers = self->_handlers;
    self->_handlers = 0;
  }
}

@end