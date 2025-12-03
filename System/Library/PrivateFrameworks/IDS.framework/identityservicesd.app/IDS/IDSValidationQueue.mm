@interface IDSValidationQueue
- (BOOL)isBuildingContextForSubsystem:(int64_t)subsystem;
- (IDSValidationQueue)initWithPushHandler:(id)handler validationMessageSendBlock:(id)block;
- (IDSValidationQueue)initWithValidationMessageSendBlock:(id)block;
- (id)_validationInfoForSubsystem:(int64_t)subsystem createIfNil:(BOOL)nil;
- (void)__cleanupValidationInfoForSubsystemMechanism:(int64_t)mechanism;
- (void)__failValidationQueueWithErrorResponseCode:(int64_t)code forSubsystemMechanism:(int64_t)mechanism;
- (void)__flushValidationQueueForSubsystemMechanism:(int64_t)mechanism;
- (void)__purgeCachedCertsForSubsystemMechanism:(int64_t)mechanism;
- (void)__queueValidationMessage:(id)message subsystem:(int64_t)subsystem sendBlock:(id)block;
- (void)__removeFromQueue:(id)queue subsystem:(int64_t)subsystem;
- (void)_sendAbsintheValidationCertRequestIfNeededForSubsystem:(int64_t)subsystem;
- (void)_sendBAAValidationRequestIfNeededForSubsystem:(int64_t)subsystem;
- (void)_sendValidationRequestForSubsystem:(int64_t)subsystem;
- (void)buildValidationCredentialsIfNeededForSubsystem:(int64_t)subsystem;
- (void)clearQueueForSubsystem:(int64_t)subsystem;
- (void)queueBuildingValidationDataIfNecessaryForMessage:(id)message subsystem:(int64_t)subsystem withQueueCompletion:(id)completion sendBlock:(id)block;
@end

@implementation IDSValidationQueue

- (IDSValidationQueue)initWithValidationMessageSendBlock:(id)block
{
  blockCopy = block;
  v5 = +[IDSPushHandler sharedInstance];
  v6 = [(IDSValidationQueue *)self initWithPushHandler:v5 validationMessageSendBlock:blockCopy];

  return v6;
}

- (IDSValidationQueue)initWithPushHandler:(id)handler validationMessageSendBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = IDSValidationQueue;
  v9 = [(IDSValidationQueue *)&v15 init];
  if (v9)
  {
    v10 = objc_alloc_init(NSMutableDictionary);
    validationInfoByMechanism = v9->_validationInfoByMechanism;
    v9->_validationInfoByMechanism = v10;

    v12 = objc_retainBlock(blockCopy);
    validationMessageSendBlock = v9->_validationMessageSendBlock;
    v9->_validationMessageSendBlock = v12;

    objc_storeStrong(&v9->_pushHandler, handler);
    v9->_shouldUseAbsinthe = 1;
  }

  return v9;
}

- (void)clearQueueForSubsystem:(int64_t)subsystem
{
  v5 = [(IDSValidationQueue *)self _mechanismForSubsystem:?];
  validationInfoByMechanism = [(IDSValidationQueue *)self validationInfoByMechanism];
  v7 = [NSNumber numberWithInteger:v5];
  v8 = [validationInfoByMechanism objectForKeyedSubscript:v7];

  validationContextQueue = [v8 validationContextQueue];

  if (validationContextQueue)
  {
    validationContextQueue2 = [v8 validationContextQueue];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100610E0C;
    v13[3] = &unk_100BE2380;
    v13[4] = subsystem;
    v11 = [validationContextQueue2 __imArrayByFilteringWithBlock:v13];
    v12 = [v11 mutableCopy];
    [v8 setValidationContextQueue:v12];
  }
}

