@interface IDSRegistrationCenter
+ (IDSRegistrationCenter)sharedInstance;
- (BOOL)_checkOverRegistrations;
- (BOOL)_hasRegistration:(id)a3 inQueue:(id)a4;
- (BOOL)_queryValidatedEmailsForRegistration:(id)a3 allowPasswordPrompt:(BOOL)a4 completionBlock:(id)a5;
- (BOOL)_sendKTOptInStatusForRegistration:(id)a3 withOptInOutRequest:(id)a4 withCompletion:(id)a5;
- (BOOL)_sendKTOptInStatusUpdateForRegistration:(id)a3 withOptInStatus:(BOOL)a4 withCompletion:(id)a5;
- (BOOL)_sendPseudonymMessageOperation:(unint64_t)a3 forURI:(id)a4 pseudonymURI:(id)a5 properties:(id)a6 requestProperties:(id)a7 forRegistration:(id)a8 completionBlock:(id)a9;
- (BOOL)authenticateRegistration:(id)a3;
- (BOOL)isRegistering:(id)a3;
- (BOOL)provisionPseudonymFor:(id)a3 withURI:(id)a4 properties:(id)a5 requestProperties:(id)a6 completionBlock:(id)a7;
- (BOOL)queryValidatedEmailsForRegistration:(id)a3 allowPasswordPrompt:(BOOL)a4 completionBlock:(id)a5;
- (BOOL)renewPseudonym:(id)a3 forRegistration:(id)a4 forUpdatedExpiryEpoch:(double)a5 requestProperties:(id)a6 completionBlock:(id)a7;
- (BOOL)revokePseudonym:(id)a3 forRegistration:(id)a4 requestProperties:(id)a5 completionBlock:(id)a6;
- (BOOL)sendDeregistration:(id)a3;
- (BOOL)sendRegistration:(id)a3;
- (BOOL)updateKTOptInStatusForRegistration:(id)a3 withOptInOutRequest:(id)a4 withCompletion:(id)a5;
- (BOOL)updateKTOptInStatusForRegistration:(id)a3 withOptInStatus:(BOOL)a4 withCompletion:(id)a5;
- (IDSRegistrationCenter)init;
- (IDSRegistrationCenter)initWithMessageDelivery:(id)a3 pushHandler:(id)a4 keyTransparencyVerifier:(id)a5 registrationEventTracer:(id)a6;
- (double)_updatePseudonymExpiryEpoch:(double)a3;
- (id)_URIsToRegisterForRegistration:(id)a3;
- (id)_assignSlotIDToLabelID:(id)a3 telephonyAdapater:(id)a4;
- (id)_authDSMessageForRegistration:(id)a3 realm:(id)a4;
- (id)_authMessageCompletionWithRegistration:(id)a3 withOverallSuccessBlock:(id)a4 overallFailure:(id)a5;
- (id)_authMessageForRegistration:(id)a3;
- (id)_authUsersMessageForRegistration:(id)a3 realm:(id)a4;
- (id)_geoRegion;
- (id)_keyTransparencyAccountKeyFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5;
- (id)_keyTransparencyDeviceSignatureFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5;
- (id)_keyTransparencyLoggableDataFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5;
- (id)_provTemporaryPhoneMessageForRegistration:(id)a3;
- (id)_trustedDeviceForRegistrations:(id)a3 transparencyLoggableDatasByServiceType:(id)a4 transparencyDeviceSignaturesByServiceType:(id)a5;
- (id)activeRegistrations;
- (id)privateDeviceDataForKVSSuccess:(BOOL)a3;
- (int64_t)_countOfMessagesQueuedOfType:(Class)a3 matchingCriteria:(id)a4;
- (unint64_t)_disableSecondaryRegistrationPercentage;
- (void)__dumpState;
- (void)__reallySendAuthenticateRegistration;
- (void)__reallySendDeregistration;
- (void)__reallySendRegistration;
- (void)__sendMessage:(id)a3;
- (void)_dequeuePendingRequestsIfNecessary;
- (void)_noteRegistration;
- (void)_notifyAllSuccessfulRegistrations:(id)a3;
- (void)_notifyEmailQueryFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7;
- (void)_notifyEmailQuerySuccess:(id)a3 emailInfo:(id)a4;
- (void)_notifyIDSAuthenticationSuccess:(id)a3;
- (void)_notifyProvisionFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 fatal:(BOOL)a7 info:(id)a8;
- (void)_notifyRegistrationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7;
- (void)_notifyRegistrationIdentitiesUpdated;
- (void)_notifyRegistrationSuccess:(id)a3;
- (void)_processGetHandlesMessage:(id)a3 registrations:(id)a4 deliveredWithError:(id)a5 resultCode:(int64_t)a6 resultDictionary:(id)a7 allowPasswordPrompt:(BOOL)a8;
- (void)_processRegistrationMessage:(id)a3 sentRegistrations:(id)a4 descriptionString:(id)a5 actionID:(id)a6 actionString:(id)a7 isDeregister:(BOOL)a8 deliveredWithError:(id)a9 resultCode:(int64_t)a10 resultDictionary:(id)a11;
- (void)_sendAuthenticateRegistration:(id)a3;
- (void)_sendDeregistration:(id)a3;
- (void)_sendIDSAuthRequest:(id)a3 forInfo:(id)a4;
- (void)_sendRegistrationAsDeregister:(BOOL)a3;
- (void)_shouldDisableSecondaryRegistration;
- (void)addListener:(id)a3;
- (void)buildValidationCredentialsIfNeeded;
- (void)cancelActionsForRegistrationInfo:(id)a3;
- (void)cancelRegisterActionsForRegistrationInfo:(id)a3;
- (void)dealloc;
- (void)engramKeyStoreDidUpdateIdentities:(id)a3;
- (void)handler:(id)a3 pushTokenChanged:(id)a4;
- (void)logState;
- (void)removeListener:(id)a3;
- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 registration:(id)a6 withCompletion:(id)a7;
- (void)reportClientEvent:(id)a3 registration:(id)a4 completion:(id)a5;
- (void)reportSpamMessage:(id)a3 selfURI:(id)a4 registration:(id)a5;
- (void)reportSpamWithMessages:(id)a3 selfURI:(id)a4 registration:(id)a5;
- (void)reportUnknownSenderMessage:(id)a3 selfURI:(id)a4 registration:(id)a5;
- (void)reportiMessageSpamCheckUnknown:(id)a3 count:(id)a4 completionBlock:(id)a5;
- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 selfURI:(id)a8 registration:(id)a9;
- (void)retrieveFeatureToggleStateForFeatureID:(id)a3 registration:(id)a4 completionBlock:(id)a5;
- (void)sendDeactivationRequestWithSIM:(id)a3 Info:(id)a4;
- (void)sendHardDeregisterCompletionBlock:(id)a3;
- (void)sendValidateCredential:(id)a3 withDeliveryCompletionBlock:(id)a4;
- (void)updateFeatureToggleState:(unint64_t)a3 forFeatureID:(id)a4 registration:(id)a5 completionBlock:(id)a6;
@end

@implementation IDSRegistrationCenter

+ (IDSRegistrationCenter)sharedInstance
{
  if (qword_100CBEE78 != -1)
  {
    sub_1009288F0();
  }

  v3 = qword_100CBEE80;

  return v3;
}

- (void)__dumpState
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "======= Registration State =======", &v29, 2u);
  }

  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    dateSentLastHTTPMessage = self->_dateSentLastHTTPMessage;
    v29 = 138412290;
    v30 = dateSentLastHTTPMessage;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "     Last sent message: %@", &v29, 0xCu);
  }

  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    dateLastRegistered = self->_dateLastRegistered;
    v29 = 138412290;
    v30 = dateLastRegistered;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "       Last registered: %@", &v29, 0xCu);
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", &v29, 2u);
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery currentMessage];
    v29 = 138412290;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "     Message in Flight: %@", &v29, 0xCu);
  }

  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery queuedMessages];
    v29 = 138412290;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "       Messages queued: %@", &v29, 0xCu);
  }

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "", &v29, 2u);
  }

  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    queuedAuthentications = self->_queuedAuthentications;
    v29 = 138412290;
    v30 = queuedAuthentications;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "          Queued Auths: %@", &v29, 0xCu);
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    queuedRegistrations = self->_queuedRegistrations;
    v29 = 138412290;
    v30 = queuedRegistrations;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "            Queued Reg: %@", &v29, 0xCu);
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    currentAuthentications = self->_currentAuthentications;
    v29 = 138412290;
    v30 = currentAuthentications;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "         Current Auths: %@", &v29, 0xCu);
  }

  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    currentRegistrations = self->_currentRegistrations;
    v29 = 138412290;
    v30 = currentRegistrations;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "           Current Reg: %@", &v29, 0xCu);
  }

  v22 = +[IMRGLog registration];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "", &v29, 2u);
  }

  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(IDSValidationQueue *)self->_validationQueue isBuildingContextForSubsystem:1];
    v25 = @"NO";
    if (v24)
    {
      v25 = @"YES";
    }

    v29 = 138412290;
    v30 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "     Building Absinthe: %@", &v29, 0xCu);
  }

  v26 = +[IMRGLog registration];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    registrations = self->_registrations;
    v29 = 67109120;
    LODWORD(v30) = registrations;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "  Recent Registrations: %d", &v29, 8u);
  }

  v28 = +[IMRGLog registration];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v29) = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "==================================", &v29, 2u);
  }
}

- (IDSRegistrationCenter)initWithMessageDelivery:(id)a3 pushHandler:(id)a4 keyTransparencyVerifier:(id)a5 registrationEventTracer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v65.receiver = self;
  v65.super_class = IDSRegistrationCenter;
  v15 = [(IDSRegistrationCenter *)&v65 init];
  if (v15)
  {
    v58 = v11;
    v16 = objc_alloc_init(NSMutableArray);
    currentAuthentications = v15->_currentAuthentications;
    v15->_currentAuthentications = v16;

    v18 = objc_alloc_init(NSMutableArray);
    currentRegistrations = v15->_currentRegistrations;
    v15->_currentRegistrations = v18;

    objc_storeStrong(&v15->_httpMessageDelivery, a3);
    [(IDSRegistrationCenterMessageDelivery *)v15->_httpMessageDelivery setUserAgent:@"com.apple.invitation-registration"];
    [(IDSRegistrationCenterMessageDelivery *)v15->_httpMessageDelivery setRetryInAirplaneMode:1];
    [(IDSRegistrationCenterMessageDelivery *)v15->_httpMessageDelivery setLogToRegistration:1];
    objc_storeStrong(&v15->_pushHandler, a4);
    pushHandler = v15->_pushHandler;
    v21 = im_primary_queue();
    [(IDSPushHandler *)pushHandler addListener:v15 topics:0 commands:0 queue:v21];

    v22 = [IDSValidationQueue alloc];
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 3221225472;
    v63[2] = sub_1005205C4;
    v63[3] = &unk_100BDEB30;
    v23 = v15;
    v64 = v23;
    v24 = [(IDSValidationQueue *)v22 initWithValidationMessageSendBlock:v63];
    validationQueue = v23->_validationQueue;
    v23->_validationQueue = v24;

    objc_storeStrong(&v23->_keyTransparencyVerifier, a5);
    objc_storeStrong(&v23->_eventTracer, a6);
    v61[0] = _NSConcreteStackBlock;
    v61[1] = 3221225472;
    v61[2] = sub_1005205D0;
    v61[3] = &unk_100BDEB30;
    v26 = v23;
    v62 = v26;
    v27 = objc_retainBlock(v61);
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_10052062C;
    v59[3] = &unk_100BD6ED0;
    v28 = v26;
    v60 = v28;
    v29 = objc_retainBlock(v59);
    v30 = [IDSGetDependentRegistrationsCenter alloc];
    v31 = v15->_pushHandler;
    v32 = +[IMLockdownManager sharedInstance];
    +[IDSDeviceHeartbeatCenter sharedInstance];
    v33 = v57 = v12;
    +[FTNetworkSupport sharedInstance];
    v56 = v14;
    v35 = v34 = v13;
    v36 = [(IDSGetDependentRegistrationsCenter *)v30 initWithPushHandler:v31 lockdownManager:v32 heartbeatCenter:v33 ftNetworkSupport:v35 sendMessageHandlerBlock:v27 messageResponseHandlerBlock:v29];
    gdrCenter = v28->_gdrCenter;
    v28->_gdrCenter = v36;

    v38 = [CUTDeferredTaskQueue alloc];
    v39 = im_primary_queue();
    v40 = [v38 initWithQueue:v39 block:&stru_100BDF700];
    sendAuthenticateRegistrationTask = v28->_sendAuthenticateRegistrationTask;
    v28->_sendAuthenticateRegistrationTask = v40;

    v42 = [CUTDeferredTaskQueue alloc];
    v43 = im_primary_queue();
    v44 = [v42 initWithCapacity:1 queue:v43 block:&stru_100BDF720];
    sendRegistrationTask = v28->_sendRegistrationTask;
    v28->_sendRegistrationTask = v44;

    v46 = [CUTDeferredTaskQueue alloc];
    v47 = im_primary_queue();
    v48 = [v46 initWithCapacity:1 queue:v47 block:&stru_100BDF740];
    sendDeregistrationTask = v28->_sendDeregistrationTask;
    v28->_sendDeregistrationTask = v48;

    v13 = v34;
    v14 = v56;
    v50 = [CUTDeferredTaskQueue alloc];
    v51 = im_primary_queue();
    v52 = v50;
    v11 = v58;
    v53 = [v52 initWithCapacity:1 queue:v51 block:&stru_100BDF760];
    cleanupAbsintheTask = v28->_cleanupAbsintheTask;
    v28->_cleanupAbsintheTask = v53;

    v12 = v57;
  }

  return v15;
}

- (IDSRegistrationCenter)init
{
  v3 = +[IDSDependencyProvider messageDeliveryFactory];
  v4 = [v3 createHTTPMessageDelivery];

  v5 = +[IDSRegistrationRequestTracker sharedInstance];
  [v4 addRequestObserver:v5];

  v6 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
  v7 = +[IDSKeyTransparencyVerifier sharedInstance];
  v8 = +[IDSRegistrationEventTracing sharedInstance];
  v9 = [(IDSRegistrationCenter *)self initWithMessageDelivery:v4 pushHandler:v6 keyTransparencyVerifier:v7 registrationEventTracer:v8];

  return v9;
}

- (void)dealloc
{
  [(IDSPushHandler *)self->_pushHandler removeListener:self];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:0 object:0];

  queuedRegistrations = self->_queuedRegistrations;
  self->_queuedRegistrations = 0;

  [(IDSValidationQueue *)self->_validationQueue cleanupValidationInfoForSubsystemMechanism:1];
  [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery invalidate];
  v5.receiver = self;
  v5.super_class = IDSRegistrationCenter;
  [(IDSRegistrationCenter *)&v5 dealloc];
}

- (void)engramKeyStoreDidUpdateIdentities:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog engram];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "IDS registration center notified that Engram key store did update identities; notifying listeners", buf, 2u);
  }

  v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 centerUpdatedRegistrationIdentities:{self, v12}];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v8);
  }
}

- (void)logState
{
  [(IDSRegistrationCenter *)self __dumpState];
  NSLog(@"======= Registration State =======");
  NSLog(@"     Last sent message: %@", self->_dateSentLastHTTPMessage);
  NSLog(@"       Last registered: %@", self->_dateLastRegistered);
  NSLog(&stru_100C06028.isa);
  v3 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery currentMessage];
  NSLog(@"     Message in Flight: %@", v3);

  v4 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery queuedMessages];
  NSLog(@"       Messages queued: %@", v4);

  NSLog(&stru_100C06028.isa);
  NSLog(@"          Queued Auths: %@", self->_queuedAuthentications);
  NSLog(@"            Queued Reg: %@", self->_queuedRegistrations);
  NSLog(@"         Current Auths: %@", self->_currentAuthentications);
  NSLog(@"           Current Reg: %@", self->_currentRegistrations);
  NSLog(&stru_100C06028.isa);
  v5 = [(IDSValidationQueue *)self->_validationQueue isBuildingContextForSubsystem:1];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  NSLog(@"     Building Absinthe: %@", v6);
  NSLog(@"  Recent Registrations: %d", self->_registrations);
  NSLog(@"==================================");
}

- (void)__sendMessage:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*** Sending message: %@", &v8, 0xCu);
  }

  [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery sendMessage:v4];
  v6 = objc_alloc_init(NSDate);
  dateSentLastHTTPMessage = self->_dateSentLastHTTPMessage;
  self->_dateSentLastHTTPMessage = v6;

  [(IDSRegistrationCenter *)self __dumpState];
}

- (void)_shouldDisableSecondaryRegistration
{
  v2 = [(IDSRegistrationCenter *)self _disableSecondaryRegistrationPercentage];
  v3 = +[IMUserDefaults secondaryRegistrationDisabledDiceRoll];
  if (!v3)
  {
    v6 = [NSNumber numberWithUnsignedInt:arc4random_uniform(0x64u)];
    [IMUserDefaults setSecondaryRegistrationDisabledDiceRoll:v6];
    v3 = v6;
  }

  v7 = v3;
  v4 = [v3 unsignedIntValue];
  v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.ids"];
  if (v2 > v4 != [v5 BOOLForKey:@"SecondaryRegistrationDisabled"])
  {
    [v5 setBool:v2 > v4 forKey:@"SecondaryRegistrationDisabled"];
  }
}

- (unint64_t)_disableSecondaryRegistrationPercentage
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:@"ids-disable-secondary-wave2-registration-percentage"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_dequeuePendingRequestsIfNecessary
{
  if (!self->_pendingDequeue)
  {
    if ([(IDSRegistrationCenter *)self _checkOverRegistrations])
    {
      v3 = +[IMRGLog warning];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        sub_100928904();
      }

      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v8 = sub_1005210B8;
      v9 = &unk_100BD6ED0;
      v10 = self;
    }

    else
    {
      self->_pendingDequeue = 1;
      v4 = +[IMRGLog registration];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Kicking dequeue of pending requests", buf, 2u);
      }
    }

    im_dispatch_after_primary_queue();
  }
}

