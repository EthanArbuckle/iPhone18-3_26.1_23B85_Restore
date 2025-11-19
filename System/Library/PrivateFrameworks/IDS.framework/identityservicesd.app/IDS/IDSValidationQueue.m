@interface IDSValidationQueue
- (BOOL)isBuildingContextForSubsystem:(int64_t)a3;
- (IDSValidationQueue)initWithPushHandler:(id)a3 validationMessageSendBlock:(id)a4;
- (IDSValidationQueue)initWithValidationMessageSendBlock:(id)a3;
- (id)_validationInfoForSubsystem:(int64_t)a3 createIfNil:(BOOL)a4;
- (void)__cleanupValidationInfoForSubsystemMechanism:(int64_t)a3;
- (void)__failValidationQueueWithErrorResponseCode:(int64_t)a3 forSubsystemMechanism:(int64_t)a4;
- (void)__flushValidationQueueForSubsystemMechanism:(int64_t)a3;
- (void)__purgeCachedCertsForSubsystemMechanism:(int64_t)a3;
- (void)__queueValidationMessage:(id)a3 subsystem:(int64_t)a4 sendBlock:(id)a5;
- (void)__removeFromQueue:(id)a3 subsystem:(int64_t)a4;
- (void)_sendAbsintheValidationCertRequestIfNeededForSubsystem:(int64_t)a3;
- (void)_sendBAAValidationRequestIfNeededForSubsystem:(int64_t)a3;
- (void)_sendValidationRequestForSubsystem:(int64_t)a3;
- (void)buildValidationCredentialsIfNeededForSubsystem:(int64_t)a3;
- (void)clearQueueForSubsystem:(int64_t)a3;
- (void)queueBuildingValidationDataIfNecessaryForMessage:(id)a3 subsystem:(int64_t)a4 withQueueCompletion:(id)a5 sendBlock:(id)a6;
@end

@implementation IDSValidationQueue

- (IDSValidationQueue)initWithValidationMessageSendBlock:(id)a3
{
  v4 = a3;
  v5 = +[IDSPushHandler sharedInstance];
  v6 = [(IDSValidationQueue *)self initWithPushHandler:v5 validationMessageSendBlock:v4];

  return v6;
}

- (IDSValidationQueue)initWithPushHandler:(id)a3 validationMessageSendBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = IDSValidationQueue;
  v9 = [(IDSValidationQueue *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    validationInfoByMechanism = v9->_validationInfoByMechanism;
    v9->_validationInfoByMechanism = v10;

    v12 = objc_retainBlock(v8);
    validationMessageSendBlock = v9->_validationMessageSendBlock;
    v9->_validationMessageSendBlock = v12;

    objc_storeStrong(&v9->_pushHandler, a3);
    v9->_shouldUseAbsinthe = 1;
  }

  return v9;
}