- (void)queueBuildingValidationDataIfNecessaryForMessage:(id)message subsystem:(int64_t)subsystem withQueueCompletion:(id)completion sendBlock:(id)block
{
  messageCopy = message;
  completionCopy = completion;
  blockCopy = block;
  v13 = +[IMLockdownManager sharedInstance];
  isExpired = [v13 isExpired];

  if (isExpired)
  {
    v15 = +[IMRGLog registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "*** Lockdown state is expired, not doing absinthe validation", buf, 2u);
    }

    goto LABEL_11;
  }

  if (!messageCopy || ([messageCopy conformsToProtocol:&OBJC_PROTOCOL___IDSAbsintheSignedMessage] & 1) != 0)
  {
    if (![(IDSValidationQueue *)self shouldUseAbsinthe])
    {
      v16 = [NSData __imDataWithRandomBytes:10];
      [messageCopy setValidationData:v16];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0);
      }

      goto LABEL_49;
    }

    v16 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:1];
    validateContextDate = [v16 validateContextDate];

    if (validateContextDate)
    {
      validateContextDate2 = [v16 validateContextDate];
      [validateContextDate2 timeIntervalSinceNow];
      v20 = fabs(v19);

      validateContextTTL = [v16 validateContextTTL];
      [validateContextTTL doubleValue];
      if (v22 <= 30.0)
      {
        v25 = 120.0;
      }

      else
      {
        validateContextTTL2 = [v16 validateContextTTL];
        [validateContextTTL2 doubleValue];
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

        [(IDSValidationQueue *)self __cleanupValidationInfoForSubsystemMechanism:subsystem];
      }
    }

    if ([v16 validationContext] || objc_msgSend(v16, "validationContextDisabled"))
    {
      if (messageCopy)
      {
        if ([v16 validationContextDisabled])
        {
          v28 = +[NSData data];
LABEL_34:
          [messageCopy setValidationData:v28];
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
            *&buf[4] = messageCopy;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "  Successfully signed: %@", buf, 0xCu);
          }

          validationSession = [v16 validationSession];

          if (validationSession)
          {
            if (+[IDSValidationSession isSigningSupported])
            {
              validationSession2 = [v16 validationSession];
              isInitializedForSigning = [validationSession2 isInitializedForSigning];

              if (isInitializedForSigning)
              {
                validationSession3 = [v16 validationSession];
                [messageCopy setSigningSession:validationSession3];
              }
            }
          }

          if (!completionCopy)
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

        [(IDSValidationQueue *)self __failValidationQueueForSubsystemMechanism:subsystem];
        [(IDSValidationQueue *)self __cleanupValidationInfoForSubsystemMechanism:subsystem];

        goto LABEL_45;
      }
    }

    else if (messageCopy)
    {
LABEL_45:
      [(IDSValidationQueue *)self __queueValidationMessage:messageCopy subsystem:subsystem sendBlock:blockCopy];
    }

    [(IDSValidationQueue *)self _sendValidationRequestForSubsystem:subsystem];
    if (!completionCopy)
    {
LABEL_49:

      goto LABEL_50;
    }

    v38 = 1;
LABEL_48:
    completionCopy[2](completionCopy, v38);
    goto LABEL_49;
  }

LABEL_11:
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_50:
}

- (void)buildValidationCredentialsIfNeededForSubsystem:(int64_t)subsystem
{
  v4 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:1];
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

- (BOOL)isBuildingContextForSubsystem:(int64_t)subsystem
{
  v3 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:0];
  isBuildingContext = [v3 isBuildingContext];

  return isBuildingContext;
}

- (void)__removeFromQueue:(id)queue subsystem:(int64_t)subsystem
{
  queueCopy = queue;
  v10 = [[IDSValidationQueueItem alloc] initWithMessage:queueCopy subsystem:subsystem sendBlock:0];

  v7 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:0];
  v8 = v7;
  if (v7)
  {
    validationContextQueue = [v7 validationContextQueue];
    [validationContextQueue removeObject:v10];
  }
}

- (void)__queueValidationMessage:(id)message subsystem:(int64_t)subsystem sendBlock:(id)block
{
  messageCopy = message;
  blockCopy = block;
  v10 = [[IDSValidationQueueItem alloc] initWithMessage:messageCopy subsystem:subsystem sendBlock:blockCopy];

  v11 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:1];
  validationContextQueue = [v11 validationContextQueue];

  if (!validationContextQueue)
  {
    v13 = objc_alloc_init(NSMutableArray);
    [v11 setValidationContextQueue:v13];
  }

  validationContextQueue2 = [v11 validationContextQueue];
  v15 = [validationContextQueue2 containsObject:v10];

  if ((v15 & 1) == 0)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = messageCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Adding message to validate to the queue: %@", &v18, 0xCu);
    }

    validationContextQueue3 = [v11 validationContextQueue];
    [validationContextQueue3 addObject:v10];
  }
}