- (void)_notifyProvisionFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 fatal:(BOOL)a7 info:(id)a8
{
  v9 = a7;
  v13 = a3;
  v57 = a6;
  v14 = a8;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v63 = _os_activity_create(&_mh_execute_header, "ids/authenticate/fail", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v63, &state);
  add = atomic_fetch_add(&cut_log_group_generation, 1uLL);
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v13 mainID];
    *buf = 134218242;
    v68 = add;
    v69 = 2112;
    v70 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) main-id=%@", buf, 0x16u);
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v13 serviceIdentifier];
    *buf = 134218242;
    v68 = add;
    v69 = 2112;
    v70 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) service-id=%@", buf, 0x16u);
  }

  v20 = +[IMRGLog registration];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v68 = add;
    v69 = 2112;
    v70 = &__kCFBooleanFalse;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) successful=%@", buf, 0x16u);
  }

  v21 = +[IMRGLog registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v68 = add;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "!addGroup(%llu) authenticate", buf, 0xCu);
  }

  [(IDSValidationQueue *)self->_validationQueue cleanupValidationInfoForSubsystemMechanism:[(IDSRegistrationCenter *)self _authSubsystemForInfo:v13]];
  [(NSMutableArray *)self->_queuedRegistrations removeObjectIdenticalTo:v13];
  [(NSMutableArray *)self->_queuedAuthentications removeObjectIdenticalTo:v13];
  [(NSMutableArray *)self->_currentRegistrations removeObjectIdenticalTo:v13];
  [(NSMutableArray *)self->_currentAuthentications removeObjectIdenticalTo:v13];
  if (v57)
  {
    v65 = NSUnderlyingErrorKey;
    v66 = v57;
    v55 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  }

  else
  {
    v55 = 0;
  }

  v54 = [[IDSRegistrationEventTracingAuthenticationEvent alloc] initWithAuthenticationType:0];
  eventTracer = self->_eventTracer;
  v23 = [v13 registrationTraceID];
  v24 = [NSError errorWithDomain:@"IDSRegistrationError" code:a5 userInfo:v55];
  [(IDSRegistrationEventTracing *)eventTracer endEvent:v54 identifier:v23 error:v24];

  if (v9 && [v13 registrationStatus] <= 7)
  {
    [v13 setRegistrationStatus:-1];
  }

  sub_100450174(0, @"Registration", @"IDS Authentication failure", 1073);
  v25 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v25;
  v27 = [v26 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v27)
  {
    v28 = *v59;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v59 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v58 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v30 center:self failedIDSAuthentication:v13 error:a5 info:v14];
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v27);
  }

  v31 = [v57 domain];
  v56 = [v31 isEqualToString:NSPOSIXErrorDomain];

  v32 = [v57 domain];
  if ([v32 isEqualToString:NSURLErrorDomain])
  {
    v33 = 1;
  }

  else
  {
    v34 = [v57 domain];
    v33 = [v34 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v35 = +[FTNetworkSupport sharedInstance];
  v36 = [v35 wiFiActiveAndReachable];

  if (v36)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  v52 = v37;
  v51 = [v13 registrationType];
  v50 = [v13 registrationType];
  sub_100022FD8(a4);
  sub_1000236A8(a5);
  if ((v33 | v56))
  {
    v38 = 0;
    if (v33)
    {
LABEL_32:
      v39 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
      goto LABEL_35;
    }
  }

  else
  {
    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
    if (v33)
    {
      goto LABEL_32;
    }
  }

  v39 = 0;
LABEL_35:
  if (v56)
  {
    v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
  }

  else
  {
    v40 = 0;
  }

  v48 = v39;
  FTAWDLogRegistrationAuthenticate();
  if (v56)
  {
  }

  if (v33)
  {
  }

  if (((v33 | v56) & 1) == 0)
  {
  }

  v49 = [IDSRegistrationAuthenticateMetric alloc];
  v41 = sub_100022FD8(a4);
  v42 = sub_1000236A8(a5);
  if ((v33 | v56))
  {
    v43 = 0;
    if (v33)
    {
LABEL_46:
      v44 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
      goto LABEL_49;
    }
  }

  else
  {
    v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
    if (v33)
    {
      goto LABEL_46;
    }
  }

  v44 = 0;
LABEL_49:
  if (v56)
  {
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
  }

  else
  {
    v45 = 0;
  }

  LOBYTE(v48) = v50 == 1;
  v46 = [v49 initWithGuid:0 success:0 connectionType:v52 resultCode:v41 registrationError:v42 isPhoneUser:v51 == 0 isDSUser:v48 genericError:v43 URLError:v44 POSIXError:v45];
  if (v56)
  {
  }

  if (v33)
  {
  }

  if (((v33 | v56) & 1) == 0)
  {
  }

  v47 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v47 logMetric:v46];

  [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyIDSAuthenticationSuccess:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v36 = _os_activity_create(&_mh_execute_header, "ids/authenticate/success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v36, &state);
  add = atomic_fetch_add(&cut_log_group_generation, 1uLL);
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 mainID];
    *buf = 134218242;
    v39 = add;
    v40 = 2112;
    v41 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) main-id=%@", buf, 0x16u);
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 serviceIdentifier];
    *buf = 134218242;
    v39 = add;
    v40 = 2112;
    v41 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) service-id=%@", buf, 0x16u);
  }

  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v39 = add;
    v40 = 2112;
    v41 = &__kCFBooleanTrue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) successful=%@", buf, 0x16u);
  }

  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v39 = add;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "!addGroup(%llu) authenticate", buf, 0xCu);
  }

  [(NSMutableArray *)self->_queuedAuthentications removeObjectIdenticalTo:v4];
  [(NSMutableArray *)self->_currentAuthentications removeObjectIdenticalTo:v4];
  if (![(NSMutableArray *)self->_queuedAuthentications count])
  {
    queuedAuthentications = self->_queuedAuthentications;
    self->_queuedAuthentications = 0;
  }

  v13 = [[IDSRegistrationEventTracingAuthenticationEvent alloc] initWithAuthenticationType:0];
  eventTracer = self->_eventTracer;
  v15 = [v4 registrationTraceID];
  [(IDSRegistrationEventTracing *)eventTracer endEvent:v13 identifier:v15 error:0];

  v16 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v18)
  {
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v31 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v21 center:self succeededIDSAuthentication:v4];
        }
      }

      v18 = [v17 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v18);
  }

  v22 = +[FTNetworkSupport sharedInstance];
  v23 = [v22 wiFiActiveAndReachable];

  if (v23)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v25 = [v4 registrationType];
  v26 = [v4 registrationType];
  sub_100022FD8(0);
  sub_1000236A8(-1);
  FTAWDLogRegistrationAuthenticate();
  v27 = [IDSRegistrationAuthenticateMetric alloc];
  v28 = sub_100022FD8(0);
  v29 = [v27 initWithGuid:0 success:1 connectionType:v24 resultCode:v28 registrationError:sub_1000236A8(-1) isPhoneUser:v25 == 0 isDSUser:v26 == 1 genericError:0 URLError:0 POSIXError:{0, v31}];
  v30 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v30 logMetric:v29];

  [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyRegistrationFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7
{
  v11 = a3;
  v57 = a6;
  v12 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v71 = _os_activity_create(&_mh_execute_header, "ids/registration/fail", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v71, &state);
  add = atomic_fetch_add(&cut_log_group_generation, 1uLL);
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 mainID];
    *buf = 134218242;
    v75 = add;
    v76 = 2112;
    v77 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) main-id=%@", buf, 0x16u);
  }

  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v11 serviceIdentifier];
    *buf = 134218242;
    v75 = add;
    v76 = 2112;
    v77 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) service-id=%@", buf, 0x16u);
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v75 = add;
    v76 = 2112;
    v77 = &__kCFBooleanFalse;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) successful=%@", buf, 0x16u);
  }

  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v75 = add;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "!addGroup(%llu) register", buf, 0xCu);
  }

  [(NSMutableArray *)self->_queuedRegistrations removeObjectIdenticalTo:v11];
  [(NSMutableArray *)self->_queuedAuthentications removeObjectIdenticalTo:v11];
  [(NSMutableArray *)self->_currentRegistrations removeObjectIdenticalTo:v11];
  [(NSMutableArray *)self->_currentAuthentications removeObjectIdenticalTo:v11];
  if (![(NSMutableArray *)self->_queuedRegistrations count])
  {
    queuedRegistrations = self->_queuedRegistrations;
    self->_queuedRegistrations = 0;
  }

  [(IDSValidationQueue *)self->_validationQueue cleanupValidationInfoForSubsystemMechanism:1];
  if (![v11 registrationType])
  {
    [v11 setMainID:0];
    [v11 setAuthenticationToken:0];
  }

  [v11 setUris:0];
  [v11 setVettedEmails:0];
  [v11 setRegistrationCert:0];
  [v11 saveToKeychain];
  sub_100450174(0, @"Registration", @"IDS registration failure", 1073);
  if (_os_feature_enabled_impl())
  {
    if (a5 == 47)
    {
      keyTransparencyVerifier = self->_keyTransparencyVerifier;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 3221225472;
      v66[2] = sub_100522C68;
      v66[3] = &unk_100BDF788;
      v69 = 47;
      v66[4] = self;
      v67 = v11;
      v68 = v12;
      [(IDSKeyTransparencyVerifier *)keyTransparencyVerifier fetchKTCDPStatus:v66];
    }

    else
    {
      v28 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v29 = v28;
      v30 = [v29 countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v30)
      {
        v31 = *v63;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v63 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v62 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v33 center:self failedRegistration:v11 error:a5 info:v12];
            }
          }

          v30 = [v29 countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v30);
      }
    }
  }

  else
  {
    v22 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v58 objects:v72 count:16];
    if (v24)
    {
      v25 = *v59;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v58 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v27 center:self failedRegistration:v11 error:a5 info:v12];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v58 objects:v72 count:16];
      }

      while (v24);
    }
  }

  v34 = [v57 domain];
  v56 = [v34 isEqualToString:NSPOSIXErrorDomain];

  v35 = [v57 domain];
  if ([v35 isEqualToString:NSURLErrorDomain])
  {
    v36 = 1;
  }

  else
  {
    v37 = [v57 domain];
    v36 = [v37 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v38 = +[FTNetworkSupport sharedInstance];
  v39 = [v38 wiFiActiveAndReachable];

  if (v39)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  v53 = v40;
  sub_100022FD8(a4);
  sub_1000236A8(a5);
  if ((v36 | v56))
  {
    v41 = 0;
    if (v36)
    {
LABEL_44:
      v42 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
      goto LABEL_47;
    }
  }

  else
  {
    v41 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
    if (v36)
    {
      goto LABEL_44;
    }
  }

  v42 = 0;
LABEL_47:
  if (v56)
  {
    v43 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
  }

  else
  {
    v43 = 0;
  }

  v50 = v42;
  v51 = v43;
  FTAWDLogRegistrationRegister();
  if (v56)
  {
  }

  if (v36)
  {
  }

  if (((v36 | v56) & 1) == 0)
  {
  }

  v52 = [IDSRegistrationOperationRegisterMetric alloc];
  v55 = sub_100022FD8(a4);
  v44 = sub_1000236A8(a5);
  if ((v36 | v56))
  {
    v45 = 0;
    if (v36)
    {
LABEL_58:
      v46 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
      goto LABEL_61;
    }
  }

  else
  {
    v45 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
    if (v36)
    {
      goto LABEL_58;
    }
  }

  v46 = 0;
LABEL_61:
  if (v56)
  {
    v47 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v57 code]);
  }

  else
  {
    v47 = 0;
  }

  v48 = [v52 initWithGuid:0 success:0 connectionType:v53 resultCode:v55 registrationType:v44 isHeartbeatRegister:0 heartbeatDelay:0 genericError:v45 URLError:v46 POSIXError:v47];
  if (v56)
  {
  }

  if (v36)
  {
  }

  if (((v36 | v56) & 1) == 0)
  {
  }

  v49 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v49 logMetric:v48];

  [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyRegistrationSuccess:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v32 = _os_activity_create(&_mh_execute_header, "ids/registration/success", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v32, &state);
  add = atomic_fetch_add(&cut_log_group_generation, 1uLL);
  v6 = +[IMRGLog registration];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 mainID];
    *buf = 134218242;
    v35 = add;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) main-id=%@", buf, 0x16u);
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 serviceIdentifier];
    *buf = 134218242;
    v35 = add;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) service-id=%@", buf, 0x16u);
  }

  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v35 = add;
    v36 = 2112;
    v37 = &__kCFBooleanTrue;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "!setGroupState(%llu) successful=%@", buf, 0x16u);
  }

  v11 = +[IMRGLog registration];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v35 = add;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "!addGroup(%llu) register", buf, 0xCu);
  }

  [(NSMutableArray *)self->_queuedRegistrations removeObjectIdenticalTo:v4];
  [(NSMutableArray *)self->_currentRegistrations removeObjectIdenticalTo:v4];
  if (![(NSMutableArray *)self->_queuedRegistrations count])
  {
    queuedRegistrations = self->_queuedRegistrations;
    self->_queuedRegistrations = 0;
  }

  [v4 setRegistrationStatus:8];
  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "IDS registration success", buf, 2u);
  }

  v14 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * v18);
        if (objc_opt_respondsToSelector())
        {
          [v19 center:self succeededRegistration:v4];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v16);
  }

  v20 = +[FTNetworkSupport sharedInstance];
  v21 = [v20 wiFiActiveAndReachable];

  if (v21)
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  sub_100022FD8(0);
  sub_1000236A8(-1);
  FTAWDLogRegistrationRegister();
  v23 = [IDSRegistrationOperationRegisterMetric alloc];
  v24 = sub_100022FD8(0);
  v25 = [v23 initWithGuid:0 success:0 connectionType:v22 resultCode:v24 registrationType:sub_1000236A8(-1) isHeartbeatRegister:0 heartbeatDelay:0 genericError:0 URLError:0 POSIXError:{0, v27}];
  v26 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v26 logMetric:v25];

  [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_notifyAllSuccessfulRegistrations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "All IDS registrations success", buf, 2u);
    }

    v6 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
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
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 center:self allSucceededRegistrations:{v4, v12}];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifyEmailQueryFailure:(id)a3 responseCode:(int64_t)a4 registrationError:(int64_t)a5 error:(id)a6 info:(id)a7
{
  v12 = a3;
  v41 = a6;
  v13 = a7;
  if ([v12 isDisabled])
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v48 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not reflecting back email query failure, registration is disabled: %@", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v39 = a4;
  sub_100450174(0, @"Registration", @"Email query failure", 1073);
  v15 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v17)
  {
    v18 = *v43;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v42 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 center:self failedCurrentEmailsRequest:v12 error:a5 info:v13];
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v17);
  }

  v21 = [v41 domain];
  v40 = [v21 isEqualToString:NSPOSIXErrorDomain];

  v22 = [v41 domain];
  if ([v22 isEqualToString:NSURLErrorDomain])
  {
    v23 = 1;
  }

  else
  {
    v24 = [v41 domain];
    v23 = [v24 isEqualToString:kCFErrorDomainCFNetwork];
  }

  v25 = +[FTNetworkSupport sharedInstance];
  v26 = [v25 wiFiActiveAndReachable];

  if (v26)
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v38 = v27;
  sub_100022FD8(v39);
  sub_1000236A8(a5);
  if ((v23 | v40))
  {
    v28 = 0;
    if (v23)
    {
LABEL_21:
      v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
      goto LABEL_24;
    }
  }

  else
  {
    v28 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
    if (v23)
    {
      goto LABEL_21;
    }
  }

  v29 = 0;
LABEL_24:
  if (v40)
  {
    v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
    FTAWDLogRegistrationGetHandles();
  }

  else
  {
    FTAWDLogRegistrationGetHandles();
  }

  if (v23)
  {
  }

  if (((v23 | v40) & 1) == 0)
  {
  }

  v31 = [IDSRegistrationOperationGetHandlesMetric alloc];
  v32 = sub_100022FD8(v39);
  v33 = sub_1000236A8(a5);
  if ((v23 | v40))
  {
    v34 = 0;
    if (v23)
    {
LABEL_33:
      v35 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
      goto LABEL_36;
    }
  }

  else
  {
    v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
    if (v23)
    {
      goto LABEL_33;
    }
  }

  v35 = 0;
LABEL_36:
  if (v40)
  {
    v36 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v41 code]);
    v14 = [v31 initWithGuid:0 success:0 connectionType:v38 resultCode:v32 registrationType:v33 genericError:v34 URLError:v35 POSIXError:v36];

    if (!v23)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v14 = [v31 initWithGuid:0 success:0 connectionType:v38 resultCode:v32 registrationType:v33 genericError:v34 URLError:v35 POSIXError:0];
  if (v23)
  {
LABEL_40:
  }

LABEL_41:
  if (((v23 | v40) & 1) == 0)
  {
  }

  v37 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v37 logMetric:v14];

LABEL_44:
}

- (void)_notifyEmailQuerySuccess:(id)a3 emailInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDisabled])
  {
    v8 = +[IMRGLog registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Not reflecting back email query success, registration is disabled: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * v13);
          if (objc_opt_respondsToSelector())
          {
            [v14 center:self succeededCurrentEmailsRequest:v6 emailInfo:v7];
          }

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v15 = +[FTNetworkSupport sharedInstance];
    v16 = [v15 wiFiActiveAndReachable];

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    sub_100022FD8(0);
    sub_1000236A8(-1);
    FTAWDLogRegistrationGetHandles();
    v18 = [IDSRegistrationOperationGetHandlesMetric alloc];
    v19 = sub_100022FD8(0);
    v8 = [v18 initWithGuid:0 success:0 connectionType:v17 resultCode:v19 registrationType:sub_1000236A8(-1) genericError:0 URLError:0 POSIXError:{0, v21}];
    v20 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v20 logMetric:v8];
  }
}

- (void)_notifyRegistrationIdentitiesUpdated
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Registration identities updated; notifying listeners", buf, 2u);
  }

  v4 = [(NSMutableArray *)self->_handlers _copyForEnumerating];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 centerUpdatedRegistrationIdentities:{self, v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (BOOL)_hasRegistration:(id)a3 inQueue:(id)a4
{
  v5 = a3;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = *v31;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [v9 pushToken];
        v11 = [v5 pushToken];
        if (v10 == v11)
        {
          v14 = 1;
        }

        else
        {
          v12 = [v9 pushToken];
          v13 = [v5 pushToken];
          v14 = [v12 isEqualToData:v13];
        }

        v15 = [v9 mainID];
        v16 = [v5 mainID];
        if (v15 != v16)
        {
          v17 = [v9 mainID];
          v18 = [v5 mainID];
          if (![v17 isEqualToString:v18])
          {
            v14 = 0;
          }
        }

        v19 = [v9 registrationType];
        v21 = v19 == [v5 registrationType] && v14 != 0;
        v22 = [v9 serviceType];
        v23 = [v5 serviceType];
        v24 = v23;
        if (v22 == v23)
        {

          if (v21)
          {
LABEL_26:
            v6 = +[IMRGLog registration];
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v35 = v9;
              _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " => Has registration in queue: %@", buf, 0xCu);
            }

            LOBYTE(v6) = 1;
            goto LABEL_29;
          }
        }

        else
        {
          v25 = [v9 serviceType];
          v26 = [v5 serviceType];
          v27 = v21 & [v25 isEqualToString:v26];

          if (v27 == 1)
          {
            goto LABEL_26;
          }
        }
      }

      v6 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:

  return v6;
}

- (int64_t)_countOfMessagesQueuedOfType:(Class)a3 matchingCriteria:(id)a4
{
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery queuedMessages];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (!a3 || (objc_opt_isKindOfClass() & 1) != 0)
        {
          v10 += v6[2](v6, v13);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_keyTransparencyAccountKeyFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5
{
  v7 = a4;
  v8 = a5;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [a3 services];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v29 = v9;
    v30 = v7;
    v27 = *v37;
    do
    {
      v13 = 0;
      v28 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = [v14 objectForKey:@"service"];
        if ([v15 isEqualToString:v7])
        {
          v31 = v15;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v14 objectForKey:@"users"];
          v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v32 + 1) + 8 * i);
                v22 = [v21 objectForKey:@"uris"];
                v40 = @"uri";
                v23 = [v8 prefixedURI];
                v41 = v23;
                v24 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

                if ([v22 containsObject:v24])
                {
                  v25 = [v21 objectForKey:@"kt-account-key"];

                  v9 = v29;
                  v7 = v30;
                  goto LABEL_21;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v9 = v29;
          v7 = v30;
          v12 = v27;
          v11 = v28;
          v15 = v31;
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
      v25 = 0;
    }

    while (v11);
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

- (id)_keyTransparencyLoggableDataFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5
{
  v7 = a4;
  v8 = a5;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [a3 services];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    v29 = v9;
    v30 = v7;
    v27 = *v37;
    do
    {
      v13 = 0;
      v28 = v11;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = [v14 objectForKey:@"service"];
        if ([v15 isEqualToString:v7])
        {
          v31 = v15;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [v14 objectForKey:@"users"];
          v17 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v33;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v33 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v32 + 1) + 8 * i);
                v22 = [v21 objectForKey:@"uris"];
                v40 = @"uri";
                v23 = [v8 prefixedURI];
                v41 = v23;
                v24 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];

                if ([v22 containsObject:v24])
                {
                  v25 = [v21 objectForKey:@"kt-loggable-data"];

                  v9 = v29;
                  v7 = v30;
                  goto LABEL_21;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v32 objects:v42 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v9 = v29;
          v7 = v30;
          v12 = v27;
          v11 = v28;
          v15 = v31;
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v43 count:16];
      v25 = 0;
    }

    while (v11);
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

- (id)_keyTransparencyDeviceSignatureFromRegistrationMessage:(id)a3 service:(id)a4 URI:(id)a5
{
  v7 = a4;
  v8 = a5;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = [a3 services];
  v10 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v38;
    v30 = v9;
    v31 = v7;
    v28 = *v38;
    do
    {
      v13 = 0;
      v29 = v11;
      do
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = [v14 objectForKey:@"service"];
        if ([v15 isEqualToString:v7])
        {
          v32 = v15;
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v16 = [v14 objectForKey:@"users"];
          v17 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v34;
            while (2)
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v34 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v33 + 1) + 8 * i);
                v22 = [v21 objectForKey:@"uris"];
                v41 = @"uri";
                v23 = [v8 prefixedURI];
                v42 = v23;
                v24 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];

                if ([v22 containsObject:v24])
                {
                  v26 = [v21 objectForKey:@"client-data"];
                  v25 = [v26 objectForKey:@"device-key-signature"];

                  v9 = v30;
                  v7 = v31;
                  goto LABEL_21;
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          v9 = v30;
          v7 = v31;
          v12 = v28;
          v11 = v29;
          v15 = v32;
        }

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v37 objects:v44 count:16];
      v25 = 0;
    }

    while (v11);
  }

  else
  {
    v25 = 0;
  }

LABEL_21:

  return v25;
}

