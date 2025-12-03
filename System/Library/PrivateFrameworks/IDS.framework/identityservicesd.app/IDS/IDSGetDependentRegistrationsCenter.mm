@interface IDSGetDependentRegistrationsCenter
- (BOOL)getDependentRegistrations:(id)registrations completionBlock:(id)block;
- (IDSGetDependentRegistrationsCenter)initWithPushHandler:(id)handler lockdownManager:(id)manager heartbeatCenter:(id)center ftNetworkSupport:(id)support sendMessageHandlerBlock:(id)block messageResponseHandlerBlock:(id)handlerBlock;
- (void)_submitGDRReponseToAWDWithResultCode:(int64_t)code error:(id)error;
@end

@implementation IDSGetDependentRegistrationsCenter

- (IDSGetDependentRegistrationsCenter)initWithPushHandler:(id)handler lockdownManager:(id)manager heartbeatCenter:(id)center ftNetworkSupport:(id)support sendMessageHandlerBlock:(id)block messageResponseHandlerBlock:(id)handlerBlock
{
  handlerCopy = handler;
  managerCopy = manager;
  centerCopy = center;
  supportCopy = support;
  blockCopy = block;
  handlerBlockCopy = handlerBlock;
  v28.receiver = self;
  v28.super_class = IDSGetDependentRegistrationsCenter;
  v19 = [(IDSGetDependentRegistrationsCenter *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pushHandler, handler);
    objc_storeStrong(&v20->_lockdownManager, manager);
    objc_storeStrong(&v20->_heartbeatCenter, center);
    objc_storeStrong(&v20->_ftNetworkSupport, support);
    v21 = objc_retainBlock(blockCopy);
    sendMessageHandler = v20->_sendMessageHandler;
    v20->_sendMessageHandler = v21;

    v23 = objc_retainBlock(handlerBlockCopy);
    messageResponseHandler = v20->_messageResponseHandler;
    v20->_messageResponseHandler = v23;
  }

  return v20;
}

- (BOOL)getDependentRegistrations:(id)registrations completionBlock:(id)block
{
  registrationsCopy = registrations;
  blockCopy = block;
  v8 = objc_autoreleasePoolPush();
  if (registrationsCopy)
  {
    authenticationCert = [registrationsCopy authenticationCert];

    if (authenticationCert)
    {
      if (![(IMLockdownManager *)self->_lockdownManager isExpired])
      {
        v16 = [blockCopy copy];

        idsUserID = [registrationsCopy idsUserID];
        currentGetDependentRegistrations = self->_currentGetDependentRegistrations;
        if (!currentGetDependentRegistrations)
        {
          v19 = objc_alloc_init(NSMutableSet);
          v20 = self->_currentGetDependentRegistrations;
          self->_currentGetDependentRegistrations = v19;

          currentGetDependentRegistrations = self->_currentGetDependentRegistrations;
        }

        v56 = v8;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v21 = currentGetDependentRegistrations;
        v22 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v60;
          while (2)
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v60 != v24)
              {
                objc_enumerationMutation(v21);
              }

              idsUserID2 = [*(*(&v59 + 1) + 8 * i) idsUserID];
              v27 = [idsUserID isEqualToIgnoringCase:idsUserID2];

              if (v27)
              {
                v28 = 1;
                goto LABEL_29;
              }
            }

            v23 = [(NSMutableSet *)v21 countByEnumeratingWithState:&v59 objects:v67 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        v28 = 0;
LABEL_29:

        [(NSMutableSet *)self->_currentGetDependentRegistrations addObject:registrationsCopy];
        v29 = +[IMRGLog registration];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v64 = registrationsCopy;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Adding registration %p to getDependent queue", buf, 0xCu);
        }

        if (v16)
        {
          currentGetDependentRegistrationBlocks = self->_currentGetDependentRegistrationBlocks;
          if (!currentGetDependentRegistrationBlocks)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v32 = self->_currentGetDependentRegistrationBlocks;
            self->_currentGetDependentRegistrationBlocks = Mutable;

            currentGetDependentRegistrationBlocks = self->_currentGetDependentRegistrationBlocks;
          }

          guid = [registrationsCopy guid];
          v34 = [(NSMutableDictionary *)currentGetDependentRegistrationBlocks objectForKey:guid];

          if (![v34 count])
          {
            v35 = objc_alloc_init(NSMutableArray);

            v36 = self->_currentGetDependentRegistrationBlocks;
            guid2 = [registrationsCopy guid];
            [(NSMutableDictionary *)v36 setObject:v35 forKey:guid2];

            v34 = v35;
          }

          v38 = objc_retainBlock(v16);
          [v34 addObject:v38];

          v39 = +[IMRGLog registration];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = objc_retainBlock(v16);
            *buf = 134217984;
            v64 = v40;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding completion block %p to getDependent queue", buf, 0xCu);
          }
        }

        v41 = +[IMRGLog registration];
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (v42)
          {
            *buf = 138412290;
            v64 = idsUserID;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "We have an outstanding getDependentRegistrations request for userID: %@", buf, 0xCu);
          }
        }

        else
        {
          if (v42)
          {
            *buf = 138412290;
            v64 = registrationsCopy;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Requesting dependent device info for registration: %@", buf, 0xCu);
          }

          v41 = objc_alloc_init(IDSGetDependentRegistrationMessage);
          v43 = sub_10001F5A0(registrationsCopy);
          [v41 setDSAuthID:v43];

          pushToken = [(IDSPushHandler *)self->_pushHandler pushToken];
          [v41 setPushToken:pushToken];

          idsUserID3 = [registrationsCopy idsUserID];
          authenticationCert2 = [registrationsCopy authenticationCert];
          v47 = +[IDSRegistrationKeyManager sharedInstance];
          identityPrivateKey = [v47 identityPrivateKey];
          v49 = +[IDSRegistrationKeyManager sharedInstance];
          -[NSObject addAuthUserID:certificate:privateKey:publicKey:](v41, "addAuthUserID:certificate:privateKey:publicKey:", idsUserID3, authenticationCert2, identityPrivateKey, [v49 identityPublicKey]);

          IDSAssignPushIdentityToMessage();
          v50 = [NSDictionary dictionaryWithObject:registrationsCopy forKey:@"info"];
          [v41 setUserInfo:v50];

          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_100570B60;
          v58[3] = &unk_100BE07C8;
          v58[4] = self;
          [v41 setCompletionBlock:v58];
          v51 = +[IMRGLog registration];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = +[FTDeviceSupport sharedInstance];
            deviceInformationString = [v52 deviceInformationString];
            *buf = 138412546;
            v64 = registrationsCopy;
            v65 = 2112;
            v66 = deviceInformationString;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Sending get dependent registration request: %@  (Environment: %@)", buf, 0x16u);
          }

          sendMessageHandler = self->_sendMessageHandler;
          if (sendMessageHandler)
          {
            sendMessageHandler[2](sendMessageHandler, v41);
          }
        }

        v8 = v57;

        v15 = 1;
        goto LABEL_49;
      }

      v10 = +[IMRGLog registration];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_13:

        if (blockCopy)
        {
          (*(blockCopy + 2))(blockCopy, registrationsCopy, 1, 0, 0);
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      *buf = 0;
      v11 = "*** Lockdown state is expired, not sending dependent registration check";
      v12 = v10;
      v13 = 2;
    }

    else
    {
      v10 = +[IMRGLog registration];
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 138412290;
      v64 = registrationsCopy;
      v11 = "Not getting dependent registrations, we're not authenticated for: %@";
      v12 = v10;
      v13 = 12;
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_13;
  }

  v14 = +[IMRGLog registration];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not getting dependent registrations, we don't have a registration", buf, 2u);
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 1, 0, 0);
LABEL_15:
    v15 = 0;
    v16 = blockCopy;