- (void)__failValidationQueueWithErrorResponseCode:(int64_t)code forSubsystemMechanism:(int64_t)mechanism
{
  v5 = [(IDSValidationQueue *)self _validationInfoForSubsystem:mechanism createIfNil:0];
  v6 = +[IMRGLog warning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_10092D314(v5);
  }

  validationContextQueue = [v5 validationContextQueue];
  v8 = [validationContextQueue count];

  if (v8)
  {
    v19 = v5;
    validationContextQueue2 = [v5 validationContextQueue];
    _copyForEnumerating = [validationContextQueue2 _copyForEnumerating];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = _copyForEnumerating;
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

          message = [*(*(&v20 + 1) + 8 * v15) message];
          completionBlock = [message completionBlock];
          if (completionBlock)
          {
            v18 = [NSError errorWithDomain:@"IDSAppleIDSRegistrationErrorDomain" code:code userInfo:0];
            (completionBlock)[2](completionBlock, message, v18, code, 0);
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

- (void)__flushValidationQueueForSubsystemMechanism:(int64_t)mechanism
{
  v4 = [(IDSValidationQueue *)self _validationInfoForSubsystem:mechanism createIfNil:0];
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    validationContextQueue = [v4 validationContextQueue];
    *buf = 138412290;
    v31 = validationContextQueue;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Flushing validation queue: %@", buf, 0xCu);
  }

  validationContextQueue2 = [v4 validationContextQueue];
  v19 = v4;
  [v4 setValidationContextQueue:0];
  v8 = dispatch_group_create();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = validationContextQueue2;
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
        message = [v13 message];
        subsystem = [v13 subsystem];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100611BB0;
        v23[3] = &unk_100BD9AA8;
        v23[4] = v13;
        v24 = v8;
        sendBlock = [v13 sendBlock];
        [(IDSValidationQueue *)self queueBuildingValidationDataIfNecessaryForMessage:message subsystem:subsystem withQueueCompletion:v23 sendBlock:sendBlock];

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

- (void)__cleanupValidationInfoForSubsystemMechanism:(int64_t)mechanism
{
  v3 = [(IDSValidationQueue *)self _validationInfoForSubsystem:mechanism createIfNil:0];
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

- (void)__purgeCachedCertsForSubsystemMechanism:(int64_t)mechanism
{
  v6 = [(IDSValidationQueue *)self _validationInfoForSubsystem:mechanism createIfNil:0];
  validationSession = [v6 validationSession];
  [validationSession purgeCachedCertsForSubsystemMechanism:{-[IDSValidationQueue _mechanismForSubsystem:](self, "_mechanismForSubsystem:", mechanism)}];
}

- (void)_sendValidationRequestForSubsystem:(int64_t)subsystem
{
  v5 = [(IDSValidationQueue *)self _mechanismForSubsystem:?];
  if (v5 == 1)
  {

    [(IDSValidationQueue *)self _sendBAAValidationRequestIfNeededForSubsystem:subsystem];
  }

  else if (!v5)
  {

    [(IDSValidationQueue *)self _sendAbsintheValidationCertRequestIfNeededForSubsystem:subsystem];
  }
}

- (void)_sendBAAValidationRequestIfNeededForSubsystem:(int64_t)subsystem
{
  v5 = [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:1];
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
    selfCopy = self;
    subsystemCopy = subsystem;
    [IDSValidationSession validationSessionOnQueue:v7 mechanism:1 withCompletion:v9];

    v6 = v10;
  }
}

- (void)_sendAbsintheValidationCertRequestIfNeededForSubsystem:(int64_t)subsystem
{
  [(IDSValidationQueue *)self _validationInfoForSubsystem:subsystem createIfNil:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100612380;
  v5 = v12[3] = &unk_100BE2420;
  v13 = v5;
  selfCopy = self;
  subsystemCopy = subsystem;
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
    pushToken = [(IDSPushHandler *)self->_pushHandler pushToken];
    [v7 setPushToken:pushToken];

    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      pushToken2 = [(IDSPushHandler *)self->_pushHandler pushToken];
      *buf = 138412290;
      v17 = pushToken2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending cert request request   push token: %@", buf, 0xCu);
    }

    validationMessageSendBlock = [(IDSValidationQueue *)self validationMessageSendBlock];
    (validationMessageSendBlock)[2](validationMessageSendBlock, v7);
  }
}

- (id)_validationInfoForSubsystem:(int64_t)subsystem createIfNil:(BOOL)nil
{
  nilCopy = nil;
  v6 = [(IDSValidationQueue *)self _mechanismForSubsystem:subsystem];
  validationInfoByMechanism = [(IDSValidationQueue *)self validationInfoByMechanism];
  v8 = [NSNumber numberWithInteger:v6];
  v9 = [validationInfoByMechanism objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !nilCopy;
  }

  if (!v10)
  {
    v9 = objc_alloc_init(IDSValidationInfo);
    validationInfoByMechanism2 = [(IDSValidationQueue *)self validationInfoByMechanism];
    v12 = [NSNumber numberWithInteger:v6];
    [validationInfoByMechanism2 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

@end