- (void)_processRegistrationMessage:(id)a3 sentRegistrations:(id)a4 descriptionString:(id)a5 actionID:(id)a6 actionString:(id)a7 isDeregister:(BOOL)a8 deliveredWithError:(id)a9 resultCode:(int64_t)a10 resultDictionary:(id)a11
{
  v326 = a8;
  v322 = a3;
  v16 = a4;
  v269 = a5;
  v276 = a6;
  v270 = a7;
  v312 = a9;
  v274 = a11;
  v397 = _os_activity_create(&_mh_execute_header, "Registration center process registration message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v397, &state);
  v323 = self;
  [(IDSRegistrationCenter *)self _noteRegistration];
  v268 = v16;
  v17 = [v16 _copyForEnumerating];
  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v406 = v17;
    *&v406[8] = 2112;
    *&v406[10] = v276;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Final Active registrations: %@  (For: %@)", buf, 0x16u);
  }

  v19 = +[IMRGLog registration];
  v20 = a10;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    *buf = 138413314;
    *v406 = v22;
    *&v406[8] = 2112;
    *&v406[10] = v312;
    *&v406[18] = 1024;
    *&v406[20] = a10;
    *&v406[24] = 2112;
    *&v406[26] = v274;
    *&v406[34] = 2112;
    *&v406[36] = v276;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Message class: %@  delivered with error: %@  code: %d result: %@   ID: %@", buf, 0x30u);
  }

  if (qword_100CBEE90 != -1)
  {
    sub_100928978();
  }

  if (byte_100CBEE88 == 1)
  {
    v20 = IMGetDomainIntForKey();
    v23 = +[IMRGLog warning];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *v406 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Overriding response code registration message! {overrideResultCode: %ld}", buf, 0xCu);
    }
  }

  if (byte_100CBEE89 == 1)
  {
    v24 = IMGetDomainValueForKey();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25;

    v27 = IMGetDomainValueForKey();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = v28;

    v30 = +[IMRGLog warning];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v406 = v26;
      *&v406[8] = 2112;
      *&v406[10] = v29;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Overriding response alert on specified services! {phoneOverrideService: %@, emailOverrideService: %@}", buf, 0x16u);
    }

    if ([v26 length] || objc_msgSend(v29, "length"))
    {
      v395 = 0u;
      v394 = 0u;
      v393 = 0u;
      v392 = 0u;
      v31 = [v322 responseServices];
      v32 = [v31 countByEnumeratingWithState:&v392 objects:v415 count:16];
      if (v32)
      {
        v33 = *v393;
        while (2)
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v393 != v33)
            {
              objc_enumerationMutation(v31);
            }

            v35 = [*(*(&v392 + 1) + 8 * i) objectForKey:@"service"];
            if (([v26 isEqualToString:v35] & 1) != 0 || objc_msgSend(v29, "isEqualToString:", v35))
            {
              [v322 setResponseAlertInfo:&off_100C3DE58];

              goto LABEL_33;
            }
          }

          v32 = [v31 countByEnumeratingWithState:&v392 objects:v415 count:16];
          if (v32)
          {
            continue;
          }

          break;
        }
      }

LABEL_33:
    }

    else
    {
      [v322 setResponseAlertInfo:&off_100C3DE58];
    }
  }

  if (v20)
  {
    v36 = +[IMRGLog registration];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v406 = v20;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "  Message delivery failed with code: %d", buf, 8u);
    }
  }

  if (v312)
  {
    v37 = +[IMRGLog registration];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v406 = v20;
      *&v406[4] = 2112;
      *&v406[6] = v312;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "  Message delivery failed with result code: %d  error: %@", buf, 0x12u);
    }
  }

  v315 = objc_alloc_init(NSMutableDictionary);
  v391 = 0u;
  v390 = 0u;
  v389 = 0u;
  v388 = 0u;
  obj = v17;
  v38 = [obj countByEnumeratingWithState:&v388 objects:v414 count:16];
  if (v38)
  {
    v39 = *v389;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v389 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v388 + 1) + 8 * j);
        v42 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v41 absintheRetries]);
        v43 = [v41 guid];
        [v315 setObject:v42 forKey:v43];

        [v41 setAbsintheRetries:0];
      }

      v38 = [obj countByEnumeratingWithState:&v388 objects:v414 count:16];
    }

    while (v38);
  }

  v285 = [v322 responseAlertInfo];
  if (v20 > 6004)
  {
    if (v20 == 6005 || v20 == 6008)
    {
      v60 = +[IMRGLog registration];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "Bad signature, will refresh credentials for all registrations", buf, 2u);
      }

      sub_100450174(0, @"Registration", @"Bad signature, need to send SMS", 1073);
      v346 = 0u;
      v347 = 0u;
      v344 = 0u;
      v345 = 0u;
      v301 = obj;
      v61 = [v301 countByEnumeratingWithState:&v344 objects:v401 count:16];
      if (v61)
      {
        v62 = *v345;
        do
        {
          for (k = 0; k != v61; k = k + 1)
          {
            if (*v345 != v62)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v344 + 1) + 8 * k) responseCode:v20 registrationError:37 error:v312 info:v285];
          }

          v61 = [v301 countByEnumeratingWithState:&v344 objects:v401 count:16];
        }

        while (v61);
      }

      goto LABEL_156;
    }

    if (v20 == 6009)
    {
      v56 = +[IMRGLog registration];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Server rejected registration permanently; failing all candidate registrations", buf, 2u);
      }

      v354 = 0u;
      v355 = 0u;
      v352 = 0u;
      v353 = 0u;
      v301 = obj;
      v57 = [v301 countByEnumeratingWithState:&v352 objects:v403 count:16];
      if (v57)
      {
        v58 = *v353;
        do
        {
          for (m = 0; m != v57; m = m + 1)
          {
            if (*v353 != v58)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v352 + 1) + 8 * m) responseCode:6009 registrationError:38 error:v312 info:v285];
          }

          v57 = [v301 countByEnumeratingWithState:&v352 objects:v403 count:16];
        }

        while (v57);
      }

      goto LABEL_156;
    }

    goto LABEL_133;
  }

  if (v20)
  {
    if (v20 == 6001)
    {
      v98 = +[IMRGLog registration];
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Server rejected registration; failing all candidate registrations", buf, 2u);
      }

      v350 = 0u;
      v351 = 0u;
      v348 = 0u;
      v349 = 0u;
      v301 = obj;
      v99 = [v301 countByEnumeratingWithState:&v348 objects:v402 count:16];
      if (v99)
      {
        v100 = *v349;
        do
        {
          for (n = 0; n != v99; n = n + 1)
          {
            if (*v349 != v100)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v348 + 1) + 8 * n) responseCode:6001 registrationError:31 error:v312 info:v285];
          }

          v99 = [v301 countByEnumeratingWithState:&v348 objects:v402 count:16];
        }

        while (v99);
      }

      goto LABEL_156;
    }

    if (v20 == 6004)
    {
      v44 = +[IMRGLog warning];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        sub_1009289A0();
      }

      [(IDSValidationQueue *)self->_validationQueue cleanupValidationInfoForSubsystemMechanism:1];
      v359 = 0u;
      v358 = 0u;
      v356 = 0u;
      v357 = 0u;
      v301 = obj;
      v45 = [v301 countByEnumeratingWithState:&v356 objects:v404 count:16];
      if (!v45)
      {
        goto LABEL_156;
      }

      v46 = 0;
      v47 = *v357;
      do
      {
        for (ii = 0; ii != v45; ii = ii + 1)
        {
          if (*v357 != v47)
          {
            objc_enumerationMutation(v301);
          }

          v49 = *(*(&v356 + 1) + 8 * ii);
          v50 = [v49 guid];
          v51 = [v315 objectForKey:v50];
          v52 = [v51 intValue];

          if (v52 > 2)
          {
            v54 = +[IMRGLog registration];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v406 = v49;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, " Maximum absinthe retries reached, failing registration %@", buf, 0xCu);
            }

            [(IDSRegistrationCenter *)v323 _notifyRegistrationFailure:v49 responseCode:6004 registrationError:29 error:v312 info:v285];
          }

          else
          {
            v53 = +[IMRGLog registration];
            if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109120;
              *v406 = v52;
              _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, " Retries so far: %d  trying again", buf, 8u);
            }

            [v49 setAbsintheRetries:(v52 + 1)];
            v46 = 1;
          }
        }

        v45 = [v301 countByEnumeratingWithState:&v356 objects:v404 count:16];
      }

      while (v45);

      p_isa = &v323->super.isa;
      if (v46)
      {
        [(IDSValidationQueue *)v323->_validationQueue removeFromQueue:v322 subsystem:1];
        [(IDSRegistrationCenter *)v323 _sendRegistrationAsDeregister:v326];
      }

      goto LABEL_157;
    }

LABEL_133:
    if (v20 >> 1 == 4000)
    {
      v93 = +[IMRGLog registration];
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Failed constructing validation data", buf, 2u);
      }

      v342 = 0u;
      v343 = 0u;
      if (v20 == 8001)
      {
        v94 = 45;
      }

      else
      {
        v94 = 44;
      }

      v340 = 0uLL;
      v341 = 0uLL;
      v301 = obj;
      v95 = [v301 countByEnumeratingWithState:&v340 objects:v400 count:16];
      if (v95)
      {
        v96 = *v341;
        do
        {
          for (jj = 0; jj != v95; jj = jj + 1)
          {
            if (*v341 != v96)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v340 + 1) + 8 * jj) responseCode:v20 registrationError:v94 error:v312 info:v285];
          }

          v95 = [v301 countByEnumeratingWithState:&v340 objects:v400 count:16];
        }

        while (v95);
      }
    }

    else if (v312 || v20 != 1)
    {
      v239 = +[IMRGLog registration];
      if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *v406 = v20;
        *&v406[4] = 2112;
        *&v406[6] = v312;
        *&v406[14] = 2112;
        *&v406[16] = v274;
        _os_log_impl(&_mh_execute_header, v239, OS_LOG_TYPE_DEFAULT, "Registration attempt failed with status code: %d   error: %@   result: %@", buf, 0x1Cu);
      }

      v240 = +[IMRGLog registration];
      if (os_log_type_enabled(v240, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_DEFAULT, "Communicating with registration server failed", buf, 2u);
      }

      v334 = 0u;
      v335 = 0u;
      v332 = 0u;
      v333 = 0u;
      v301 = obj;
      v241 = [v301 countByEnumeratingWithState:&v332 objects:v398 count:16];
      if (v241)
      {
        v242 = *v333;
        do
        {
          for (kk = 0; kk != v241; kk = kk + 1)
          {
            if (*v333 != v242)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v332 + 1) + 8 * kk) responseCode:v20 registrationError:46 error:v312 info:v285];
          }

          v241 = [v301 countByEnumeratingWithState:&v332 objects:v398 count:16];
        }

        while (v241);
      }
    }

    else
    {
      v102 = +[IMRGLog registration];
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Registration attempt failed with no status code", buf, 2u);
      }

      v338 = 0u;
      v339 = 0u;
      v336 = 0u;
      v337 = 0u;
      v301 = obj;
      v103 = [v301 countByEnumeratingWithState:&v336 objects:v399 count:16];
      if (v103)
      {
        v104 = *v337;
        do
        {
          for (mm = 0; mm != v103; mm = mm + 1)
          {
            if (*v337 != v104)
            {
              objc_enumerationMutation(v301);
            }

            [(IDSRegistrationCenter *)self _notifyRegistrationFailure:*(*(&v336 + 1) + 8 * mm) responseCode:1 registrationError:15 error:0 info:v285];
          }

          v103 = [v301 countByEnumeratingWithState:&v336 objects:v399 count:16];
        }

        while (v103);
      }
    }

    goto LABEL_156;
  }

  v64 = +[FTDeviceSupport sharedInstance];
  v301 = [v64 deviceName];

  IMSetDomainBoolForKey();
  v310 = objc_alloc_init(NSMutableDictionary);
  v387 = 0u;
  v386 = 0u;
  v385 = 0u;
  v384 = 0u;
  v65 = [v322 services];
  v66 = [v65 countByEnumeratingWithState:&v384 objects:v413 count:16];
  v291 = v65;
  if (v66)
  {
    v289 = v66;
    allocator = 0;
    v286 = 0;
    v287 = 0;
    v290 = 0;
    v293 = *v385;
    v302 = _IDSIdentityClientDataMessageProtectionNGMDevicePrekeyDataKey;
    v304 = _IDSIdentityClientDataMessageProtectionIdentityKey;
    v299 = IDSRegistrationPropertyKeyTransparencyDeviceKeySignature;
    do
    {
      for (nn = 0; nn != v289; nn = nn + 1)
      {
        if (*v385 != v293)
        {
          objc_enumerationMutation(v291);
        }

        v67 = *(*(&v384 + 1) + 8 * nn);
        v380 = 0u;
        v381 = 0u;
        v382 = 0u;
        v383 = 0u;
        v308 = v67;
        v297 = [v67 objectForKey:@"users"];
        v311 = [v297 countByEnumeratingWithState:&v380 objects:v412 count:16];
        if (v311)
        {
          v306 = *v381;
          do
          {
            for (i1 = 0; i1 != v311; i1 = i1 + 1)
            {
              if (*v381 != v306)
              {
                objc_enumerationMutation(v297);
              }

              v68 = *(*(&v380 + 1) + 8 * i1);
              v327 = [v68 objectForKey:@"client-data"];
              v69 = [v327 objectForKey:v304];
              v316 = v68;
              v313 = v69;
              if (v69)
              {
                v70 = v69;

                v290 = v70;
              }

              v320 = [v327 objectForKey:v302];
              v71 = [IDSProtoKeyTransparencyLoggableData alloc];
              v72 = [v316 objectForKey:@"kt-loggable-data"];
              v329 = [(IDSProtoKeyTransparencyLoggableData *)v71 initWithData:v72];

              v324 = [(IDSProtoKeyTransparencyLoggableData *)v329 ngmPublicIdentity];
              if (v324 && v320)
              {
                v73 = v324;

                v74 = v320;
                v286 = v74;
                v287 = v73;
              }

              if ([(IDSProtoKeyTransparencyLoggableData *)v329 applicationPublicIdentitysCount])
              {
                v379 = 0u;
                v378 = 0u;
                v377 = 0u;
                v376 = 0u;
                v75 = [(IDSProtoKeyTransparencyLoggableData *)v329 applicationPublicIdentitys];
                v76 = [v75 countByEnumeratingWithState:&v376 objects:v411 count:16];
                if (v76)
                {
                  v77 = *v377;
                  do
                  {
                    for (i2 = 0; i2 != v76; i2 = i2 + 1)
                    {
                      if (*v377 != v77)
                      {
                        objc_enumerationMutation(v75);
                      }

                      v79 = *(*(&v376 + 1) + 8 * i2);
                      if ([v79 hasKeyIndex] && objc_msgSend(v79, "hasPublicIdentity"))
                      {
                        v80 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v79 keyIndex]);
                        v81 = [v79 publicIdentity];
                        Mutable = allocator;
                        if (!allocator)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                        }

                        allocator = Mutable;
                        [(__CFDictionary *)Mutable setObject:v81 forKeyedSubscript:v80];
                      }
                    }

                    v76 = [v75 countByEnumeratingWithState:&v376 objects:v411 count:16];
                  }

                  while (v76);
                }
              }

              v83 = [v308 objectForKey:@"service"];
              v84 = +[IDSDServiceController sharedInstance];
              v85 = [v84 serviceWithIdentifier:v83];

              if ([v85 adHocServiceType])
              {
                v86 = +[IDSDServiceController sharedInstance];
                v87 = [v86 primaryServiceForAdhocServiceType:{objc_msgSend(v85, "adHocServiceType")}];

                v85 = v87;
              }

              if ([v85 ktRegistrationDataIndex])
              {
                v88 = objc_alloc_init(IDSKTRegistrationData);
                v89 = [v316 objectForKey:@"kt-loggable-data"];
                v90 = [v316 objectForKey:@"kt-account-key"];
                v91 = [v327 objectForKey:v299];
                [v88 setKtDataForRegistration:v89];
                [v88 setKtPublicAccountKey:v90];
                [v88 setKtDataSignature:v91];
                v92 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v85 ktRegistrationDataIndex]);
                [v310 setObject:v88 forKeyedSubscript:v92];
              }
            }

            v311 = [v297 countByEnumeratingWithState:&v380 objects:v412 count:16];
          }

          while (v311);
        }
      }

      v289 = [v291 countByEnumeratingWithState:&v384 objects:v413 count:16];
    }

    while (v289);
  }

  else
  {
    allocator = 0;
    v286 = 0;
    v287 = 0;
    v290 = 0;
  }

  v106 = +[IDSRegistrationKeyManager sharedInstance];
  [v106 notePublicIdentityDidRegisterLegacyData:v290 ngmIdentityData:v287 ngmPrekeyData:v286 keyIndexToIdentityData:allocator];

  v107 = [v322 responseServices];
  v266 = [v322 responseHBI];
  v108 = +[IMRGLog registration];
  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *v406 = v276;
    *&v406[8] = 2112;
    *&v406[10] = v266;
    *&v406[18] = 2112;
    *&v406[20] = v107;
    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "Received registration response for: %@   HBI: %@  services: %@", buf, 0x20u);
  }

  v109 = +[FTDeviceSupport sharedInstance];
  v271 = [v109 isC2KEquipment];

  v279 = [[NSMutableArray alloc] initWithArray:obj];
  v375 = 0u;
  v374 = 0u;
  v373 = 0u;
  v372 = 0u;
  v257 = v107;
  v110 = [v257 countByEnumeratingWithState:&v372 objects:v410 count:16];
  if (!v110)
  {
    v238 = v257;
    goto LABEL_398;
  }

  v309 = 0;
  v254 = *v373;
  v263 = kIDSServiceDefaultsSentinelAlias;
  do
  {
    v258 = 0;
    v253 = v110;
    do
    {
      if (*v373 != v254)
      {
        objc_enumerationMutation(v257);
      }

      v111 = *(*(&v372 + 1) + 8 * v258);
      v325 = [v111 objectForKey:@"service"];
      v256 = [v111 objectForKey:@"status"];
      v112 = [v111 objectForKey:@"users"];
      v262 = v111;
      v255 = [v111 objectForKey:@"message"];
      v113 = +[IMRGLog registration];
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *v406 = v325;
        *&v406[8] = 2112;
        *&v406[10] = v256;
        *&v406[18] = 2114;
        *&v406[20] = v255;
        _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "Processing registration response for service { service: %@, status: %@, serverErrorDetail: %{public}@ }", buf, 0x20u);
      }

      v371 = 0u;
      v370 = 0u;
      v369 = 0u;
      v368 = 0u;
      v261 = v112;
      v259 = [v261 countByEnumeratingWithState:&v368 objects:v409 count:16];
      if (v259)
      {
        v260 = *v369;
        do
        {
          v265 = 0;
          do
          {
            if (*v369 != v260)
            {
              objc_enumerationMutation(v261);
            }

            v114 = *(*(&v368 + 1) + 8 * v265);
            v282 = [v114 objectForKey:@"user-id"];
            v267 = v114;
            v115 = [v114 objectForKey:@"status"];
            v264 = [v262 objectForKey:@"message"];
            if ([v282 hasPrefix:@"P:"] && IDSDebuggingShouldFakePhoneNumberChallenge())
            {
              v116 = IMGetDomainValueForKey();
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || ![v116 length] || objc_msgSend(v116, "isEqualToString:", v325))
              {
                goto LABEL_197;
              }

LABEL_377:
              v280 = v115;
              goto LABEL_198;
            }

            if ([v282 hasPrefix:@"D:"] && IDSDebuggingShouldFakeEmailChallenge())
            {
              v116 = IMGetDomainValueForKey();
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v116 length] && !objc_msgSend(v116, "isEqualToString:", v325))
              {
                goto LABEL_377;
              }

LABEL_197:
              v280 = [NSNumber numberWithInteger:IMGetDomainIntForKey()];

LABEL_198:
              goto LABEL_200;
            }

            v280 = v115;