- (void)clearQueueForSubsystem:(int64_t)a3
{
  v5 = [(IDSValidationQueue *)self _mechanismForSubsystem:?];
  v6 = [(IDSValidationQueue *)self validationInfoByMechanism];
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [v8 validationContextQueue];

  if (v9)
  {
    v10 = [v8 validationContextQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100610E0C;
    v13[3] = &unk_100BE2380;
    v13[4] = a3;
    v11 = [v10 __imArrayByFilteringWithBlock:v13];
    v12 = [v11 mutableCopy];
    [v8 setValidationContextQueue:v12];
  }
}

- (void)queueBuildingValidationDataIfNecessaryForMessage:(id)a3 subsystem:(int64_t)a4 withQueueCompletion:(id)a5 sendBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = +[IMLockdownManager sharedInstance];
  v14 = [v13 isExpired];

  if (v14)
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not doing absinthe validation", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!v10 || ([v10 conformsToProtocol:&OBJC_PROTOCOL___IDSAbsintheSignedMessage] & 1) != 0)
  {
    if (![(IDSValidationQueue *)self shouldUseAbsinthe])
    {
      v16 = [NSData __imDataWithRandomBytes:10];
      [v10 setValidationData:v16];
      if (v11)
      {
        v11[2](v11, 0);
      }

      goto LABEL_49;
    }

    v16 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a4 createIfNil:1];
    v17 = [v16 validateContextDate];

    if (v17)
    {
      v18 = [v16 validateContextDate];
      [v18 timeIntervalSinceNow];
      v20 = fabs(v19);

      v21 = [v16 validateContextTTL];
      [v21 doubleValue];
      if (v22 <= 30.0)
      {
        v25 = 120.0;
      }

      else
      {
        v23 = [v16 validateContextTTL];
        [v23 doubleValue];
        v25 = v24 + -30.0;
      }

      v26 = +[IMRGLog registration];
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v20 <= v25)
      {
        if (v27)
        {
          *buf = 134218240;
          *&buf[4] = v20;
          v40 = 2048;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "  Validation context has interval remaining: %f   timeout is: %f", buf, 0x16u);
        }
      }

      else
      {
        if (v27)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "  Validation info is too old, removing it", buf, 2u);
        }

        [(IDSValidationQueue *)self __cleanupValidationInfoForSubsystemMechanism:a4];
      }
    }

    if ([v16 validationContext] || objc_msgSend(v16, "validationContextDisabled"))
    {
      if (v10)
      {
        if ([v16 validationContextDisabled])
        {
          v28 = +[NSData data];
LABEL_34:
          [v10 setValidationData:v28];
          v32 = +[IMRGLog registration];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v28;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "  Validation data: %@", buf, 0xCu);
          }

          v33 = +[IMRGLog registration];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "  Successfully signed: %@", buf, 0xCu);
          }

          v34 = [v16 validationSession];

          if (v34)
          {
            if (+[IDSValidationSession isSigningSupported])
            {
              v35 = [v16 validationSession];
              v36 = [v35 isInitializedForSigning];

              if (v36)
              {
                v37 = [v16 validationSession];
                [v10 setSigningSession:v37];
              }
            }
          }

          if (!v11)
          {
            goto LABEL_49;
          }

          v38 = 0;
          goto LABEL_48;
        }

        *buf = 0;
        sub_100913C84([v16 validationContext], 0, 0, buf);
        v30 = v29;
        v28 = [NSData dataWithBytes:*buf length:0];
        if (*buf)
        {
          sub_100913704(*buf);
        }

        if (!v30)
        {
          goto LABEL_34;
        }

        v31 = +[IMRGLog warning];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
        {
          sub_10092D2A0();
        }

        [(IDSValidationQueue *)self __failValidationQueueForSubsystemMechanism:a4];
        [(IDSValidationQueue *)self __cleanupValidationInfoForSubsystemMechanism:a4];

        goto LABEL_45;
      }
    }

    else if (v10)
    {
LABEL_45:
      [(IDSValidationQueue *)self __queueValidationMessage:v10 subsystem:a4 sendBlock:v12];
    }

    [(IDSValidationQueue *)self _sendValidationRequestForSubsystem:a4];
    if (!v11)
    {
LABEL_49:

      goto LABEL_50;
    }

    v38 = 1;
LABEL_48:
    v11[2](v11, v38);
    goto LABEL_49;
  }

LABEL_11:
  if (v11)
  {
    v11[2](v11, 0);
  }

LABEL_50:
}

- (void)buildValidationCredentialsIfNeededForSubsystem:(int64_t)a3
{
  v4 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:1];
  if (![v4 validationContext] && (objc_msgSend(v4, "isBuildingContext") & 1) == 0)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Warming validation credentials", v6, 2u);
    }

    [(IDSValidationQueue *)self queueBuildingValidationDataIfNecessaryForMessage:0 subsystem:0 withQueueCompletion:0 sendBlock:0];
  }
}

- (BOOL)isBuildingContextForSubsystem:(int64_t)a3
{
  v3 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:0];
  v4 = [v3 isBuildingContext];

  return v4;
}

- (void)__removeFromQueue:(id)a3 subsystem:(int64_t)a4
{
  v6 = a3;
  v10 = [[IDSValidationQueueItem alloc] initWithMessage:v6 subsystem:a4 sendBlock:0];

  v7 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a4 createIfNil:0];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 validationContextQueue];
    [v9 removeObject:v10];
  }
}

- (void)__queueValidationMessage:(id)a3 subsystem:(int64_t)a4 sendBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [[IDSValidationQueueItem alloc] initWithMessage:v8 subsystem:a4 sendBlock:v9];

  v11 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a4 createIfNil:1];
  v12 = [v11 validationContextQueue];

  if (!v12)
  {
    v13 = objc_alloc_init(NSMutableArray);
    [v11 setValidationContextQueue:v13];
  }

  v14 = [v11 validationContextQueue];
  v15 = [v14 containsObject:v10];

  if ((v15 & 1) == 0)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding message to validate to the queue: %@", &v18, 0xCu);
    }

    v17 = [v11 validationContextQueue];
    [v17 addObject:v10];
  }
}

- (void)__failValidationQueueWithErrorResponseCode:(int64_t)a3 forSubsystemMechanism:(int64_t)a4
{
  v5 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a4 createIfNil:0];
  v6 = +[IMRGLog warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_10092D314(v5);
  }

  v7 = [v5 validationContextQueue];
  v8 = [v7 count];

  if (v8)
  {
    v19 = v5;
    v9 = [v5 validationContextQueue];
    v10 = [v9 _copyForEnumerating];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * v15) message];
          v17 = [v16 completionBlock];
          if (v17)
          {
            v18 = [NSError errorWithDomain:@"IDSAppleIDSRegistrationErrorDomain" code:a3 userInfo:0];
            (v17)[2](v17, v16, v18, a3, 0);
          }

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    v5 = v19;
    [v19 setValidationContextQueue:0];
  }
}

