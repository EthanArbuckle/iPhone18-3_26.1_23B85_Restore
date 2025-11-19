@interface IDSGetDependentRegistrationsCenter
- (BOOL)getDependentRegistrations:(id)a3 completionBlock:(id)a4;
- (IDSGetDependentRegistrationsCenter)initWithPushHandler:(id)a3 lockdownManager:(id)a4 heartbeatCenter:(id)a5 ftNetworkSupport:(id)a6 sendMessageHandlerBlock:(id)a7 messageResponseHandlerBlock:(id)a8;
- (void)_submitGDRReponseToAWDWithResultCode:(int64_t)a3 error:(id)a4;
@end

@implementation IDSGetDependentRegistrationsCenter

- (IDSGetDependentRegistrationsCenter)initWithPushHandler:(id)a3 lockdownManager:(id)a4 heartbeatCenter:(id)a5 ftNetworkSupport:(id)a6 sendMessageHandlerBlock:(id)a7 messageResponseHandlerBlock:(id)a8
{
  v27 = a3;
  v26 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v28.receiver = self;
  v28.super_class = IDSGetDependentRegistrationsCenter;
  v19 = [(IDSGetDependentRegistrationsCenter *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_pushHandler, a3);
    objc_storeStrong(&v20->_lockdownManager, a4);
    objc_storeStrong(&v20->_heartbeatCenter, a5);
    objc_storeStrong(&v20->_ftNetworkSupport, a6);
    v21 = objc_retainBlock(v17);
    sendMessageHandler = v20->_sendMessageHandler;
    v20->_sendMessageHandler = v21;

    v23 = objc_retainBlock(v18);
    messageResponseHandler = v20->_messageResponseHandler;
    v20->_messageResponseHandler = v23;
  }

  return v20;
}

- (BOOL)getDependentRegistrations:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (v6)
  {
    v9 = [v6 authenticationCert];

    if (v9)
    {
      if (![(IMLockdownManager *)self->_lockdownManager isExpired])
      {
        v16 = [v7 copy];

        v17 = [v6 idsUserID];
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

              v26 = [*(*(&v59 + 1) + 8 * i) idsUserID];
              v27 = [v17 isEqualToIgnoringCase:v26];

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

        [(NSMutableSet *)self->_currentGetDependentRegistrations addObject:v6];
        v29 = +[IMRGLog registration];
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v64 = v6;
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

          v33 = [v6 guid];
          v34 = [(NSMutableDictionary *)currentGetDependentRegistrationBlocks objectForKey:v33];

          if (![v34 count])
          {
            v35 = objc_alloc_init(NSMutableArray);

            v36 = self->_currentGetDependentRegistrationBlocks;
            v37 = [v6 guid];
            [(NSMutableDictionary *)v36 setObject:v35 forKey:v37];

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
            v64 = v17;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "We have an outstanding getDependentRegistrations request for userID: %@", buf, 0xCu);
          }
        }

        else
        {
          if (v42)
          {
            *buf = 138412290;
            v64 = v6;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Requesting dependent device info for registration: %@", buf, 0xCu);
          }

          v41 = objc_alloc_init(IDSGetDependentRegistrationMessage);
          v43 = sub_10001F5A0(v6);
          [v41 setDSAuthID:v43];

          v44 = [(IDSPushHandler *)self->_pushHandler pushToken];
          [v41 setPushToken:v44];

          v45 = [v6 idsUserID];
          v46 = [v6 authenticationCert];
          v47 = +[IDSRegistrationKeyManager sharedInstance];
          v48 = [v47 identityPrivateKey];
          v49 = +[IDSRegistrationKeyManager sharedInstance];
          -[NSObject addAuthUserID:certificate:privateKey:publicKey:](v41, "addAuthUserID:certificate:privateKey:publicKey:", v45, v46, v48, [v49 identityPublicKey]);

          IDSAssignPushIdentityToMessage();
          v50 = [NSDictionary dictionaryWithObject:v6 forKey:@"info"];
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
            v53 = [v52 deviceInformationString];
            *buf = 138412546;
            v64 = v6;
            v65 = 2112;
            v66 = v53;
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

        if (v7)
        {
          (*(v7 + 2))(v7, v6, 1, 0, 0);
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
      v64 = v6;
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

  if (v7)
  {
    (*(v7 + 2))(v7, 0, 1, 0, 0);
LABEL_15:
    v15 = 0;
    v16 = v7;
LABEL_49:

    goto LABEL_50;
  }

LABEL_16:
  v15 = 0;
LABEL_50:
  objc_autoreleasePoolPop(v8);

  return v15;
}

- (void)_submitGDRReponseToAWDWithResultCode:(int64_t)a3 error:(id)a4
{
  v28 = a4;
  v6 = [v28 domain];
  LODWORD(v7) = [v6 isEqualToString:NSPOSIXErrorDomain];

  v8 = [v28 domain];
  v9 = 1;
  if (([v8 isEqualToString:NSURLErrorDomain] & 1) == 0)
  {
    v10 = [v28 domain];
    v9 = [v10 isEqualToString:kCFErrorDomainCFNetwork];
  }

  if ([(FTNetworkSupport *)self->_ftNetworkSupport wiFiActiveAndReachable])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  sub_100022FD8(a3);
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
    v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
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
  v16 = a3;
  v17 = v7;
  v7 = v11;
  v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
  v13 = &kIDSListenerCapConsumesLaunchOnDemandInvitationUpdates_ptr;
  FTAWDLogRegistrationGetDependentRegistrations();

  v11 = v7;
  LOBYTE(v7) = v17;
  a3 = v16;
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
  v20 = sub_100022FD8(a3);
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
    v22 = [v13[476] numberWithInteger:{objc_msgSend(v28, "code")}];
    if (!v9)
    {
      goto LABEL_20;
    }
  }

  v23 = [v13[476] numberWithInteger:{objc_msgSend(v28, "code")}];
LABEL_23:
  if ((v7 & 1) == 0)
  {
    v25 = [v19 initWithGuid:0 success:a3 == 0 connectionType:v11 resultCode:v20 registrationType:v21 genericError:v22 URLError:v23 POSIXError:0];
    if (!v9)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v28 code]);
  v25 = [v19 initWithGuid:0 success:a3 == 0 connectionType:v11 resultCode:v20 registrationType:v21 genericError:v22 URLError:v23 POSIXError:v24];

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