LABEL_200:
            v117 = +[IMRGLog registration];
            if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              *v406 = v282;
              *&v406[8] = 2112;
              *&v406[10] = v325;
              *&v406[18] = 2112;
              *&v406[20] = v280;
              *&v406[28] = 2114;
              *&v406[30] = v264;
              _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Processing registration response for user { user: %@, service: %@, status: %@, serverErrorDetail: %{public}@ }", buf, 0x2Au);
            }

            v118 = [v267 objectForKey:@"alert"];
            v119 = v285;
            v275 = v118;
            if (v118)
            {
              v119 = v118;
            }

            v278 = v119;
            v277 = [v267 objectForKey:@"cert"];
            v273 = [v267 objectForKey:@"uris"];
            v120 = v266;
            if (!v266)
            {
              v120 = [v267 objectForKey:@"next-hbi"];
            }

            v266 = v120;
            [v120 doubleValue];
            v122 = v121;
            if (v121 < 60.0)
            {
              v123 = +[IDSHeartbeatCenter sharedInstance];
              [v123 registrationHBI];
              v122 = v124;

              v125 = +[IMRGLog registration];
              if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *v406 = v122;
                _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "No value in response, we're using HBI: %f", buf, 0xCu);
              }
            }

            if (v122 <= 60.0)
            {
              v126 = +[IMRGLog registration];
              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Success, Using fallback registration date", buf, 2u);
              }

              v272 = 0;
            }

            else
            {
              v272 = [NSDate dateWithTimeIntervalSinceNow:v122];
              v126 = +[IMRGLog registration];
              if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v406 = v272;
                _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "Success, next registration date is: %@", buf, 0xCu);
              }
            }

            v367 = 0u;
            v366 = 0u;
            v365 = 0u;
            v364 = 0u;
            v281 = obj;
            v284 = [v281 countByEnumeratingWithState:&v364 objects:v408 count:16];
            if (v284)
            {
              v283 = *v365;
              do
              {
                v294 = 0;
                do
                {
                  if (*v365 != v283)
                  {
                    objc_enumerationMutation(v281);
                  }

                  v307 = *(*(&v364 + 1) + 8 * v294);
                  v127 = [v307 serviceType];
                  v317 = sub_100450490(v127);

                  if ([v325 isEqualToIgnoringCase:v317])
                  {
                    v128 = [v307 idsUserID];
                    v129 = [v282 isEqualToString:v128];

                    v130 = v323;
                    if ([v307 registrationType] == 1)
                    {
                      v131 = [v307 profileID];
                      v132 = [v282 isEqualToString:v131];

                      v130 = v323;
                    }

                    else
                    {
                      v132 = 0;
                    }

                    if ((v129 | v132))
                    {
                      [(NSMutableArray *)v130->_currentRegistrations removeObjectIdenticalTo:v307];
                      [v279 removeObjectIdenticalTo:v307];
                      eventTracer = v130->_eventTracer;
                      v134 = [v307 registrationTraceID];
                      v135 = [v322 overallEventTracingOperation];
                      [(IDSRegistrationEventTracing *)eventTracer trackIDSMessageWithIdentifier:v134 messageType:0 operation:v135];

                      v136 = +[IMRGLog registration];
                      if (os_log_type_enabled(v136, OS_LOG_TYPE_DEFAULT))
                      {
                        v137 = [v307 idsUserID];
                        *buf = 138412546;
                        *v406 = v137;
                        *&v406[8] = 2112;
                        *&v406[10] = v282;
                        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "*** Matched registration user ID: %@ for user ID: %@", buf, 0x16u);
                      }

                      v138 = +[IMRGLog registration];
                      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        *v406 = v280;
                        _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, " Result status: %@", buf, 0xCu);
                      }

                      v139 = [v280 intValue];
                      if (v139 > 6007)
                      {
                        v140 = v307;
                        if (v139 == 6008)
                        {
                          goto LABEL_242;
                        }

                        if (v139 == 6009)
                        {
                          v201 = +[IMRGLog registration];
                          if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *v406 = v307;
                            _os_log_impl(&_mh_execute_header, v201, OS_LOG_TYPE_DEFAULT, " *** Server rejected registration permanently { candidateRegistration: %@ }", buf, 0xCu);
                          }

                          sub_1005285B8(v275);
                          v144 = 38;
                          goto LABEL_325;
                        }

                        if (v139 != 6013)
                        {
                          goto LABEL_249;
                        }

                        v141 = +[IMRGLog registration];
                        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          *v406 = v307;
                          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, " *** Server rejected registration, need new Account Key for KT. { candidateRegistration: %@ }", buf, 0xCu);
                        }

                        if (_os_feature_enabled_impl())
                        {
                          v142 = [v267 objectForKey:@"kt-account-key"];
                          v143 = objc_alloc_init(TransparencyDaemon);
                          [v143 transparencyCheckKTAccountKey:v142 complete:&stru_100BDF7C8];

                          v144 = 47;
                          goto LABEL_324;
                        }
                      }

                      else
                      {
                        v140 = v307;
                        if (!v139)
                        {
                          v149 = +[IMRGLog registration];
                          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 0;
                            v150 = v149;
                            v151 = " Success!";
                            goto LABEL_254;
                          }

LABEL_255:

                          v153 = objc_alloc_init(NSDate);
                          dateLastRegistered = v323->_dateLastRegistered;
                          v323->_dateLastRegistered = v153;

                          v303 = objc_alloc_init(NSMutableArray);
                          v292 = objc_alloc_init(NSMutableArray);
                          v363 = 0u;
                          v362 = 0u;
                          v361 = 0u;
                          v360 = 0u;
                          v314 = v273;
                          v155 = [v314 countByEnumeratingWithState:&v360 objects:v407 count:16];
                          if (v155)
                          {
                            v319 = *v361;
                            do
                            {
                              v321 = v155;
                              for (i3 = 0; i3 != v321; i3 = i3 + 1)
                              {
                                if (*v361 != v319)
                                {
                                  objc_enumerationMutation(v314);
                                }

                                v157 = *(*(&v360 + 1) + 8 * i3);
                                v158 = [v157 objectForKey:@"uri"];
                                v330 = [v157 objectForKey:@"status"];
                                v159 = [v157 objectForKey:@"kt-status"];
                                if (v158)
                                {
                                  v160 = [IDSURI URIWithPrefixedURI:v158];
                                }

                                else
                                {
                                  v160 = 0;
                                }

                                v328 = [(IDSRegistrationCenter *)v323 _keyTransparencyAccountKeyFromRegistrationMessage:v322 service:v325 URI:v160];
                                v161 = [v157 objectForKey:@"kt-blob"];
                                v162 = +[IMRGLog registration];
                                if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
                                {
                                  *buf = 138412546;
                                  *v406 = v317;
                                  *&v406[8] = 2112;
                                  *&v406[10] = v157;
                                  _os_log_debug_impl(&_mh_execute_header, v162, OS_LOG_TYPE_DEBUG, "Received per-URI status dictionary in register response { service: %@, binding: %@ }", buf, 0x16u);
                                }

                                if (v158 && ![v330 intValue])
                                {
                                  [v303 addObject:v158];
                                }

                                else
                                {
                                  v163 = +[IMRGLog registration];
                                  if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138412802;
                                    *v406 = v317;
                                    *&v406[8] = 2112;
                                    *&v406[10] = v158;
                                    *&v406[18] = 2112;
                                    *&v406[20] = v330;
                                    _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "Invalid status returned for a URI in register response -- dropping { service: %@, URI: %@, status: %@ }", buf, 0x20u);
                                  }
                                }

                                if (v159 | v161)
                                {
                                  v164 = +[IDSFoundationLog KeyTransparency];
                                  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *buf = 138413314;
                                    *v406 = v317;
                                    *&v406[8] = 2112;
                                    *&v406[10] = v158;
                                    *&v406[18] = 2112;
                                    *&v406[20] = v328;
                                    *&v406[28] = 2112;
                                    *&v406[30] = v159;
                                    *&v406[38] = 2112;
                                    *&v406[40] = v161;
                                    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "KT data returned in register response { service: %@, URI: %@, KTAccountID: %@, KTStatus: %@, KTBlob: %@ }", buf, 0x34u);
                                  }
                                }

                                if (+[IDSKeyTransparencyVerifier isKeyTransparencyEnabled])
                                {
                                  v165 = +[IDSDServiceController sharedInstance];
                                  v166 = [v165 serviceWithIdentifier:v325];

                                  if ([v166 adHocServiceType])
                                  {
                                    v167 = +[IDSDServiceController sharedInstance];
                                    v168 = [v167 primaryServiceForAdhocServiceType:{objc_msgSend(v166, "adHocServiceType")}];

                                    v166 = v168;
                                  }

                                  if ([v166 ktRegistrationDataIndex])
                                  {
                                    v169 = [v166 ktRegistrationDataIndex];
                                    v170 = +[IDSRegistrationKeyManager sharedInstance];
                                    v171 = [NSNumber numberWithUnsignedShort:v169];
                                    v172 = [v310 objectForKeyedSubscript:v171];
                                    [v170 noteDidRegisterKTData:v172 forKeyIndex:v169];

                                    v309 = 1;
                                  }

                                  if (v159 && v160 && ![v159 integerValue])
                                  {
                                    if (v328)
                                    {
                                      [v292 addObject:v158];
                                      v173 = [IDSKeyTransparencyIndex alloc];
                                      v174 = [v307 serviceIdentifier];
                                      v300 = [(IDSKeyTransparencyIndex *)v173 initWithServiceIdentifier:v174 accountKey:v328 URI:v160];

                                      v296 = [[IDSKeyTransparencyVerificationState alloc] initWithTransparencyStatus:v159 transparencyBlob:v161];
                                      v298 = [(IDSRegistrationCenter *)v323 _keyTransparencyLoggableDataFromRegistrationMessage:v322 service:v325 URI:v160];
                                      v175 = [(IDSRegistrationCenter *)v323 _keyTransparencyDeviceSignatureFromRegistrationMessage:v322 service:v325 URI:v160];
                                      v176 = [v307 pushToken];
                                      if (v175 && v298 && v176)
                                      {
                                        v288 = v176;
                                        v177 = [IDSKeyTransparencyEntry alloc];
                                        v178 = [v307 pushToken];
                                        v179 = [(IDSKeyTransparencyEntry *)v177 initWithPushToken:v178 loggableData:v298 signedData:v175];

                                        [(IDSKeyTransparencyEntry *)v179 setKtCapable:1];
                                        v180 = [(IDSRegistrationCenter *)v323 keyTransparencyVerifier];
                                        v181 = [v180 transparencyTicketForRegistrationWithIndex:v300 verificationState:v296 entry:v179];

                                        v176 = v288;
                                      }
                                    }

                                    else
                                    {
                                      v182 = +[IDSFoundationLog KeyTransparency];
                                      v300 = v182;
                                      if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                                      {
                                        *buf = 0;
                                        _os_log_impl(&_mh_execute_header, v182, OS_LOG_TYPE_DEFAULT, "Received no KTAccount key.", buf, 2u);
                                      }
                                    }
                                  }
                                }
                              }

                              v155 = [v314 countByEnumeratingWithState:&v360 objects:v407 count:16];
                            }

                            while (v155);
                          }

                          v183 = v303;
                          v184 = [v307 serviceType];
                          v185 = IDSIsFaceTimeRegistrationServiceType();

                          if ((v185 & 1) != 0 || ([v307 serviceType], v186 = objc_claimAutoreleasedReturnValue(), v187 = IDSIsCallingRegistrationServiceType(), v186, v187))
                          {
                            v188 = _IDSInvitationProtocolVersionNumber();
                          }

                          else
                          {
                            v206 = [v307 serviceType];
                            v207 = IDSIsiMessageRegistrationServiceType();

                            if (v207)
                            {
                              _IDSiMessageProtocolVersionNumber();
                            }

                            else
                            {
                              _IDSAlloyProtocolVersionNumber();
                            }
                            v188 = ;
                          }

                          v189 = v188;
                          [v307 setRegistrationCert:v277];
                          v190 = +[NSDate date];
                          [v307 setRegistrationDate:v190];

                          [v307 setNextRegistrationDate:v272];
                          v191 = +[IDSServerBag sharedInstance];
                          v192 = [v191 apsEnvironmentName];
                          [v307 setEnvironment:v192];

                          v193 = [v322 pushToken];
                          [v307 setPushToken:v193];

                          [v307 setApplicationVersion:v189];
                          v194 = _IDSIdentityVersionNumber();
                          [v307 setIdentityVersion:v194];

                          v195 = _IDSIDProtocolVersionNumber();
                          [v307 setIDSVersion:v195];

                          [v307 setRegistrationStatus:8];
                          [v307 setDeviceName:v301];
                          v196 = [NSNumber numberWithBool:v271];
                          [v307 setIsCDMA:v196];

                          if ([v307 isDisabled])
                          {
                            v197 = +[IMRGLog registration];
                            if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v406 = v307;
                              v198 = v197;
                              v199 = "Registration disabled, not saving. { candidateRegistration : %@ }";
                              goto LABEL_310;
                            }
                          }

                          else
                          {
                            [v307 saveToKeychain];
                            v197 = +[IMRGLog registration];
                            if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v406 = v307;
                              v198 = v197;
                              v199 = "Registration not disabled, saving. { candidateRegistration : %@ }";
LABEL_310:
                              _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_DEFAULT, v199, buf, 0xCu);
                            }
                          }

                          if (![v307 registrationType])
                          {
                            v202 = [v183 _IDsFromURIs];
                            v203 = +[IMRGLog registration];
                            if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v203, OS_LOG_TYPE_DEFAULT, "Extracted IDs from bindings", buf, 2u);
                            }

                            v204 = [v202 __imFirstObject];
                            if ([v204 length])
                            {
                              v205 = +[IMRGLog registration];
                              if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412546;
                                *v406 = v204;
                                *&v406[8] = 2112;
                                *&v406[10] = v307;
                                _os_log_impl(&_mh_execute_header, v205, OS_LOG_TYPE_DEFAULT, "Setting number: %@  on registration: %@", buf, 0x16u);
                              }

                              [v307 setPhoneNumber:v204];
                            }

                            else
                            {
                              v209 = +[IMRGLog registration];
                              if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&_mh_execute_header, v209, OS_LOG_TYPE_DEFAULT, "Number is empty, not adjusting", buf, 2u);
                              }
                            }
                          }

                          v210 = v183;
                          if ([v307 registrationType] != 1)
                          {
                            goto LABEL_353;
                          }

                          v210 = v183;
                          if ([v183 count])
                          {
                            goto LABEL_353;
                          }

                          if ([v307 shouldRegisterUsingDSHandle])
                          {
                            v211 = [v307 dsHandle];

                            if (v211)
                            {
                              v212 = +[IMRGLog registration];
                              if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, " => Adding self handle", buf, 2u);
                              }

                              v213 = [v307 dsHandle];
                              v214 = IMSingleObjectArray();
LABEL_351:
                              v210 = v214;
                              v216 = v183;
LABEL_352:

LABEL_353:
                              v217 = +[IMRGLog registration];
                              if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *v406 = v210;
                                _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "Success, registered URIs are: %@", buf, 0xCu);
                              }

                              v218 = +[IMRGLog registration];
                              if (os_log_type_enabled(v218, OS_LOG_TYPE_DEBUG))
                              {
                                *buf = 138412290;
                                *v406 = v292;
                                _os_log_debug_impl(&_mh_execute_header, v218, OS_LOG_TYPE_DEBUG, "KT enrolled URIs are: %@", buf, 0xCu);
                              }

                              [v307 setUris:v210];
                              [v307 setKeyTransparencyEnrolledURIs:v292];
                              v219 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
                              v220 = v323->_eventTracer;
                              v221 = [v307 registrationTraceID];
                              [(IDSRegistrationEventTracing *)v220 endEvent:v219 identifier:v221 error:0];

                              v222 = +[IMRGLog registration];
                              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *v406 = v307;
                                _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, " Notifying for success of: %@", buf, 0xCu);
                              }

                              v223 = OSLogHandleForIDSCategory();
                              if (os_log_type_enabled(v223, OS_LOG_TYPE_DEFAULT))
                              {
                                v224 = [v307 mainID];
                                v225 = [v307 serviceIdentifier];
                                *buf = 138412546;
                                *v406 = v224;
                                *&v406[8] = 2112;
                                *&v406[10] = v225;
                                _os_log_impl(&_mh_execute_header, v223, OS_LOG_TYPE_DEFAULT, "Registration SUCCESS for %@ on %@", buf, 0x16u);
                              }

                              v226 = v323;
                              if (os_log_shim_legacy_logging_enabled())
                              {
                                v227 = [v307 mainID];
                                [v307 serviceIdentifier];
                                v252 = v251 = v227;
                                _IDSLogEventV();

                                v226 = v323;
                              }

                              [(IDSRegistrationCenter *)v226 _notifyRegistrationSuccess:v307, v251, v252];
                              successfulRegistrations = v226->_successfulRegistrations;
                              if (!successfulRegistrations)
                              {
                                v229 = objc_alloc_init(NSMutableArray);
                                v231 = v226->_successfulRegistrations;
                                p_successfulRegistrations = &v226->_successfulRegistrations;
                                *p_successfulRegistrations = v229;

                                successfulRegistrations = *p_successfulRegistrations;
                              }

                              [successfulRegistrations addObject:v307];

LABEL_366:
                              goto LABEL_367;
                            }

                            v215 = +[IMRGLog registration];
                            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, " => Adding sentinel, registration doesn't have a self-handle yet", buf, 2u);
                            }
                          }

                          else
                          {
                            if (!+[IDSRegistrationController systemSupportsPhoneNumberRegistration])
                            {
                              if (sub_1005288CC())
                              {
                                v216 = +[IMRGLog registration];
                                if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
                                {
                                  *buf = 0;
                                  _os_log_impl(&_mh_execute_header, v216, OS_LOG_TYPE_DEFAULT, " => Registration is allowed to continue with empty identities", buf, 2u);
                                }

                                v213 = v183;
                                v210 = &__NSArray0__struct;
                                goto LABEL_352;
                              }

                              v232 = +[IMRGLog registration];
                              if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *v406 = v307;
                                _os_log_impl(&_mh_execute_header, v232, OS_LOG_TYPE_DEFAULT, " => ***** No registered identities, failing registration: %@ ******", buf, 0xCu);
                              }

                              v233 = +[IMRGLog registration];
                              if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 138412290;
                                *v406 = v307;
                                _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "***** Notifying, empty URI response: %@ *****", buf, 0xCu);
                              }

                              [(IDSRegistrationCenter *)v323 _notifyRegistrationFailure:v307 responseCode:0 registrationError:42 error:v312 info:v278];
                              v210 = v183;
                              goto LABEL_366;
                            }

                            v215 = +[IMRGLog registration];
                            if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, " => Adding sentinel binding", buf, 2u);
                            }
                          }

                          v213 = [v263 lowercaseString];
                          v214 = IMSingleObjectArray();
                          goto LABEL_351;
                        }

                        if (v139 != 6001)
                        {
                          if (v139 != 6005)
                          {
LABEL_249:
                            v152 = +[IMRGLog registration];
                            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *v406 = v280;
                              _os_log_impl(&_mh_execute_header, v152, OS_LOG_TYPE_DEFAULT, " *** Unhandled status code: %@", buf, 0xCu);
                            }

                            if ([v277 length])
                            {
                              v149 = +[IMRGLog registration];
                              if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                              {
                                *buf = 0;
                                v150 = v149;
                                v151 = " => We have a cert, treating as success";
LABEL_254:
                                _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, v151, buf, 2u);
                              }

                              goto LABEL_255;
                            }

                            v142 = +[IMRGLog registration];
                            if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, " => We have no cert, treating as failure", buf, 2u);
                            }

                            v144 = 9;
LABEL_324:

LABEL_325:
                            v208 = +[IMRGLog registration];
                            if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412802;
                              *v406 = v280;
                              *&v406[8] = 1024;
                              *&v406[10] = v144;
                              *&v406[14] = 2112;
                              *&v406[16] = v307;
                              _os_log_impl(&_mh_execute_header, v208, OS_LOG_TYPE_DEFAULT, " ***** Notifying for failure (code: %@:%d) of: %@", buf, 0x1Cu);
                            }

                            [(IDSRegistrationCenter *)v323 _notifyRegistrationFailure:v307 responseCode:0 registrationError:v144 error:v312 info:v278];
                            goto LABEL_367;
                          }

LABEL_242:
                          v145 = +[IMRGLog registration];
                          if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *v406 = v140;
                            _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, " *** Need new credentials { candidateRegistration: %@ }", buf, 0xCu);
                          }

                          if (![v307 registrationType])
                          {
                            v146 = [(IDSRegistrationCenter *)v323 registrationReasonTracker];
                            v147 = [v307 userUniqueIdentifier];
                            [v146 setPNRReason:14 forUserUniqueIdentifier:v147];

                            v148 = +[IDSPACStateTracker sharedInstance];
                            [v148 notePhoneAuthCertLost:1];
                          }

                          [v307 setAuthenticationCert:0];
                          v144 = 37;
                          goto LABEL_325;
                        }

                        v200 = +[IMRGLog registration];
                        if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          *v406 = v307;
                          _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, " *** Server rejected registration { candidateRegistration: %@ }", buf, 0xCu);
                        }

                        sub_1005285B8(v275);
                      }

                      v144 = 31;
                      goto LABEL_325;
                    }
                  }

LABEL_367:

                  v294 = v294 + 1;
                }

                while (v294 != v284);
                v234 = [v281 countByEnumeratingWithState:&v364 objects:v408 count:16];
                v284 = v234;
              }

              while (v234);
            }

            v265 = v265 + 1;
          }

          while (v265 != v259);
          v235 = [v261 countByEnumeratingWithState:&v368 objects:v409 count:16];
          v259 = v235;
        }

        while (v235);
      }

      v258 = v258 + 1;
    }

    while (v258 != v253);
    v110 = [v257 countByEnumeratingWithState:&v372 objects:v410 count:16];
  }

  while (v110);

  if (v309)
  {
    v236 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v236, OS_LOG_TYPE_DEFAULT, "Serializing and persisting updates to KT registration data.", buf, 2u);
    }

    v237 = +[IDSRegistrationKeyManager sharedInstance];
    [v237 _serializeAndPersistKTRegistrationDataDeleteIfNull:1];

    v238 = [(IDSRegistrationCenter *)v323 keyTransparencyVerifier];
    [v238 updateKeyTransparencyManagersWithKTState];
LABEL_398:
  }

  [(IDSRegistrationCenter *)v323 _notifyAllSuccessfulRegistrations:v323->_successfulRegistrations];
  v244 = v323->_successfulRegistrations;
  v323->_successfulRegistrations = 0;

  if ([v279 count])
  {
    v245 = +[IMRGLog registration];
    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
    {
      v246 = [v279 count];
      *buf = 67109378;
      *v406 = v246;
      *&v406[4] = 2112;
      *&v406[6] = v279;
      v247 = " *** We have %d unhandled registrations leftover from this: %@";
      v248 = v245;
      v249 = 18;
      goto LABEL_404;
    }
  }

  else
  {
    v245 = +[IMRGLog registration];
    if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v247 = " All registrations were handled, we're good to go";
      v248 = v245;
      v249 = 2;
LABEL_404:
      _os_log_impl(&_mh_execute_header, v248, OS_LOG_TYPE_DEFAULT, v247, buf, v249);
    }
  }

  v250 = +[IDSHeartbeatCenter sharedInstance];
  [v250 updateHeartbeat];