LABEL_49:

    goto LABEL_50;
  }

LABEL_16:
  v15 = 0;
LABEL_50:
  objc_autoreleasePoolPop(v8);

  return v15;
}

- (void)_submitGDRReponseToAWDWithResultCode:(int64_t)code error:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  LODWORD(v7) = [domain isEqualToString:NSPOSIXErrorDomain];

  domain2 = [errorCopy domain];
  v9 = 1;
  if (([domain2 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {
    domain3 = [errorCopy domain];
    v9 = [domain3 isEqualToString:kCFErrorDomainCFNetwork];
  }

  if ([(FTNetworkSupport *)self->_ftNetworkSupport wiFiActiveAndReachable])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  sub_100022FD8(code);
  sub_1000236A8(-1);
  v12 = v9 | v7;
  v13 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
  if ((v9 | v7))
  {
    v14 = 0;
    if (!v9)
    {
LABEL_8:
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
LABEL_11:
  if ((v7 & 1) == 0)
  {
    FTAWDLogRegistrationGetDependentRegistrations();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v27 = v9 | v7;
  codeCopy = code;
  v17 = v7;
  v7 = v11;
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  v13 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
  FTAWDLogRegistrationGetDependentRegistrations();

  v11 = v7;
  LOBYTE(v7) = v17;
  code = codeCopy;
  v12 = v27;
  if (v9)
  {
LABEL_15:
  }

LABEL_16:
  if ((v12 & 1) == 0)
  {
  }

  v19 = [IDSRegistrationOperationGetDependentRegistrationsMetric alloc];
  v20 = sub_100022FD8(code);
  v21 = sub_1000236A8(-1);
  if (v12)
  {
    v22 = 0;
    if (!v9)
    {
LABEL_20:
      v23 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v22 = [v13[476] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v23 = [v13[476] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
LABEL_23:
  if ((v7 & 1) == 0)
  {
    v25 = [v19 initWithGuid:0 success:code == 0 connectionType:v11 resultCode:v20 registrationType:v21 genericError:v22 URLError:v23 POSIXError:0];
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
  v25 = [v19 initWithGuid:0 success:code == 0 connectionType:v11 resultCode:v20 registrationType:v21 genericError:v22 URLError:v23 POSIXError:v24];

  if (v9)
  {
LABEL_27:
  }

LABEL_28:
  if ((v12 & 1) == 0)
  {
  }

  v26 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v26 logMetric:v25];
}

@end