- (void)__flushValidationQueueForSubsystemMechanism:(int64_t)a3
{
  v4 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:0];
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 validationContextQueue];
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Flushing validation queue: %@", buf, 0xCu);
  }

  v7 = [v4 validationContextQueue];
  v19 = v4;
  [v4 setValidationContextQueue:0];
  v8 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * v12);
        dispatch_group_enter(v8);
        v14 = [v13 message];
        v15 = [v13 subsystem];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100611BB0;
        v23[3] = &unk_100BD9AA8;
        v23[4] = v13;
        v24 = v8;
        v16 = [v13 sendBlock];
        [(IDSValidationQueue *)self queueBuildingValidationDataIfNecessaryForMessage:v14 subsystem:v15 withQueueCompletion:v23 sendBlock:v16];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  v17 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100611D00;
  block[3] = &unk_100BD6ED0;
  v22 = v19;
  v18 = v19;
  dispatch_group_notify(v8, v17, block);
}

- (void)__cleanupValidationInfoForSubsystemMechanism:(int64_t)a3
{
  v3 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:0];
  v4 = +[IMRGLog registration];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "  Cleaning up validation info", v5, 2u);
  }

  if ([v3 validationContext])
  {
    sub_1009134DC([v3 validationContext]);
    [v3 setValidationContext:0];
  }

  [v3 setValidateContextTTL:0];
  [v3 setValidateContextDate:0];
  [v3 setValidationContextDisabled:0];
  [v3 setValidationSession:0];
}

- (void)__purgeCachedCertsForSubsystemMechanism:(int64_t)a3
{
  v6 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:0];
  v5 = [v6 validationSession];
  [v5 purgeCachedCertsForSubsystemMechanism:{-[IDSValidationQueue _mechanismForSubsystem:](self, "_mechanismForSubsystem:", a3)}];
}

- (void)_sendValidationRequestForSubsystem:(int64_t)a3
{
  v5 = [(IDSValidationQueue *)self _mechanismForSubsystem:?];
  if (v5 == 1)
  {

    [(IDSValidationQueue *)self _sendBAAValidationRequestIfNeededForSubsystem:a3];
  }

  else if (!v5)
  {

    [(IDSValidationQueue *)self _sendAbsintheValidationCertRequestIfNeededForSubsystem:a3];
  }
}

- (void)_sendBAAValidationRequestIfNeededForSubsystem:(int64_t)a3
{
  v5 = [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:1];
  if ([v5 isBuildingContext])
  {
    v6 = +[IMRGLog registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "We're in the process of BAA validation.", v8, 2u);
    }
  }

  else
  {
    [v5 setIsBuildingContext:1];
    v7 = im_primary_queue();
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100612014;
    v9[3] = &unk_100BE23A8;
    v10 = v5;
    v11 = self;
    v12 = a3;
    [IDSValidationSession validationSessionOnQueue:v7 mechanism:1 withCompletion:v9];

    v6 = v10;
  }
}

- (void)_sendAbsintheValidationCertRequestIfNeededForSubsystem:(int64_t)a3
{
  [(IDSValidationQueue *)self _validationInfoForSubsystem:a3 createIfNil:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100612380;
  v5 = v12[3] = &unk_100BE2420;
  v13 = v5;
  v14 = self;
  v15 = a3;
  v6 = objc_retainBlock(v12);
  if ([v5 isBuildingContext])
  {
    v7 = +[IMRGLog registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "We're in the process of absinthe validation.", buf, 2u);
    }
  }

  else
  {
    [v5 setIsBuildingContext:1];
    [v5 setValidationContextDisabled:0];
    v7 = objc_alloc_init(IDSValidationCertificateMessage);
    [v7 setCompletionBlock:v6];
    [v7 setTimeout:86400.0];
    v8 = [(IDSPushHandler *)self->_pushHandler pushToken];
    [v7 setPushToken:v8];

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(IDSPushHandler *)self->_pushHandler pushToken];
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending cert request request   push token: %@", buf, 0xCu);
    }

    v11 = [(IDSValidationQueue *)self validationMessageSendBlock];
    (v11)[2](v11, v7);
  }
}

- (id)_validationInfoForSubsystem:(int64_t)a3 createIfNil:(BOOL)a4
{
  v4 = a4;
  v6 = [(IDSValidationQueue *)self _mechanismForSubsystem:a3];
  v7 = [(IDSValidationQueue *)self validationInfoByMechanism];
  v8 = [NSNumber numberWithInteger:v6];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v4;
  }

  if (!v10)
  {
    v9 = objc_alloc_init(IDSValidationInfo);
    v11 = [(IDSValidationQueue *)self validationInfoByMechanism];
    v12 = [NSNumber numberWithInteger:v6];
    [v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

@end