LABEL_156:
  p_isa = &v323->super.isa;
LABEL_157:
  sub_1005285B8(v285);
  [p_isa[19] removeFromQueue:v322 subsystem:1];
  [p_isa _dequeuePendingRequestsIfNecessary];

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_URIsToRegisterForRegistration:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  if (![v3 registrationType] || objc_msgSend(v3, "registrationType") == 2)
  {
    v5 = [v3 phoneNumber];
    v6 = IMSingleObjectArray();
    v7 = [v6 _URIsFromIDs];
    v8 = [v7 __imArrayByApplyingBlock:&stru_100BDF7E8];
    [v4 addObjectsFromArray:v8];

LABEL_4:
    goto LABEL_5;
  }

  if ([v3 registrationType] == 1)
  {
    v5 = [v3 emailsToRegister];
    v6 = [v5 _URIsFromIDs];
    v7 = [v6 __imArrayByApplyingBlock:&stru_100BDF808];
    [v4 addObjectsFromArray:v7];
    goto LABEL_4;
  }

LABEL_5:
  v9 = [NSSet setWithArray:v4];

  return v9;
}

- (id)_trustedDeviceForRegistrations:(id)a3 transparencyLoggableDatasByServiceType:(id)a4 transparencyDeviceSignaturesByServiceType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v34 = a5;
  v32 = objc_alloc_init(NSMutableArray);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v35)
  {
    v33 = *v44;
    v31 = v8;
    do
    {
      for (i = 0; i != v35; i = i + 1)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v43 + 1) + 8 * i);
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = sub_100528F18;
        v42[3] = &unk_100BDF830;
        v42[4] = v11;
        v12 = [v8 __imArrayByFilteringWithBlock:{v42, v31}];
        if ([v12 count])
        {
          v13 = [v12 firstObject];
          v37 = [v13 serviceIdentifier];
        }

        else
        {
          v37 = 0;
        }

        v14 = objc_alloc_init(NSMutableSet);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v15 = v12;
        v16 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v39;
          do
          {
            for (j = 0; j != v17; j = j + 1)
            {
              if (*v39 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = [(IDSRegistrationCenter *)self _URIsToRegisterForRegistration:*(*(&v38 + 1) + 8 * j)];
              [v14 unionSet:v20];
            }

            v17 = [v15 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v17);
        }

        v21 = [obj objectForKeyedSubscript:v11];
        v22 = [v34 objectForKeyedSubscript:v11];
        v23 = v22;
        if (v21 && v22)
        {
          v24 = objc_alloc_init(IDSProtoKeyTransparencyTrustedService);
          [(IDSProtoKeyTransparencyTrustedService *)v24 setServiceIdentifier:v37];
          v25 = [v14 allObjects];
          v26 = [v25 __imArrayByApplyingBlock:&stru_100BDF850];
          v27 = [v26 mutableCopy];
          [(IDSProtoKeyTransparencyTrustedService *)v24 setUris:v27];

          v8 = v31;
          [(IDSProtoKeyTransparencyTrustedService *)v24 setKtLoggableData:v21];
          [(IDSProtoKeyTransparencyTrustedService *)v24 setDeviceSignature:v23];
          [v32 addObject:v24];
        }
      }

      v35 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v35);
  }

  v28 = objc_alloc_init(IDSProtoKeyTransparencyTrustedDevice);
  v29 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSProtoKeyTransparencyTrustedDevice *)v28 setPushToken:v29];

  [(IDSProtoKeyTransparencyTrustedDevice *)v28 setTrustedServices:v32];

  return v28;
}

- (id)privateDeviceDataForKVSSuccess:(BOOL)a3
{
  v3 = a3;
  v4 = +[FTDeviceSupport sharedInstance];
  v53 = [v4 deviceType];

  v5 = +[FTDeviceSupport sharedInstance];
  value = [v5 deviceColor];

  v6 = +[FTDeviceSupport sharedInstance];
  v56 = [v6 enclosureColor];

  v7 = +[IDSCurrentDevice sharedInstance];
  v55 = [v7 deviceIdentifier];

  v8 = +[NSDate date];
  [v8 timeIntervalSinceReferenceDate];
  v9 = [NSNumber numberWithDouble:?];
  v54 = [v9 stringValue];

  if (v3)
  {
    v10 = &off_100C3C988;
  }

  else
  {
    v10 = &off_100C3C9A0;
  }

  v52 = [v10 stringValue];
  v51 = [NSNumber numberWithLongLong:kTransparencyAnalyticsVersion];
  v11 = +[FTDeviceSupport sharedInstance];
  v12 = [v11 supportsSMS];

  v13 = +[FTDeviceSupport sharedInstance];
  v50 = [v13 supportsMMS];

  v14 = +[FTDeviceSupport sharedInstance];
  v15 = [v14 supportsApplePay];

  v16 = +[FTDeviceSupport sharedInstance];
  v17 = [v16 supportsHandoff];

  v18 = +[FTDeviceSupport sharedInstance];
  v19 = [v18 supportsTethering];

  v20 = +[IDSCTAdapter sharedInstance];
  if ([v20 supportsIdentification])
  {
    v21 = +[FTDeviceSupport sharedInstance];
    v22 = [v21 deviceType] == 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = +[FTDeviceSupport sharedInstance];
  v24 = [v23 isGreenTea];

  v25 = objc_alloc_init(NSMutableDictionary);
  v26 = _IDSPrivateDeviceDataVersionNumber();
  v27 = [v26 stringValue];
  [v25 setObject:v27 forKey:IDSPrivateDeviceDataVersion];

  v28 = [NSNumber numberWithBool:v15];
  v29 = [v28 stringValue];
  [v25 setObject:v29 forKey:IDSPrivateDeviceDataSupportsApplePay];

  v30 = [NSNumber numberWithBool:v17];
  v31 = [v30 stringValue];
  [v25 setObject:v31 forKey:IDSPrivateDeviceDataSupportsHandoff];

  v32 = [NSNumber numberWithBool:v19];
  v33 = [v32 stringValue];
  [v25 setObject:v33 forKey:IDSPrivateDeviceDataSupportsTethering];

  v34 = [NSNumber numberWithBool:v12];
  v35 = [v34 stringValue];
  [v25 setObject:v35 forKey:IDSPrivateDeviceDataSupportsSMSRelay];

  v36 = [NSNumber numberWithBool:v50];
  v37 = [v36 stringValue];
  [v25 setObject:v37 forKey:IDSPrivateDeviceDataSupportsMMSRelay];

  v38 = [NSNumber numberWithBool:v22];
  v39 = [v38 stringValue];
  [v25 setObject:v39 forKey:IDSPrivateDeviceDataSupportsPhoneCalls];

  v40 = [NSNumber numberWithBool:v24];
  v41 = [v40 stringValue];
  [v25 setObject:v41 forKey:IDSPrivateDeviceDataGreenTea];

  v42 = +[IMDeviceSupport sharedInstance];
  v43 = [v42 productBuildVersion];

  if (v43)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataProductBuildVersion, v43);
  }

  v44 = +[IMDeviceSupport sharedInstance];
  v45 = [v44 productName];

  if (v45)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataProductName, v45);
  }

  v46 = +[IMDeviceSupport sharedInstance];
  v47 = [v46 productVersion];

  if (v47)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataProductVersion, v47);
  }

  if (v55)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataUniqueID, v55);
  }

  if (v54)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataRegistrationDate, v54);
  }

  v48 = [NSNumber numberWithInteger:v53];
  if (v48)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataDeviceType, v48);
  }

  if (value)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataColor, value);
  }

  if (v56)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataEnclosureColor, v56);
  }

  if (v52)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataKeyTransparencyFlags, v52);
  }

  if (v51)
  {
    CFDictionarySetValue(v25, IDSPrivateDeviceDataTransparencyVersion, v51);
  }

  return v25;
}

- (id)_assignSlotIDToLabelID:(id)a3 telephonyAdapater:(id)a4
{
  v5 = a4;
  v6 = [a3 __imArrayByApplyingBlock:&stru_100BDF890];
  v7 = [NSSet setWithArray:v6];

  v8 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v50;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v50 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [v5 SIMForIdentifier:*(*(&v49 + 1) + 8 * i)];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v11);
  }

  v40 = v5;
  v38 = v9;

  v39 = v8;
  v15 = [v8 sortedArrayUsingComparator:&stru_100BDF8D0];
  v16 = [&off_100C3DD18 mutableCopy];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 slot]);
        v24 = [v16 containsObject:v23];

        if (v24)
        {
          v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v22 slot]);
          [v16 removeObject:v25];
        }

        else
        {
          if ([v22 slot] == 2)
          {
            continue;
          }

          v25 = +[IMRGLog registration];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v54 = v22;
            _os_log_fault_impl(&_mh_execute_header, v25, OS_LOG_TYPE_FAULT, "Unexpected sim slot found! %@", buf, 0xCu);
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
    }

    while (v19);
  }

  v26 = +[NSMutableDictionary dictionary];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v27 = v17;
  v28 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v42;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v42 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v41 + 1) + 8 * k);
        if ([v32 slot] == 2)
        {
          v33 = [v16 firstObject];
          [v16 removeFirstObject];
          v34 = +[IMRGLog registration];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v32 SIMIdentifier];
            *buf = 138412546;
            v54 = v33;
            v55 = 2112;
            v56 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Assign slotID %@ to sim with unknown slotID %@", buf, 0x16u);
          }
        }

        else
        {
          v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v32 slot]);
        }

        v36 = [v32 SIMIdentifier];
        [v26 setObject:v33 forKeyedSubscript:v36];
      }

      v29 = [v27 countByEnumeratingWithState:&v41 objects:v57 count:16];
    }

    while (v29);
  }

  return v26;
}

- (void)_sendRegistrationAsDeregister:(BOOL)a3
{
  v3 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v86 = _os_activity_create(&_mh_execute_header, "Registration center send registration message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v86, &state);
  if (v3)
  {
    if (!self->_pendingDeregistration)
    {
      v14 = +[IMRGLog registration];
      v56 = v14;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "This is a deregister, and we have no pending deregistration, bailing", buf, 2u);
      }

      goto LABEL_23;
    }

    v5 = @"deregistration";
    v6 = @"deregister";
  }

  else
  {
    v5 = @"registration";
    v6 = @"register";
  }

  v56 = [(IDSPushHandler *)self->_pushHandler pushToken];
  if (+[IDSRegistrationController canCompleteRegistration])
  {
    if (![v56 length])
    {
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IDSPushHandler *)self->_pushHandler pushToken];
        currentRegistrations = self->_currentRegistrations;
        *buf = 138412546;
        v89 = v8;
        v90 = 2112;
        v91 = currentRegistrations;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Push handler returned push token: %@, deferring (%@)", buf, 0x16u);
      }

      [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
    }

    if ([(NSMutableArray *)self->_currentRegistrations count])
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->_currentRegistrations;
        *buf = 138412290;
        v89 = v11;
        v12 = "*** We have current (de)registrations, deferring (%@)";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    v15 = +[IMLockdownManager sharedInstance];
    v16 = [v15 isExpired];
    v53 = v6;
    v55 = v5;
    v54 = v3;

    if (v16)
    {
      v10 = +[IMRGLog registration];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v89 = v55;
        v12 = "*** Lockdown state is expired, not sending %@";
        goto LABEL_21;
      }

LABEL_22:

      [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
      goto LABEL_23;
    }

    if ([(IDSRegistrationCenter *)self _checkOverRegistrations])
    {
      v17 = +[IMRGLog warning];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_100928904();
      }

      v75 = _NSConcreteStackBlock;
      v76 = 3221225472;
      v77 = sub_10052A468;
      v78 = &unk_100BD6ED0;
      v79 = self;
      im_dispatch_after_primary_queue();
    }

    else if ([(IDSRegistrationCenter *)self _hasOngoingAuthentications])
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "*** We have an ongoing authentication, deferring register", buf, 2u);
      }

      v70 = _NSConcreteStackBlock;
      v71 = 3221225472;
      v72 = sub_10052A470;
      v73 = &unk_100BD6ED0;
      v74 = self;
      im_dispatch_after_primary_queue();
    }

    else
    {
      [(IDSRegistrationCenter *)self _shouldDisableSecondaryRegistration];
      v19 = +[IDSCTAdapter sharedInstance];
      v51 = [v19 hasMultipleSIMs];

      v20 = +[IDSCTAdapter sharedInstance];
      v50 = [v20 dualSIMCapabilityEnabled];

      v21 = +[FTUserConfiguration sharedInstance];
      v49 = [v21 isDeviceInDualPhoneIdentityMode];

      v52 = +[NSString stringGUID];
      v22 = objc_alloc_init(IDSRegistrationMessage);
      v23 = [NSString stringWithFormat:@"Sending IDS %@", v55];
      sub_100450174(0, @"Registration", v23, 0);
      v48 = v22;

      v24 = +[IDSRegistrationController sharedInstance];
      v25 = [v24 activeRegistrationsToRegister];
      v26 = [v25 _copyForEnumerating];

      [(NSMutableArray *)self->_currentRegistrations addObjectsFromArray:v26];
      v27 = objc_alloc_init(IDSRegistrationEventTracingRegistrationEvent);
      v28 = [[IDSRegistrationEventTracingConstructKTClientDataEvent alloc] initWithRegisterID:v52];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v29 = v26;
      v30 = [v29 countByEnumeratingWithState:&v66 objects:v87 count:16];
      if (v30)
      {
        v31 = *v67;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v67 != v31)
            {
              objc_enumerationMutation(v29);
            }

            v33 = *(*(&v66 + 1) + 8 * i);
            eventTracer = self->_eventTracer;
            v35 = [v33 registrationTraceID];
            LOBYTE(eventTracer) = [(IDSRegistrationEventTracing *)eventTracer isRegistrationOpenWithGuid:v35];

            if ((eventTracer & 1) == 0)
            {
              [v33 resetRegistrationID];
              v36 = self->_eventTracer;
              v37 = [v33 registrationTraceID];
              [(IDSRegistrationEventTracing *)v36 beginEvent:v27 identifier:v37];
            }

            v38 = self->_eventTracer;
            v39 = [v33 registrationTraceID];
            [(IDSRegistrationEventTracing *)v38 beginEvent:v28 identifier:v39];
          }

          v30 = [v29 countByEnumeratingWithState:&v66 objects:v87 count:16];
        }

        while (v30);
      }

      v40 = +[IMRGLog registration];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Constructing client data objects", buf, 2u);
      }

      v41 = +[IDSRegistrationKeyManager sharedInstance];
      v42 = +[IDSKeyTransparencyVerifier sharedInstance];
      v43 = [IDSClientDataGenerator clientDatasForRegistrations:v29 registerID:v52 keyStore:v41 keyTransparencyVerifier:v42];

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_10052A478;
      v57[3] = &unk_100BDF988;
      v57[4] = self;
      v44 = v28;
      v58 = v44;
      v45 = v52;
      v59 = v45;
      v46 = v29;
      v60 = v46;
      v47 = v48;
      v64 = (v50 | v51) & v49 & 1;
      v61 = v47;
      v62 = v55;
      v63 = v53;
      v65 = v54;
      [v43 registerResultBlock:v57];
    }
  }

  else
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Waiting for setup/first unlock to complete before sending registration message -- deferring registration", buf, 2u);
    }

    v80 = _NSConcreteStackBlock;
    v81 = 3221225472;
    v82 = sub_10052A460;
    v83 = &unk_100BD6ED0;
    v84 = self;
    im_dispatch_after_primary_queue();
  }

LABEL_23:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)__reallySendDeregistration
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending deregistration now...", v4, 2u);
  }

  self->_pendingDeregistration = 1;
  [(IDSRegistrationCenter *)self _sendRegistrationAsDeregister:1];
}

- (void)_sendDeregistration:(id)a3
{
  v4 = a3;
  sub_100450174(0, @"Registration", @"Sending IDS deregistration", 0);
  v5 = +[IMLockdownManager sharedInstance];
  v6 = [v5 isExpired];

  v7 = +[IMRGLog registration];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not sending de-registration", &v9, 2u);
    }
  }

  else
  {
    if (v8)
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Deferring deregistration for %@", &v9, 0xCu);
    }

    [(CUTDeferredTaskQueue *)self->_sendDeregistrationTask enqueueExecutionWithTarget:self afterDelay:6.0];
  }
}

- (void)sendHardDeregisterCompletionBlock:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v44 = _os_activity_create(&_mh_execute_header, "Registration center send hard deregister", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v44, &state);
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sending hard deregistration now...", buf, 2u);
  }

  [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery invalidate];
  [(CUTDeferredTaskQueue *)self->_sendAuthenticateRegistrationTask cancelPendingExecutions];
  [(CUTDeferredTaskQueue *)self->_sendDeregistrationTask cancelPendingExecutions];
  [(CUTDeferredTaskQueue *)self->_sendRegistrationTask cancelPendingExecutions];
  queuedAuthentications = self->_queuedAuthentications;
  self->_queuedAuthentications = 0;

  queuedRegistrations = self->_queuedRegistrations;
  self->_queuedRegistrations = 0;

  [(IDSValidationQueue *)self->_validationQueue clearQueueForSubsystem:1];
  v8 = +[IMLockdownManager sharedInstance];
  v9 = [v8 isExpired];

  if (v9)
  {
    v10 = +[IMRGLog registration];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = @"hard deregister";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not sending %@", buf, 0xCu);
    }

    [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  }

  else
  {
    v11 = +[NSString stringGUID];
    v12 = objc_alloc_init(IDSRegistrationMessage);
    v13 = [NSString stringWithFormat:@"Sending IDS %@", @"hard deregister"];
    sub_100450174(0, @"Registration", v13, 0);

    v14 = +[FTDeviceSupport sharedInstance];
    v15 = [v14 model];

    v16 = +[FTDeviceSupport sharedInstance];
    v17 = [v16 productOSVersion];

    v18 = +[FTDeviceSupport sharedInstance];
    v19 = [v18 productBuildVersion];

    v20 = +[FTDeviceSupport sharedInstance];
    v21 = [v20 deviceName];

    IDSAssignPushIdentityToMessage();
    v22 = +[NSArray array];
    [(IDSRegistrationMessage *)v12 setServices:v22];

    [(IDSRegistrationMessage *)v12 setDeviceName:v21];
    v23 = [(IDSPushHandler *)self->_pushHandler pushToken];
    [(IDSRegistrationMessage *)v12 setPushToken:v23];

    v24 = +[IMRGLog registration];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(IDSPushHandler *)self->_pushHandler pushToken];
      *buf = 138412290;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Push handler returned push token: %@", buf, 0xCu);
    }

    [(IDSRegistrationMessage *)v12 setHardwareVersion:v15];
    [(IDSRegistrationMessage *)v12 setOsVersion:v17];
    [(IDSRegistrationMessage *)v12 setSoftwareVersion:v19];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10052D624;
    v38[3] = &unk_100BDF9B0;
    v38[4] = self;
    v39 = @"hard deregister";
    v26 = v11;
    v40 = v26;
    v41 = @"deregister";
    v42 = v4;
    [(IDSRegistrationMessage *)v12 setCompletionBlock:v38];
    [(IDSRegistrationMessage *)v12 setTimeout:36000.0];
    sub_1004C6E84();
    objc_initWeak(buf, self);
    validationQueue = self->_validationQueue;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_10052D6A4;
    v32[3] = &unk_100BDF960;
    v33 = @"hard deregister";
    v28 = v26;
    v34 = v28;
    v35 = self;
    v29 = v12;
    v36 = v29;
    v37 = @"deregister";
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10052D884;
    v30[3] = &unk_100BDE7A8;
    objc_copyWeak(&v31, buf);
    [(IDSValidationQueue *)validationQueue queueBuildingValidationDataIfNecessaryForMessage:v29 subsystem:1 withQueueCompletion:v32 sendBlock:v30];
    objc_destroyWeak(&v31);

    objc_destroyWeak(buf);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (id)_authMessageCompletionWithRegistration:(id)a3 withOverallSuccessBlock:(id)a4 overallFailure:(id)a5
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10052D9E8;
  v13[3] = &unk_100BDFA18;
  v13[4] = self;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = v16;
  v8 = v15;
  v9 = v14;
  v10 = objc_retainBlock(v13);
  v11 = objc_retainBlock(v10);

  return v11;
}

- (id)_authDSMessageForRegistration:(id)a3 realm:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 profileID];
  v9 = [v8 _IDFromFZIDType:2];

  v10 = [v6 authenticationToken];
  v11 = [(IDSPushHandler *)self->_pushHandler pushToken];
  v12 = _AuthenticationDictionaryFromParameters();

  v13 = +[IDSRegistrationKeyManager sharedInstance];
  v14 = [v6 mainID];
  v15 = [v13 generateCSRForUserID:v14];

  v16 = objc_alloc_init(IDSAuthenticateMessage);
  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v9;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "      User ID: %@", buf, 0xCu);
  }

  v18 = +[IMRGLog registration];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "     AuthInfo: %@", buf, 0xCu);
  }

  [(IDSAuthenticateMessage *)v16 setUserID:v9];
  [(IDSAuthenticateMessage *)v16 setRealm:v7];
  [(IDSAuthenticateMessage *)v16 setCsr:v15];
  [(IDSAuthenticateMessage *)v16 setAuthenticationInfo:v12];
  v19 = sub_10001F5A0(v6);
  [(IDSAuthenticateMessage *)v16 setDSAuthID:v19];

  IDSAssignPushIdentityToMessage();
  v20 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSAuthenticateMessage *)v16 setPushToken:v20];

  v21 = [NSDictionary dictionaryWithObject:v6 forKey:@"info"];
  [(IDSAuthenticateMessage *)v16 setUserInfo:v21];

  objc_initWeak(buf, v16);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10052E27C;
  v33[3] = &unk_100BDFA40;
  objc_copyWeak(&v36, buf);
  v34 = v6;
  v35 = self;
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_10052E68C;
  v29 = &unk_100BDFA68;
  v22 = v34;
  v30 = v22;
  v31 = self;
  v23 = v12;
  v32 = v23;
  v24 = [(IDSRegistrationCenter *)self _authMessageCompletionWithRegistration:v22 withOverallSuccessBlock:v33 overallFailure:&v26];
  [(IDSAuthenticateMessage *)v16 setCompletionBlock:v24, v26, v27, v28, v29];

  objc_destroyWeak(&v36);
  objc_destroyWeak(buf);

  return v16;
}

- (id)_authUsersMessageForRegistration:(id)a3 realm:(id)a4
{
  v31 = a3;
  v32 = a4;
  v5 = +[IDSDaemon sharedInstance];
  v6 = [v5 registrationConductor];
  v39 = [v6 userStore];

  v7 = [v39 usersWithRealm:0];
  val = objc_alloc_init(IDSAuthenticateUsersMessage);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v8)
  {
    v38 = *v50;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v50 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * i);
        v11 = [v39 authenticationCertificateForUser:v10];
        v12 = [(__CFString *)v10 realmPrefixedIdentifier];
        if (v11)
        {
          v13 = +[IMRGLog registration];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v54 = v12;
            v55 = 2112;
            v56 = v10;
            v57 = 2112;
            v58 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "     Authing user with cert {rpi: %@, user: %@, cert: %@}", buf, 0x20u);
          }

          v14 = [(__CFString *)v11 dataRepresentation];
          [(IDSAuthenticateUsersMessage *)val addRequestWithID:v12 cert:v14];
        }

        else
        {
          v15 = [v39 credentialForUser:v10];
          v14 = v15;
          if (v15 && ![v15 realm] && (objc_msgSend(v14, "smsSignature"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v17 = +[IDSCTAdapter sharedInstance];
            v18 = [(__CFString *)v10 uniqueIdentifier];
            v34 = [v17 SIMForIdentifier:v18];

            v19 = [v34 slot];
            v20 = @"SIM2";
            if (!v19)
            {
              v20 = @"SIM1";
            }

            v35 = v20;
            v21 = [v16 _FTDataFromBase64String];
            v22 = +[IMRGLog registration];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              v54 = v35;
              v55 = 2112;
              v56 = v12;
              v57 = 2112;
              v58 = v10;
              v59 = 2112;
              v60 = v21;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "     Authing user with sig {tag: %@, rpi: %@, user: %@, sigData: %@}", buf, 0x2Au);
            }

            v23 = +[IDSRegistrationKeyManager sharedInstance];
            v24 = [(__CFString *)v10 unprefixedIdentifier];
            v25 = [v23 generateCSRForUserID:v24];

            [(IDSAuthenticateUsersMessage *)val addRequestWithID:v12 sig:v21 csr:v25 tag:v35];
          }

          else
          {
            v16 = +[IMRGLog registration];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v10;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "     User lacking cert or credential: %@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v8);
  }

  [(IDSAuthenticateUsersMessage *)val setRealm:v32];
  IDSAssignPushIdentityToMessage();
  v26 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSAuthenticateUsersMessage *)val setPushToken:v26];

  objc_initWeak(buf, val);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10052EDFC;
  v44[3] = &unk_100BDFAB8;
  objc_copyWeak(&v48, buf);
  v45 = v39;
  v46 = v31;
  v47 = self;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10052F61C;
  v40[3] = &unk_100BDFA68;
  v27 = v46;
  v41 = v27;
  v28 = v45;
  v42 = v28;
  v43 = self;
  v29 = [(IDSRegistrationCenter *)self _authMessageCompletionWithRegistration:v27 withOverallSuccessBlock:v44 overallFailure:v40];
  [(IDSAuthenticateUsersMessage *)val setCompletionBlock:v29];

  objc_destroyWeak(&v48);
  objc_destroyWeak(buf);

  return val;
}

- (id)_provTemporaryPhoneMessageForRegistration:(id)a3
{
  v4 = a3;
  v5 = +[IDSDaemon sharedInstance];
  v6 = [v5 registrationConductor];
  v7 = [v6 userStore];

  v8 = [v4 userUniqueIdentifier];
  v9 = [v7 userWithUniqueIdentifier:v8];

  v10 = [v7 credentialForUser:v9];
  if ([v10 realm] == 2)
  {
    v11 = v10;
    v12 = objc_alloc_init(IDSProvisionTemporaryPhoneMessage);
    IDSAssignPushIdentityToMessage();
    v13 = [(IDSPushHandler *)self->_pushHandler pushToken];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setPushToken:v13];

    v14 = [v4 profileID];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setProfileID:v14];

    v15 = [v4 authenticationToken];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setAuthToken:v15];

    v16 = [v9 countryCode];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setCountryCode:v16];

    v17 = [v9 networkCode];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setNetworkCode:v17];

    v18 = [v11 phoneAuthenticationCertificate];
    v19 = [v18 dataRepresentation];
    v20 = [v4 idsUserID];
    [(IDSProvisionTemporaryPhoneMessage *)v12 addPhoneAuthenticationCertificate:v19 withUserID:v20];

    v21 = [v4 idsUserID];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10052FB34;
    v33[3] = &unk_100BDFAE0;
    v34 = v7;
    v35 = v21;
    v36 = v4;
    v37 = self;
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_1005301C0;
    v28 = &unk_100BDFB08;
    v29 = v36;
    v30 = v34;
    v31 = v35;
    v32 = self;
    v22 = v35;
    v23 = [(IDSRegistrationCenter *)self _authMessageCompletionWithRegistration:v29 withOverallSuccessBlock:v33 overallFailure:&v25];
    [(IDSProvisionTemporaryPhoneMessage *)v12 setCompletionBlock:v23, v25, v26, v27, v28];
  }

  else
  {
    v11 = +[IMRGLog registration];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_100928BA0(v4, v10, v11);
    }

    v12 = 0;
  }

  return v12;
}

- (id)_authMessageForRegistration:(id)a3
{
  v4 = a3;
  v5 = [v4 serviceType];
  v6 = sub_100450490(v5);

  v7 = sub_100450530([v4 registrationType]);
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "IDS authenticating registration info: %@", &v20, 0xCu);
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(IDSPushHandler *)self->_pushHandler pushToken];
    v11 = [v10 debugDescription];
    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "    Push handler returned push token: %@", &v20, 0xCu);
  }

  v12 = +[IMRGLog registration];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "      Service: %@", &v20, 0xCu);
  }

  v13 = +[IMRGLog registration];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "        Realm: %@", &v20, 0xCu);
  }

  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = IMGetEnvironmentName();
    v20 = 138412290;
    v21 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  Environment: %@", &v20, 0xCu);
  }

  v16 = [v4 registrationType];
  switch(v16)
  {
    case 0u:
      v17 = [(IDSRegistrationCenter *)self _authUsersMessageForRegistration:v4 realm:v7];
      goto LABEL_17;
    case 2u:
      v17 = [(IDSRegistrationCenter *)self _provTemporaryPhoneMessageForRegistration:v4];
      goto LABEL_17;
    case 1u:
      v17 = [(IDSRegistrationCenter *)self _authDSMessageForRegistration:v4 realm:v7];
LABEL_17:
      v18 = v17;
      goto LABEL_19;
  }

  v18 = 0;
LABEL_19:

  return v18;
}

- (void)_sendAuthenticateRegistration:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v17 = _os_activity_create(&_mh_execute_header, "Registration center send authenticate registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v17, &state);
  if ([(NSMutableArray *)self->_currentAuthentications count])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      currentAuthentications = self->_currentAuthentications;
      *buf = 138412290;
      v19 = currentAuthentications;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*** We have current IDS Authentications, deferring (%@)", buf, 0xCu);
    }

    [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  }

  else
  {
    v7 = [(IDSPushHandler *)self->_pushHandler pushToken];
    if ([v7 length])
    {
      if (v4)
      {
        v8 = +[IMLockdownManager sharedInstance];
        v9 = [v8 isExpired];

        if (v9)
        {
          v10 = +[IMRGLog registration];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not sending IDS Authentication", buf, 2u);
          }
        }

        else
        {
          [(NSMutableArray *)self->_currentAuthentications addObject:v4];
          v10 = [(IDSRegistrationCenter *)self _authMessageForRegistration:v4];
          if (v10)
          {
            v14 = +[IDSPACStateTracker sharedInstance];
            [v14 noteAuthenticationStarted];

            [(IDSRegistrationCenter *)self _sendIDSAuthRequest:v10 forInfo:v4];
          }

          else
          {
            v15 = +[IMRGLog registration];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v19 = v4;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Not sending nil IDS Authentication request: %@", buf, 0xCu);
            }

            [(NSMutableArray *)self->_currentAuthentications removeObject:v4];
            [(NSMutableArray *)self->_queuedAuthentications removeObject:v4];
          }
        }
      }
    }

    else
    {
      v11 = +[IMRGLog registration];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(IDSPushHandler *)self->_pushHandler pushToken];
        v13 = self->_currentAuthentications;
        *buf = 138412546;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Push handler returned push token: %@, deferring (%@)", buf, 0x16u);
      }

      [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
    }
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)_sendIDSAuthRequest:(id)a3 forInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 setTimeout:36000.0];
  sub_100450174(0, @"Registration", @"Sending IDS Authentication request", 0);
  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = +[FTDeviceSupport sharedInstance];
    v10 = [v9 deviceInformationString];
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending IDS Authentication request: %@   (Environment: %@)", &v13, 0x16u);
  }

  if (![v7 registrationType])
  {
    ct_green_tea_logger_create_static();
    v11 = getCTGreenTeaOsLogHandle();
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Transmitting phone number", &v13, 2u);
    }
  }

  [(IDSRegistrationCenter *)self __sendMessage:v6];
  [(IDSRegistrationCenter *)self cancelRegisterActionsForRegistrationInfo:v7];
}

- (void)reportSpamMessage:(id)a3 selfURI:(id)a4 registration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(IDSReportGeneralSpamMessage);
  v12 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSReportGeneralSpamMessage *)v11 setPushToken:v12];

  v13 = [v8 registrationCert];

  [(IDSReportGeneralSpamMessage *)v11 setIDCertificate:v13];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSReportGeneralSpamMessage setIdentityPrivateKey:](v11, "setIdentityPrivateKey:", [v14 identityPrivateKey]);

  [(IDSReportGeneralSpamMessage *)v11 setSpamMessage:v10];
  [(IDSReportGeneralSpamMessage *)v11 setSelfURI:v9];

  v15 = +[IMRGLog spamReporting];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending report spam message", v16, 2u);
  }

  [(IDSReportGeneralSpamMessage *)v11 setCompletionBlock:&stru_100BDFB48];
  [(IDSRegistrationCenter *)self __sendMessage:v11];
}

- (void)reportUnknownSenderMessage:(id)a3 selfURI:(id)a4 registration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSServerBag sharedInstance];
  v12 = [v11 objectForKey:@"ft-should-report-unknown-sender"];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 BOOLValue];

    if ((v13 & 1) == 0)
    {
      v14 = +[IMRGLog spamReporting];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Server has disabled unknown sender reporting.", buf, 2u);
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v14 = objc_alloc_init(IDSReportGeneralUnknownSenderMessage);
  v15 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [v14 setPushToken:v15];

  v16 = [v10 registrationCert];
  [v14 setIDCertificate:v16];

  v17 = +[IDSRegistrationKeyManager sharedInstance];
  -[NSObject setIdentityPrivateKey:](v14, "setIdentityPrivateKey:", [v17 identityPrivateKey]);

  [v14 setUnknownSenderInfo:v8];
  [v14 setSelfURI:v9];
  v18 = +[IMRGLog spamReporting];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Sending report unknown sender", v19, 2u);
  }

  [v14 setCompletionBlock:&stru_100BDFB68];
  [(IDSRegistrationCenter *)self __sendMessage:v14];
LABEL_10:
}

- (void)reportSpamWithMessages:(id)a3 selfURI:(id)a4 registration:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(IDSReportSpamMessage);
  v12 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSReportSpamMessage *)v11 setPushToken:v12];

  v13 = [v8 registrationCert];

  [(IDSReportSpamMessage *)v11 setIDCertificate:v13];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSReportSpamMessage setIdentityPrivateKey:](v11, "setIdentityPrivateKey:", [v14 identityPrivateKey]);

  [(IDSReportSpamMessage *)v11 setSpamMessages:v10];
  [(IDSReportSpamMessage *)v11 setSelfURI:v9];

  v15 = +[IMRGLog iMessageSpam];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending report spam message", v16, 2u);
  }

  [(IDSReportSpamMessage *)v11 setCompletionBlock:&stru_100BDFB88];
  [(IDSRegistrationCenter *)self __sendMessage:v11];
}

- (void)reportClientEvent:(id)a3 registration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_alloc_init(IDSReportClientEventMessage);
  v12 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSReportClientEventMessage *)v11 setPushToken:v12];

  v13 = [v10 registrationCert];

  [(IDSReportClientEventMessage *)v11 setIDCertificate:v13];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSReportClientEventMessage setIdentityPrivateKey:](v11, "setIdentityPrivateKey:", [v14 identityPrivateKey]);

  v15 = [v8 report];
  [(IDSReportClientEventMessage *)v11 setReport:v15];

  v16 = [v8 reportType];
  [(IDSReportClientEventMessage *)v11 setReportType:v16];

  v17 = [v8 timeout];

  if (v17)
  {
    v18 = [v8 timeout];
    [v18 doubleValue];
    [(IDSReportClientEventMessage *)v11 setTimeout:?];
  }

  v19 = +[FTDeviceSupport sharedInstance];
  v20 = [v19 model];

  v21 = +[FTDeviceSupport sharedInstance];
  v22 = [v21 productOSVersion];

  [(IDSReportClientEventMessage *)v11 setOsVersion:v22];
  [(IDSReportClientEventMessage *)v11 setHardwareVersion:v20];
  IDSAssignPushIdentityToMessage();
  v23 = +[IMRGLog registration];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending report client event message", buf, 2u);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100531634;
  v25[3] = &unk_100BDFBB0;
  v26 = v9;
  v24 = v9;
  [(IDSReportClientEventMessage *)v11 setCompletionBlock:v25];
  [(IDSRegistrationCenter *)self __sendMessage:v11];
}

- (void)reportiMessageUnknownSender:(id)a3 messageID:(id)a4 isBlackholed:(BOOL)a5 isJunked:(BOOL)a6 messageServerTimestamp:(id)a7 selfURI:(id)a8 registration:(id)a9
{
  v11 = a6;
  v12 = a5;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a4;
  v20 = a3;
  v21 = objc_alloc_init(IDSReportUnknownSenderMessage);
  v22 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSReportUnknownSenderMessage *)v21 setPushToken:v22];

  v23 = [v16 registrationCert];

  [(IDSReportUnknownSenderMessage *)v21 setIDCertificate:v23];
  v24 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSReportUnknownSenderMessage setIdentityPrivateKey:](v21, "setIdentityPrivateKey:", [v24 identityPrivateKey]);

  [(IDSReportUnknownSenderMessage *)v21 setSelfURI:v17];
  [(IDSReportUnknownSenderMessage *)v21 setUnknownSenderURI:v20];

  [(IDSReportUnknownSenderMessage *)v21 setMessageID:v19];
  [(IDSReportUnknownSenderMessage *)v21 setIsBlackholed:v12];
  [(IDSReportUnknownSenderMessage *)v21 setIsJunked:v11];
  v25 = [v18 intValue];

  [(IDSReportUnknownSenderMessage *)v21 setMessageServerTimestamp:v25];
  v26 = +[IMRGLog iMessageSpam];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending report iMessage unknown sender message", v27, 2u);
  }

  [(IDSReportUnknownSenderMessage *)v21 setCompletionBlock:&stru_100BDFBD0];
  [(IDSRegistrationCenter *)self __sendMessage:v21];
}

- (void)reportAction:(int64_t)a3 ofTempURI:(id)a4 fromURI:(id)a5 registration:(id)a6 withCompletion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = objc_alloc_init(IDSReportApprovedTempUser);
  v17 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSReportApprovedTempUser *)v16 setPushToken:v17];

  IDSAssignPushIdentityToMessage();
  v18 = [v13 registrationCert];

  [(IDSReportApprovedTempUser *)v16 setIDCertificate:v18];
  v19 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSReportApprovedTempUser setIdentityPrivateKey:](v16, "setIdentityPrivateKey:", [v19 identityPrivateKey]);

  v20 = [v14 prefixedURI];

  [(IDSReportApprovedTempUser *)v16 setSelfURI:v20];
  v21 = [v15 prefixedURI];

  [(IDSReportApprovedTempUser *)v16 setTempUserID:v21];
  [(IDSReportApprovedTempUser *)v16 setReportAction:a3];
  v22 = +[IMRGLog registration];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Sending report approved temp handle message", buf, 2u);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100531D24;
  v24[3] = &unk_100BDFBB0;
  v25 = v12;
  v23 = v12;
  [(IDSReportApprovedTempUser *)v16 setCompletionBlock:v24];
  [(IDSRegistrationCenter *)self __sendMessage:v16];
}

- (void)reportiMessageSpamCheckUnknown:(id)a3 count:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(IDSCheckUnknownSenderMessage);
  v12 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSCheckUnknownSenderMessage *)v11 setPushToken:v12];

  v13 = +[FTDeviceSupport sharedInstance];
  v14 = [v13 model];
  [(IDSCheckUnknownSenderMessage *)v11 setHardwareVersion:v14];

  v15 = +[FTDeviceSupport sharedInstance];
  v16 = [v15 productOSVersion];
  [(IDSCheckUnknownSenderMessage *)v11 setOSVersion:v16];

  v17 = +[FTDeviceSupport sharedInstance];
  v18 = [v17 productBuildVersion];
  [(IDSCheckUnknownSenderMessage *)v11 setSoftwareVersion:v18];

  [(IDSCheckUnknownSenderMessage *)v11 setSender:v10];
  v19 = [(IDSRegistrationCenter *)self _geoRegion];
  [(IDSCheckUnknownSenderMessage *)v11 setGeo:v19];

  [(IDSCheckUnknownSenderMessage *)v11 setAttemptCount:v9];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100532028;
  v21[3] = &unk_100BDFBB0;
  v22 = v8;
  v20 = v8;
  [(IDSCheckUnknownSenderMessage *)v11 setCompletionBlock:v21];
  [(IDSRegistrationCenter *)self __sendMessage:v11];
}

- (id)_geoRegion
{
  v2 = +[APSConnection geoRegion];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  return v3;
}

- (BOOL)isRegistering:(id)a3
{
  v4 = a3;
  if ([(IDSRegistrationCenter *)self _hasRegistration:v4 inQueue:self->_queuedRegistrations])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(IDSRegistrationCenter *)self _hasRegistration:v4 inQueue:self->_queuedAuthentications];
  }

  return v5;
}

- (void)_processGetHandlesMessage:(id)a3 registrations:(id)a4 deliveredWithError:(id)a5 resultCode:(int64_t)a6 resultDictionary:(id)a7 allowPasswordPrompt:(BOOL)a8
{
  v53 = a8;
  v12 = a3;
  v13 = a4;
  v55 = a5;
  v14 = a7;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v71 = _os_activity_create(&_mh_execute_header, "Registration center process handles message", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v71, &state);
  v57 = v12;
  v15 = [v12 responseHandles];
  v58 = objc_alloc_init(NSMutableArray);
  v54 = objc_alloc_init(NSMutableArray);
  v59 = v13;
  v51 = v14;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v16)
  {
    v17 = *v67;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v67 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v66 + 1) + 8 * i);
        v20 = [v19 objectForKey:@"status"];
        v21 = [v20 intValue] == 5051;

        if (v21)
        {
          v22 = [v19 objectForKey:@"uri"];
          v23 = [v22 _stripFZIDPrefix];

          v24 = [v19 objectForKey:@"device-name"];
          v25 = [v19 objectForKey:@"is-user-visible"];
          v26 = [v19 objectForKey:@"pseudonyms"];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = [v19 objectForKey:@"aliases"];
          }

          v29 = v28;

          v30 = objc_alloc_init(NSMutableDictionary);
          v31 = v23;
          if (v31)
          {
            CFDictionarySetValue(v30, @"uri", v31);
          }

          v32 = v24;
          if (v32)
          {
            CFDictionarySetValue(v30, @"device-name", v32);
          }

          v33 = v25;
          if (v33)
          {
            CFDictionarySetValue(v30, @"is-user-visible", v33);
          }

          v34 = v29;
          if (v34)
          {
            CFDictionarySetValue(v30, @"pseudonyms", v34);
          }

          [v58 addObject:v30];
          if (v31)
          {
            [v54 addObject:v31];
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v16);
  }

  v35 = [v57 selfHandle];
  v52 = [v35 objectForKey:@"uri"];
  v36 = +[IMRGLog registration];
  v50 = v35;
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67110146;
    *v74 = a6;
    *&v74[4] = 2112;
    *&v74[6] = v54;
    v75 = 2112;
    v76 = v52;
    v77 = 2112;
    v78 = obj;
    v79 = 2112;
    v80 = v55;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "  Received handles query response with result: %d   handles: %@   selfHandle: %@   (actual: %@)   (error: %@)", buf, 0x30u);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v56 = v59;
  v37 = [v56 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v37)
  {
    v38 = *v63;
    do
    {
      v39 = 0;
      do
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v56);
        }

        v40 = *(*(&v62 + 1) + 8 * v39);
        v41 = +[IMRGLog registration];
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v74 = v40;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "  Updating %@ with getHandles info", buf, 0xCu);
        }

        v42 = [v40 registrationType];
        if (a6 == 6006)
        {
          sub_100450174(0, @"Registration", @"Need to re-register", 1073);
          v46 = +[IMRGLog registration];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v74 = v40;
            _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Requesting re-registration for registration: %@", buf, 0xCu);
          }

          [(IDSRegistrationCenter *)self sendRegistration:v40];
        }

        else
        {
          v43 = v42;
          if (a6 == 6005)
          {
            if (v42 == 1)
            {
              sub_100450174(0, @"Registration", @"Need to re-authenticate", 1073);
              [v40 setAuthenticationToken:0];
              if (v53)
              {
                v44 = +[IMRGLog registration];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v74 = v40;
                  _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Requesting new authentication for registration: %@", buf, 0xCu);
                }

                v45 = +[IDSAppleIDRegistrationCenter sharedInstance];
                [v45 authenticateRegistration:v40 forceNewToken:1];
              }

              else
              {
                sub_100450174(0, @"Registration", @"Email query failed", 1073);
                v45 = [v57 responseAlertInfo];
                [(IDSRegistrationCenter *)self _notifyEmailQueryFailure:v40 responseCode:6005 registrationError:37 error:v55 info:v45];
              }
            }

            else
            {
LABEL_44:
              sub_100450174(0, @"Registration", @"Email query failed", 1073);
              v45 = [v57 responseAlertInfo];
              [(IDSRegistrationCenter *)self _notifyEmailQueryFailure:v40 responseCode:a6 registrationError:46 error:v55 info:v45];
            }

            goto LABEL_49;
          }

          if (a6)
          {
            goto LABEL_44;
          }

          if ([obj count])
          {
            if (v43 == 1)
            {
              [v40 setVettedEmails:v54];
              [v40 setDSHandle:v52];
            }

            [(IDSRegistrationCenter *)self _notifyEmailQuerySuccess:v40 emailInfo:v58];
          }

          else
          {
            v47 = [v57 responseAlertInfo];
            [(IDSRegistrationCenter *)self _notifyEmailQueryFailure:v40 responseCode:1 registrationError:32 error:v55 info:v47];

            v48 = +[IMRGLog registration];
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *v74 = v40;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Failing registration, empty get handles response { queuedRegistration : %@ }", buf, 0xCu);
            }

            [(NSMutableArray *)self->_queuedRegistrations removeObject:v40];
            [(NSMutableArray *)self->_currentRegistrations removeObject:v40];
            if (v43 == 1)
            {
              [(IDSRegistrationCenter *)self _notifyRegistrationFailure:v40 responseCode:1 registrationError:32 error:0 info:0];
            }
          }
        }

LABEL_49:
        v39 = v39 + 1;
      }

      while (v37 != v39);
      v49 = [v56 countByEnumeratingWithState:&v62 objects:v72 count:16];
      v37 = v49;
    }

    while (v49);
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (BOOL)_queryValidatedEmailsForRegistration:(id)a3 allowPasswordPrompt:(BOOL)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v51 = _os_activity_create(&_mh_execute_header, "Registration center query handles", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v51, &state);
  v9 = [v7 guid];
  v10 = [v7 idsUserID];
  v11 = v10;
  if (v7)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12 || v10 == 0;
  v14 = !v13;
  v44 = v14;
  if (v13)
  {
    v40 = +[IMRGLog registration];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v53 = v7;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "  => Ignoring query, we have no registration, %@", buf, 0xCu);
    }

    if (v8)
    {
      (*(v8 + 2))(v8, v7, 1, 0, 0);
    }
  }

  else
  {
    v43 = [v8 copy];

    currentGetHandlesRegistrations = self->_currentGetHandlesRegistrations;
    if (!currentGetHandlesRegistrations)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v17 = self->_currentGetHandlesRegistrations;
      self->_currentGetHandlesRegistrations = Mutable;

      currentGetHandlesRegistrations = self->_currentGetHandlesRegistrations;
    }

    v18 = [(NSMutableDictionary *)currentGetHandlesRegistrations objectForKey:v11];
    v19 = [v18 count];
    if (![v18 count])
    {
      v20 = objc_alloc_init(NSMutableSet);

      [(NSMutableDictionary *)self->_currentGetHandlesRegistrations setObject:v20 forKey:v11];
      v18 = v20;
    }

    [v18 addObject:v7];

    v21 = +[IMRGLog registration];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v53 = v7;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Added registration %p to getHandles", buf, 0xCu);
    }

    if (v43)
    {
      currentGetHandlesBlocks = self->_currentGetHandlesBlocks;
      if (!currentGetHandlesBlocks)
      {
        v23 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v24 = self->_currentGetHandlesBlocks;
        self->_currentGetHandlesBlocks = v23;

        currentGetHandlesBlocks = self->_currentGetHandlesBlocks;
      }

      v25 = [(NSMutableDictionary *)currentGetHandlesBlocks objectForKey:v9];
      if (![v25 count])
      {
        v26 = objc_alloc_init(NSMutableArray);

        [(NSMutableDictionary *)self->_currentGetHandlesBlocks setObject:v26 forKey:v9];
        v25 = v26;
      }

      v27 = objc_retainBlock(v43);
      [v25 addObject:v27];

      v28 = +[IMRGLog registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_retainBlock(v43);
        *buf = 134217984;
        v53 = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Adding completion block %p to getHandles queue", buf, 0xCu);
      }
    }

    if (!v19)
    {
      v30 = objc_alloc_init(IDSProfileGetHandlesMessage);
      IDSAssignPushIdentityToMessage();
      v31 = [v7 pushToken];
      [(IDSProfileGetHandlesMessage *)v30 setPushToken:v31];

      v32 = [v7 idsUserID];
      v33 = [v7 authenticationCert];
      v34 = +[IDSRegistrationKeyManager sharedInstance];
      v35 = [v34 identityPrivateKey];
      v36 = +[IDSRegistrationKeyManager sharedInstance];
      -[IDSProfileGetHandlesMessage addAuthUserID:certificate:privateKey:publicKey:](v30, "addAuthUserID:certificate:privateKey:publicKey:", v32, v33, v35, [v36 identityPublicKey]);

      v37 = sub_10001F5A0(v7);
      [(IDSProfileGetHandlesMessage *)v30 setDSAuthID:v37];

      v38 = [NSDictionary dictionaryWithObject:v7 forKey:@"info"];
      [(IDSProfileGetHandlesMessage *)v30 setUserInfo:v38];

      objc_initWeak(&location, v30);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100533058;
      v45[3] = &unk_100BDFBF8;
      objc_copyWeak(&v47, &location);
      v45[4] = self;
      v46 = v11;
      v48 = a4;
      [(IDSProfileGetHandlesMessage *)v30 setCompletionBlock:v45];
      v39 = +[IMRGLog registration];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v53 = v7;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Sending email query for: %@", buf, 0xCu);
      }

      [(IDSRegistrationCenter *)self __sendMessage:v30];
      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }

    v8 = v43;
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v44;
}

- (void)retrieveFeatureToggleStateForFeatureID:(id)a3 registration:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog FeatureToggler];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieving feature toggle state { featureID: %@, registration: %@", buf, 0x16u);
  }

  v12 = objc_alloc_init(IDSGetFeatureToggleStateMessage);
  v13 = [v9 registrationCert];
  [(IDSGetFeatureToggleStateMessage *)v12 setIDCertificate:v13];

  v14 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSGetFeatureToggleStateMessage setIdentityPrivateKey:](v12, "setIdentityPrivateKey:", [v14 identityPrivateKey]);

  v15 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSGetFeatureToggleStateMessage *)v12 setPushToken:v15];

  IDSAssignPushIdentityToMessage();
  [(IDSGetFeatureToggleStateMessage *)v12 setFeatureID:v8];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005335F4;
  v18[3] = &unk_100BDD8A8;
  v18[4] = self;
  v19 = v9;
  v20 = v10;
  v16 = v10;
  v17 = v9;
  [(IDSGetFeatureToggleStateMessage *)v12 setCompletionBlock:v18];
  [(IDSRegistrationCenter *)self __sendMessage:v12];
}

- (void)updateFeatureToggleState:(unint64_t)a3 forFeatureID:(id)a4 registration:(id)a5 completionBlock:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[IDSFoundationLog FeatureToggler];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v24 = a3;
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating feature toggle state { state: %lu, featureID: %@, registration: %@", buf, 0x20u);
  }

  v14 = objc_alloc_init(IDSFeatureToggleMessage);
  v15 = [v11 registrationCert];
  [(IDSFeatureToggleMessage *)v14 setIDCertificate:v15];

  v16 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSFeatureToggleMessage setIdentityPrivateKey:](v14, "setIdentityPrivateKey:", [v16 identityPrivateKey]);

  v17 = [(IDSPushHandler *)self->_pushHandler pushToken];
  [(IDSFeatureToggleMessage *)v14 setPushToken:v17];

  IDSAssignPushIdentityToMessage();
  [(IDSFeatureToggleMessage *)v14 setFeatureID:v10];
  [(IDSFeatureToggleMessage *)v14 setState:a3];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100533950;
  v20[3] = &unk_100BDD8A8;
  v20[4] = self;
  v21 = v11;
  v22 = v12;
  v18 = v12;
  v19 = v11;
  [(IDSFeatureToggleMessage *)v14 setCompletionBlock:v20];
  [(IDSRegistrationCenter *)self __sendMessage:v14];
}

- (BOOL)provisionPseudonymFor:(id)a3 withURI:(id)a4 properties:(id)a5 requestProperties:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IMRGLog registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v33 = v13;
    *&v33[8] = 2112;
    *v34 = v12;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Provisioning pseudonym {URI: %@, registration: %@}", buf, 0x16u);
  }

  v18 = objc_opt_class();
  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100533D3C;
  v30 = &unk_100BDFC20;
  v19 = v14;
  v31 = v19;
  v20 = [(IDSRegistrationCenter *)self _countOfMessagesQueuedOfType:v18 matchingCriteria:&v27];
  if (v20 < 3)
  {
    v25 = [(IDSRegistrationCenter *)self _sendPseudonymMessageOperation:0 forURI:v13 pseudonymURI:0 properties:v19 requestProperties:v15 forRegistration:v12 completionBlock:v16, v27, v28, v29, v30];
  }

  else
  {
    v21 = v20;
    v22 = +[IMRGLog registration];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v19 featureID];
      *buf = 67109634;
      *v33 = v21;
      *&v33[4] = 1024;
      *&v33[6] = 3;
      *v34 = 2112;
      *&v34[2] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Too many provisions inflight for this feature -- failing {similiarCount: %d, maxAllowedInFlight: %d, featureID: %@}", buf, 0x18u);
    }

    [(IDSRegistrationCenter *)self __dumpState];
    v24 = [NSError errorWithDomain:IDSPseudonymErrorDomain code:900 userInfo:0];
    v25 = 1;
    (*(v16 + 2))(v16, v12, 1, 0, 0, v24);
  }

  return v25;
}

- (BOOL)renewPseudonym:(id)a3 forRegistration:(id)a4 forUpdatedExpiryEpoch:(double)a5 requestProperties:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = a6;
  v16 = +[IMRGLog registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Renewing pseudonym {pseudonym: %@, registration: %@}", buf, 0x16u);
  }

  v17 = [v12 maskedURI];
  v18 = [v12 URI];
  v19 = [v12 properties];
  v20 = [v19 withUpdatedExpiryEpoch:a5];
  v21 = [(IDSRegistrationCenter *)self _sendPseudonymMessageOperation:1 forURI:v17 pseudonymURI:v18 properties:v20 requestProperties:v15 forRegistration:v13 completionBlock:v14];

  return v21;
}

- (BOOL)revokePseudonym:(id)a3 forRegistration:(id)a4 requestProperties:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Revoking pseudonym {pseudonym: %@, registration: %@}", buf, 0x16u);
  }

  v15 = [v10 maskedURI];
  v16 = [v10 URI];
  v17 = [v10 properties];
  v18 = [(IDSRegistrationCenter *)self _sendPseudonymMessageOperation:2 forURI:v15 pseudonymURI:v16 properties:v17 requestProperties:v13 forRegistration:v11 completionBlock:v12];

  return v18;
}

- (double)_updatePseudonymExpiryEpoch:(double)a3
{
  v4 = +[IDSServerBag sharedInstance];
  v5 = [v4 objectForKey:@"use-local-time"];

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v5 BOOLValue] & 1) == 0)
  {
    v6 = +[IDSCurrentServerTime sharedInstance];
    [v6 currentServerTimeInterval];
    v8 = v7;

    v9 = +[NSDate date];
    [v9 timeIntervalSince1970];
    v11 = v10;

    v12 = v8 - v11;
    if (v8 - v11 < 0.0)
    {
      v12 = -(v8 - v11);
    }

    if (v12 > 60.0)
    {
      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 134218240;
        v17 = v11;
        v18 = 2048;
        v19 = v8;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Local time on device and server time are out of sync. Using server time for pseudonym expiry. Local Time: %f, Server Time: %f", &v16, 0x16u);
      }

      v14 = v11 - a3;
      if (v11 - a3 < 0.0)
      {
        v14 = -(v11 - a3);
      }

      a3 = v8 + v14;
    }
  }

  return a3;
}

- (BOOL)_sendPseudonymMessageOperation:(unint64_t)a3 forURI:(id)a4 pseudonymURI:(id)a5 properties:(id)a6 requestProperties:(id)a7 forRegistration:(id)a8 completionBlock:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v64 = a9;
  v19 = +[IMRGLog registration];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219010;
    v76 = a3;
    v77 = 2112;
    v78 = v14;
    v79 = 2112;
    v80 = v16;
    v81 = 2112;
    v82 = v18;
    v83 = 2112;
    v84 = v17;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Performing pseudonym operation {op: %lu, URI: %@, pseudonymProperties: %@, requestProperties: %@, registration: %@}", buf, 0x34u);
  }

  v20 = [v18 authenticationCert];

  if (v20)
  {
    v63 = [v18 guid];
    v62 = [v18 idsUserID];
    if (v18 && v63 && v62 && ([v18 registrationCert], v21 = objc_claimAutoreleasedReturnValue(), v21, v21))
    {
      v22 = objc_alloc_init(IDSProvisionPseudonymMessage);
      v56 = v18;
      v23 = [v18 registrationCert];
      [(IDSProvisionPseudonymMessage *)v22 setIDCertificate:v23];

      v24 = +[IDSRegistrationKeyManager sharedInstance];
      -[IDSProvisionPseudonymMessage setIdentityPrivateKey:](v22, "setIdentityPrivateKey:", [v24 identityPrivateKey]);

      v54 = [(IDSPushHandler *)self->_pushHandler pushToken];
      [(IDSProvisionPseudonymMessage *)v22 setPushToken:?];
      v57 = v17;
      [v17 requestTimeoutInterval];
      [(IDSProvisionPseudonymMessage *)v22 setTimeout:?];
      IDSAssignPushIdentityToMessage();
      [(IDSProvisionPseudonymMessage *)v22 setOperation:a3];
      v60 = v14;
      v25 = [v14 prefixedURI];
      [(IDSProvisionPseudonymMessage *)v22 setSelfURI:v25];

      v26 = [v16 featureID];
      [(IDSProvisionPseudonymMessage *)v22 setFeatureID:v26];

      v27 = [v16 scopeID];
      [(IDSProvisionPseudonymMessage *)v22 setScopeID:v27];

      v59 = v15;
      v28 = [v15 prefixedURI];
      [(IDSProvisionPseudonymMessage *)v22 setPseudonymAlias:v28];

      [v16 expiryEpoch];
      [(IDSRegistrationCenter *)self _updatePseudonymExpiryEpoch:?];
      v55 = v22;
      [(IDSProvisionPseudonymMessage *)v22 setExpiryEpoch:?];
      v29 = objc_alloc_init(NSMutableDictionary);
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v58 = v16;
      obj = [v16 allowedServices];
      v30 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v30)
      {
        v31 = v30;
        v66 = *v71;
        v32 = &OBJC_METACLASS___IDSStewieDeviceInfo;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v71 != v66)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v70 + 1) + 8 * i);
            v35 = [&v32[25] sharedInstance];
            v36 = [v35 serviceWithIdentifier:v34];

            if ([v36 adHocServiceType])
            {
              v37 = v32;
              v38 = [&v32[25] sharedInstance];
              v39 = [v38 primaryServiceForAdhocServiceType:{objc_msgSend(v36, "adHocServiceType")}];

              v40 = [v39 identifier];
              v41 = [v29 objectForKeyedSubscript:v40];
              v42 = v41;
              if (v41)
              {
                v43 = v41;
              }

              else
              {
                v43 = +[NSMutableArray array];
              }

              v47 = v43;

              if (([v47 containsObject:v34] & 1) == 0)
              {
                [v47 addObject:v34];
              }

              v48 = [v39 identifier];
              [v29 setObject:v47 forKey:v48];

              v32 = v37;
            }

            else
            {
              v44 = [v29 objectForKeyedSubscript:v34];
              v45 = v44;
              if (v44)
              {
                v46 = v44;
              }

              else
              {
                v46 = +[NSMutableArray array];
              }

              v39 = v46;

              [v29 setObject:v39 forKey:v34];
            }
          }

          v31 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
        }

        while (v31);
      }

      [(IDSProvisionPseudonymMessage *)v55 setSubservicesByPrimaryService:v29];
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_100534944;
      v67[3] = &unk_100BDD8A8;
      v67[4] = self;
      v18 = v56;
      v68 = v56;
      v69 = v64;
      [(IDSProvisionPseudonymMessage *)v55 setCompletionBlock:v67];
      [(IDSRegistrationCenter *)self __sendMessage:v55];

      v49 = v64;
      v50 = 1;
      v15 = v59;
      v14 = v60;
      v17 = v57;
      v16 = v58;
    }

    else
    {
      v51 = +[IMRGLog registration];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v76 = v18;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "  => Ignoring provision, we have no registration, %@", buf, 0xCu);
      }

      v49 = v64;
      if (v64)
      {
        (*(v64 + 2))(v64, v18, 1, 0, 0, 0);
      }

      v50 = 0;
    }
  }

  else
  {
    v52 = +[IMRGLog registration];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "  => Ignoring provision, we have no auth cert", buf, 2u);
    }

    v49 = v64;
    if (v64)
    {
      (*(v64 + 2))(v64, v18, 1, 0, 0, 0);
    }

    v50 = 0;
  }

  return v50;
}

- (BOOL)updateKTOptInStatusForRegistration:(id)a3 withOptInStatus:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    v14 = 138412546;
    v15 = v11;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Updating KT Opt-in status for registration {isOptedIn: %@, registration: %@}", &v14, 0x16u);
  }

  v12 = [(IDSRegistrationCenter *)self _sendKTOptInStatusUpdateForRegistration:v8 withOptInStatus:v6 withCompletion:v9];
  return v12;
}

- (BOOL)updateKTOptInStatusForRegistration:(id)a3 withOptInOutRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Updating KT Opt-in status for registration {OptInOutRequest: %@, registration: %@}", &v14, 0x16u);
  }

  v12 = [(IDSRegistrationCenter *)self _sendKTOptInStatusForRegistration:v8 withOptInOutRequest:v9 withCompletion:v10];
  return v12;
}

- (BOOL)_sendKTOptInStatusForRegistration:(id)a3 withOptInOutRequest:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v63 = v9;
    v64 = 2112;
    v65 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Performing Key Transparency opt-in status update {optInOutRequest: %@, registration: %@}", buf, 0x16u);
  }

  v12 = [v8 authenticationCert];

  if (v12)
  {
    v13 = [v8 guid];
    v14 = [v8 idsUserID];
    v15 = v14;
    if (v8)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16 || v14 == 0;
    v18 = !v17;
    if (v17)
    {
      v42 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v8;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, " => Ignoring KT Opt In status update, we have no registration, %@", buf, 0xCu);
      }

      if (v10)
      {
        (*(v10 + 2))(v10, v8, 1, 0, 0, 0);
      }
    }

    else
    {
      v49 = v14;
      v50 = v13;
      v51 = v18;
      v19 = objc_alloc_init(IDSKTOptInStatusMessage);
      v53 = v8;
      v20 = [v8 registrationCert];
      [(IDSKTOptInStatusMessage *)v19 setIDCertificate:v20];

      v21 = +[IDSRegistrationKeyManager sharedInstance];
      -[IDSKTOptInStatusMessage setIdentityPrivateKey:](v19, "setIdentityPrivateKey:", [v21 identityPrivateKey]);

      v48 = self;
      v46 = [(IDSPushHandler *)self->_pushHandler pushToken];
      [(IDSKTOptInStatusMessage *)v19 setPushToken:?];
      IDSAssignPushIdentityToMessage();
      v22 = +[FTDeviceSupport sharedInstance];
      v23 = [v22 model];

      v24 = +[FTDeviceSupport sharedInstance];
      v25 = [v24 productOSVersion];

      v45 = v23;
      [(IDSKTOptInStatusMessage *)v19 setHardwareVersion:v23];
      v47 = v19;
      v44 = v25;
      [(IDSKTOptInStatusMessage *)v19 setOsVersion:v25];
      v26 = objc_alloc_init(NSMutableArray);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v52 = v9;
      v27 = [v9 applicationsToOptInStatusData];
      v28 = [v27 allValues];

      v29 = v28;
      v30 = [v28 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v58;
        do
        {
          for (i = 0; i != v31; i = i + 1)
          {
            if (*v58 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v57 + 1) + 8 * i);
            v35 = objc_alloc_init(NSMutableDictionary);
            v36 = [v34 serviceIdentifier];
            if (v36)
            {
              CFDictionarySetValue(v35, @"service", v36);
            }

            v37 = [v34 optInStatus];
            v38 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v37 BOOLValue]);

            if (v38)
            {
              CFDictionarySetValue(v35, @"kt-opt-in", v38);
            }

            v39 = [v34 publicAccountKey];
            if (v39)
            {
              CFDictionarySetValue(v35, @"kt-account-key", v39);
            }

            v40 = [v34 optChangeReason];
            if (v40)
            {
              CFDictionarySetValue(v35, @"kt-opt-change-reason", v40);
            }

            [v26 addObject:v35];
          }

          v31 = [v29 countByEnumeratingWithState:&v57 objects:v61 count:16];
        }

        while (v31);
      }

      [(IDSKTOptInStatusMessage *)v47 setServices:v26];
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100535274;
      v54[3] = &unk_100BDD8A8;
      v54[4] = v48;
      v8 = v53;
      v55 = v53;
      v56 = v10;
      [(IDSKTOptInStatusMessage *)v47 setCompletionBlock:v54];
      [(IDSRegistrationCenter *)v48 __sendMessage:v47];

      v9 = v52;
      v18 = v51;
      v15 = v49;
      v13 = v50;
    }
  }

  else
  {
    v41 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, " => Ignoring KT Opt In status update, we have no auth cert", buf, 2u);
    }

    if (v10)
    {
      (*(v10 + 2))(v10, v8, 1, 0, 0, 0);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)_sendKTOptInStatusUpdateForRegistration:(id)a3 withOptInStatus:(BOOL)a4 withCompletion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    if (v6)
    {
      v11 = @"YES";
    }

    *buf = 138412546;
    v36 = v11;
    v37 = 2112;
    v38 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Performing Key Transparency opt-in status update {optInStatus: %@, registration: %@}", buf, 0x16u);
  }

  v12 = [(__CFString *)v8 authenticationCert];

  if (v12)
  {
    v13 = [(__CFString *)v8 guid];
    v14 = [(__CFString *)v8 idsUserID];
    v15 = v14;
    if (v8)
    {
      v16 = v13 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16 || v14 == 0;
    v18 = !v17;
    if (v17)
    {
      v28 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v8;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "  => Ignoring KT Opt In status update, we have no registration, %@", buf, 0xCu);
      }

      if (v9)
      {
        (*(v9 + 2))(v9, v8, 1, 0, 0, 0);
      }
    }

    else
    {
      v31 = v13;
      v19 = objc_alloc_init(IDSKTOptInStatusMessage);
      v20 = [(__CFString *)v8 registrationCert];
      [(IDSKTOptInStatusMessage *)v19 setIDCertificate:v20];

      v21 = +[IDSRegistrationKeyManager sharedInstance];
      -[IDSKTOptInStatusMessage setIdentityPrivateKey:](v19, "setIdentityPrivateKey:", [v21 identityPrivateKey]);

      v30 = [(IDSPushHandler *)self->_pushHandler pushToken];
      [(IDSKTOptInStatusMessage *)v19 setPushToken:v30];
      IDSAssignPushIdentityToMessage();
      v22 = +[FTDeviceSupport sharedInstance];
      v23 = [v22 model];

      v24 = +[FTDeviceSupport sharedInstance];
      v25 = [v24 productOSVersion];

      v26 = [NSNumber numberWithBool:v6];
      [(IDSKTOptInStatusMessage *)v19 setIsOptIn:v26];

      [(IDSKTOptInStatusMessage *)v19 setHardwareVersion:v23];
      [(IDSKTOptInStatusMessage *)v19 setOsVersion:v25];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1005359A0;
      v32[3] = &unk_100BDD8A8;
      v32[4] = self;
      v33 = v8;
      v34 = v9;
      [(IDSKTOptInStatusMessage *)v19 setCompletionBlock:v32];
      [(IDSRegistrationCenter *)self __sendMessage:v19];

      v13 = v31;
    }
  }

  else
  {
    v27 = +[IDSFoundationLog KeyTransparency];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "  => Ignoring KT Opt In status update, we have no auth cert", buf, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, v8, 1, 0, 0, 0);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)queryValidatedEmailsForRegistration:(id)a3 allowPasswordPrompt:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[IMRGLog registration];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Requesting validated emails for: %@", &v15, 0xCu);
  }

  v11 = [v8 authenticationCert];

  if (v11)
  {
    v12 = [(IDSRegistrationCenter *)self _queryValidatedEmailsForRegistration:v8 allowPasswordPrompt:v6 completionBlock:v9];
  }

  else
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "  => Ignoring query, we have no auth cert", &v15, 2u);
    }

    if (v9)
    {
      (*(v9 + 2))(v9, v8, 1, 0, 0);
    }

    v12 = 0;
  }

  return v12;
}

- (void)__reallySendAuthenticateRegistration
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending authenticate registration now...", v5, 2u);
  }

  v4 = [(NSMutableArray *)self->_queuedAuthentications lastObject];
  if (v4)
  {
    [(IDSRegistrationCenter *)self _sendAuthenticateRegistration:v4];
  }
}

- (BOOL)authenticateRegistration:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = _os_activity_create(&_mh_execute_header, "Registration center authenticate registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v29, &state);
  if (v4)
  {
    v5 = [v4 mainID];
    v6 = v5 == 0;

    if (v6)
    {
      v11 = +[IMRGLog registration];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 138412290;
      v31 = v4;
      v19 = "Not sending IDS authentication, we have no main ID for registration: %@";
    }

    else
    {
      if ([v4 registrationType] != 1 && objc_msgSend(v4, "registrationType") != 2 || (objc_msgSend(v4, "profileID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length") == 0, v7, !v8))
      {
        v9 = [v4 authenticationToken];
        v10 = v9 == 0;

        if (!v10)
        {
          v11 = [v4 authenticationToken];
          if (v11)
          {
            v12 = +[IMRGLog registration];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v4;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Adding IDS authentication to the queue: %@", buf, 0xCu);
            }

            v13 = +[IMRGLog registration];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " => Really adding", buf, 2u);
            }

            queuedAuthentications = self->_queuedAuthentications;
            if (!queuedAuthentications)
            {
              v15 = objc_alloc_init(NSMutableArray);
              v16 = self->_queuedAuthentications;
              self->_queuedAuthentications = v15;

              queuedAuthentications = self->_queuedAuthentications;
            }

            if ([(NSMutableArray *)queuedAuthentications containsObject:v4])
            {
              v17 = +[IMRGLog registration];
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v4;
                _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " => Removing old registration info object: %@", buf, 0xCu);
              }

              [(NSMutableArray *)self->_queuedAuthentications removeObject:v4];
            }

            else
            {
              v26 = +[IMRGLog registration];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v4;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, " => Simply adding registration info object: %@", buf, 0xCu);
              }
            }

            [(NSMutableArray *)self->_queuedAuthentications addObject:v4];
            [(CUTDeferredTaskQueue *)self->_sendAuthenticateRegistrationTask enqueueExecutionWithTarget:self afterDelay:3.0];
            v18 = 1;
            goto LABEL_39;
          }

          v20 = [v4 authenticationCert];
          if (v20 && (v21 = [v4 registrationType] == 0, v20, v21))
          {
            v22 = +[IMRGLog registration];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v23 = "*** Cannot authenticate, missing SMS signature";
              v24 = v22;
              v25 = 2;
              goto LABEL_36;
            }
          }

          else
          {
            v22 = +[IMRGLog registration];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v31 = v4;
              v23 = "Not IDS authenticating, we have no authentication token for: %@";
              v24 = v22;
              v25 = 12;
LABEL_36:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
            }
          }

          goto LABEL_38;
        }

        v11 = +[IMRGLog registration];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v4;
          v19 = "Not sending IDS authentication, we have no auth token for registration: %@";
          goto LABEL_25;
        }

LABEL_38:
        v18 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v11 = +[IMRGLog registration];
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 138412290;
      v31 = v4;
      v19 = "Not sending IDS authentication, we have no profile ID for registration: %@";
    }

LABEL_25:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_38;
  }

  v18 = 0;
LABEL_40:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v18;
}

- (void)__reallySendRegistration
{
  v3 = +[IMRGLog registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending registrations now...", v4, 2u);
  }

  [(IDSRegistrationCenter *)self _sendRegistrationAsDeregister:0];
}

- (BOOL)sendRegistration:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v20 = _os_activity_create(&_mh_execute_header, "Registration center send registration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v20, &state);
  v5 = [v4 authenticationCert];
  v6 = v5 == 0;

  if (v6)
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      v15 = "Not registering, we have no cert for: %@";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
    }

LABEL_22:

LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  if (([v4 canSendRegistration] & 1) == 0)
  {
    v14 = +[IMRGLog registration];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      v15 = "Not registering, not able to register: %@";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v7 = [v4 stopAtAuthentication];
  if (v4)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_23;
  }

  v9 = +[IMRGLog registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending registration for %@", buf, 0xCu);
  }

  if ([v4 registrationStatus] <= 7)
  {
    [v4 setRegistrationStatus:7];
  }

  queuedRegistrations = self->_queuedRegistrations;
  if (!queuedRegistrations)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v12 = self->_queuedRegistrations;
    self->_queuedRegistrations = v11;

    queuedRegistrations = self->_queuedRegistrations;
  }

  if ([(NSMutableArray *)queuedRegistrations containsObject:v4])
  {
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating registration to the queue (replacing existing): %@", buf, 0xCu);
    }

    [(NSMutableArray *)self->_queuedRegistrations removeObject:v4];
  }

  else
  {
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v4;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Adding registration to the queue: %@", buf, 0xCu);
    }
  }

  [(NSMutableArray *)self->_queuedRegistrations addObject:v4];
  [(CUTDeferredTaskQueue *)self->_sendRegistrationTask enqueueExecutionWithTarget:self afterDelay:3.0];
  v16 = 1;
LABEL_24:
  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v16;
}

- (BOOL)sendDeregistration:(id)a3
{
  v4 = a3;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = _os_activity_create(&_mh_execute_header, "Registration center send deregistration", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding deregistration to the queue: %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " => Really adding", buf, 2u);
    }

    [(IDSRegistrationCenter *)self _sendDeregistration:v4];
  }

  os_activity_scope_leave(&state);
  cut_arc_os_release();

  return v4 != 0;
}

- (void)cancelRegisterActionsForRegistrationInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = [(IDSRegistrationCenterMessageDelivery *)self->_httpMessageDelivery queuedMessages];
    v6 = [v5 _copyForEnumerating];

    v7 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = @"info";
      v10 = *v25;
      do
      {
        v11 = 0;
        v23 = v8;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          v13 = [v12 userInfo];
          v14 = [v13 objectForKey:v9];
          if ([v14 isEqual:v4])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v10;
              v16 = v9;
              v17 = v4;
              v18 = v6;
              v19 = self;
              v20 = +[IMRGLog registration];
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Cancelling current registration", buf, 2u);
              }

              self = v19;
              [(IDSRegistrationCenterMessageDelivery *)v19->_httpMessageDelivery cancelMessage:v12];
              v6 = v18;
              v4 = v17;
              v9 = v16;
              v10 = v15;
              v8 = v23;
            }
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v6 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v8);
    }

    if ([(NSMutableArray *)self->_currentRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_currentRegistrations removeObject:v4];
      v21 = +[IMRGLog registration];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing current registration: %@", buf, 0xCu);
      }
    }

    if ([(NSMutableArray *)self->_queuedRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_queuedRegistrations removeObject:v4];
      v22 = +[IMRGLog registration];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v4;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Cancelling queued registration: %@", buf, 0xCu);
      }
    }

    [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  }
}

- (void)cancelActionsForRegistrationInfo:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(NSMutableArray *)self->_currentRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_currentRegistrations removeObject:v4];
      v5 = +[IMRGLog registration];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing current registration", buf, 2u);
      }
    }

    if ([(NSMutableArray *)self->_currentAuthentications containsObject:v4])
    {
      [(NSMutableArray *)self->_currentAuthentications removeObject:v4];
      v6 = +[IMRGLog registration];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing current authentication", v11, 2u);
      }
    }

    if ([(NSMutableArray *)self->_queuedAuthentications containsObject:v4])
    {
      [(NSMutableArray *)self->_queuedAuthentications removeObject:v4];
      v7 = +[IMRGLog registration];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cancelling queued authentications", v10, 2u);
      }
    }

    if ([(NSMutableArray *)self->_queuedRegistrations containsObject:v4])
    {
      [(NSMutableArray *)self->_queuedRegistrations removeObject:v4];
      v8 = +[IMRGLog registration];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cancelling queued registration", v9, 2u);
      }
    }

    [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  }
}

- (id)activeRegistrations
{
  v3 = objc_alloc_init(NSMutableArray);
  if ([(NSMutableArray *)self->_queuedRegistrations count])
  {
    [v3 addObjectsFromArray:self->_queuedRegistrations];
  }

  if ([(NSMutableArray *)self->_queuedAuthentications count])
  {
    [v3 addObjectsFromArray:self->_queuedAuthentications];
  }

  if (![v3 count])
  {

    v3 = 0;
  }

  return v3;
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

- (void)handler:(id)a3 pushTokenChanged:(id)a4
{
  if ([a4 length])
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Token changed, _dequeuePendingRequestsIfNecessary", v6, 2u);
    }

    [(IDSRegistrationCenter *)self _dequeuePendingRequestsIfNecessary];
  }
}

- (BOOL)_checkOverRegistrations
{
  accountingHour = self->_accountingHour;
  v4 = +[NSDate date];
  [(NSDate *)accountingHour timeIntervalSinceDate:v4];
  v6 = fabs(v5);

  if (v6 < 1800.0)
  {
    return self->_registrations > 0x64;
  }

  v8 = +[IMRGLog registration];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    registrations = self->_registrations;
    v11[0] = 67109120;
    v11[1] = registrations;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "  * Forcing a reset on the registration count, enough time has passed   %d -> 0", v11, 8u);
  }

  v10 = self->_accountingHour;
  self->_accountingHour = 0;

  result = 0;
  self->_registrations = 0;
  return result;
}

- (void)_noteRegistration
{
  v3 = objc_alloc_init(NSDate);
  p_accountingHour = &self->_accountingHour;
  accountingHour = self->_accountingHour;
  if (!accountingHour)
  {
    objc_storeStrong(&self->_accountingHour, v3);
    accountingHour = *p_accountingHour;
  }

  [(NSDate *)accountingHour timeIntervalSinceDate:v3];
  if (fabs(v6) >= 1800.0)
  {
    if (*p_accountingHour != v3)
    {
      objc_storeStrong(&self->_accountingHour, v3);
    }

    self->_registrations = 1;
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      registrations = self->_registrations;
      v13 = 67109376;
      v14 = registrations;
      v15 = 1024;
      v16 = 100;
      v9 = "Restarting number of registrations at %d (Max: %d)";
      v10 = v7;
      v11 = 14;
      goto LABEL_10;
    }
  }

  else
  {
    ++self->_registrations;
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_registrations;
      v13 = 67109632;
      v14 = 30;
      v15 = 1024;
      v16 = v8;
      v17 = 1024;
      v18 = 100;
      v9 = "Noting another registration in the last %d minutes, we're now at %d registrations  (Max: %d)";
      v10 = v7;
      v11 = 20;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    }
  }
}

- (void)sendValidateCredential:(id)a3 withDeliveryCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(IDSValidateCredentialsMessage);
  v9 = [v6 pushToken];
  [(IDSValidateCredentialsMessage *)v8 setPushToken:v9];

  IDSAssignPushIdentityToMessage();
  v10 = [v6 idsUserID];
  v11 = [v6 authenticationCert];
  v12 = +[IDSRegistrationKeyManager sharedInstance];
  v13 = [v12 identityPrivateKey];
  v14 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSValidateCredentialsMessage addAuthUserID:certificate:privateKey:publicKey:](v8, "addAuthUserID:certificate:privateKey:publicKey:", v10, v11, v13, [v14 identityPublicKey]);

  v15 = sub_10001F5A0(v6);
  [(IDSValidateCredentialsMessage *)v8 setDSAuthID:v15];

  if ([v6 registrationType])
  {
    v16 = [v6 profileID];
    [(IDSValidateCredentialsMessage *)v8 setAuthenticationDataUserID:v16];

    v17 = [v6 authenticationToken];
    [(IDSValidateCredentialsMessage *)v8 setAuthenticationDataAuthToken:v17];
  }

  else
  {
    v18 = [v6 userID];
    [(IDSValidateCredentialsMessage *)v8 setAuthenticationDataUserID:v18];

    v17 = [v6 authenticationToken];
    v19 = [v17 _FTDataFromBase64String];
    [(IDSValidateCredentialsMessage *)v8 setAuthenticationDataSig:v19];
  }

  [(IDSValidateCredentialsMessage *)v8 setCompletionBlock:v7];
  if (![v6 registrationType])
  {
    ct_green_tea_logger_create_static();
    v20 = getCTGreenTeaOsLogHandle();
    v21 = v20;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Transmitting phone number", v22, 2u);
    }
  }

  [(IDSRegistrationCenter *)self __sendMessage:v8];
}

- (void)buildValidationCredentialsIfNeeded
{
  v2 = [(IDSRegistrationCenter *)self validationQueue];
  [v2 buildValidationCredentialsIfNeededForSubsystem:1];
}

- (void)sendDeactivationRequestWithSIM:(id)a3 Info:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(IDSSIMDeactivationInfoMessage);
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 registrationConductor];
  v11 = [v10 userStore];

  v12 = [v7 SIMIdentifier];

  v13 = [v11 userWithUniqueIdentifier:v12];

  v14 = [v11 authenticationCertificateForUser:v13];
  if (v14)
  {
    v15 = [v13 realmPrefixedIdentifier];
    [v14 dataRepresentation];
    v29 = v11;
    v17 = v16 = v6;
    v18 = self;
    v19 = +[IDSRegistrationKeyManager sharedInstance];
    v20 = [v19 identityPrivateKey];
    v21 = +[IDSRegistrationKeyManager sharedInstance];
    -[IDSSIMDeactivationInfoMessage addAuthUserID:certificate:privateKey:publicKey:](v8, "addAuthUserID:certificate:privateKey:publicKey:", v15, v17, v20, [v21 identityPublicKey]);

    v6 = v16;
    v22 = [(IDSPushHandler *)v18->_pushHandler pushToken];
    [(IDSSIMDeactivationInfoMessage *)v8 setPushToken:v22];
    IDSAssignPushIdentityToMessage();
    v23 = +[NSDate date];
    [v23 timeIntervalSince1970];
    v25 = v24;

    [(IDSSIMDeactivationInfoMessage *)v8 setDeviceTime:v25];
    v26 = [v16 homePlmn];
    [(IDSSIMDeactivationInfoMessage *)v8 setHomePlmn:v26];

    v27 = [v16 events];
    [(IDSSIMDeactivationInfoMessage *)v8 setEvents:v27];

    [(IDSSIMDeactivationInfoMessage *)v8 setCompletionBlock:&stru_100BDFC40];
    v11 = v29;
    [(IDSRegistrationCenter *)v18 __sendMessage:v8];
  }

  else
  {
    v28 = +[IMRGLog registration];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v13;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No PAC found for user : %@, stopping sim deactivation request", buf, 0xCu);
    }
  }
}

@end