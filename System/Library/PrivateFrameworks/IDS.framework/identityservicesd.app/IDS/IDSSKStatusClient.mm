@interface IDSSKStatusClient
- (BOOL)_isUnderFirstLock;
- (BOOL)_shouldRetryForError:(id)error;
- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)identifier queue:(id)queue;
- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)identifier statusPublishingService:(id)service queue:(id)queue;
- (IDSSKStatusClientDelegate)delegate;
- (NSString)description;
- (double)_rateLimitTime;
- (double)_retryMaximumTime;
- (double)_retryMinimumTime;
- (double)_retryTimeForAttempt:(int64_t)attempt;
- (id)_publishRequestForStatusPayload:(id)payload;
- (id)_skHandlesForURIs:(id)is;
- (id)_skInvitationPayloadForDictionary:(id)dictionary;
- (id)firstDataProtectionLockError;
- (id)invalidPublishStatusPayloadError;
- (id)invalidStatusPayloadError;
- (id)invitedHandles;
- (id)rateLimitErrorForItem:(id)item;
- (id)requestInProgressError;
- (id)statusPayloadForOffGridMode:(int64_t)mode;
- (unint64_t)_rateLimitCount;
- (unint64_t)_retryMaximumAttempts;
- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion;
- (void)invitedHandlesChanged;
- (void)provisionStatusPayload:(id)payload completion:(id)completion;
- (void)publishStatus:(int64_t)status completion:(id)completion;
- (void)publishingServiceDaemonDisconnected:(id)disconnected;
- (void)removeAllInvitedHandlesWithCompletion:(id)completion;
- (void)removeInvitedHandles:(id)handles completion:(id)completion;
- (void)resetRateLimit;
- (void)statusPublishRequestCompleted:(id)completed successfully:(BOOL)successfully error:(id)error;
@end

@implementation IDSSKStatusClient

- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)identifier queue:(id)queue
{
  identifierCopy = identifier;
  queueCopy = queue;
  v8 = IMWeakLinkClass();
  v9 = +[IDSFoundationLog IDSSKStatusClient];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_100924AC0(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    v9 = [[v8 alloc] initWithStatusTypeIdentifier:identifierCopy];
    self = [(IDSSKStatusClient *)self initWithStatusTypeIdentifier:identifierCopy statusPublishingService:v9 queue:queueCopy];
    selfCopy = self;
  }

  else
  {
    if (v10)
    {
      sub_100924AF8(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)identifier statusPublishingService:(id)service queue:(id)queue
{
  identifierCopy = identifier;
  serviceCopy = service;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = IDSSKStatusClient;
  v12 = [(IDSSKStatusClient *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_statusTypeIdentifier, identifier);
    objc_storeStrong(&v13->_queue, queue);
    objc_storeStrong(&v13->_publishingService, service);
    [(SKStatusPublishingService *)v13->_publishingService addDelegate:v13 queue:v13->_queue];
    publishRetryHandler = v13->_publishRetryHandler;
    v13->_publishRetryHandler = 0;

    provisionRetryHandler = v13->_provisionRetryHandler;
    v13->_provisionRetryHandler = 0;

    v13->_currentOffGridModeBeingPublished = 0;
    v16 = [IDSRateLimiter alloc];
    _rateLimitCount = [(IDSSKStatusClient *)v13 _rateLimitCount];
    [(IDSSKStatusClient *)v13 _rateLimitTime];
    v18 = [v16 initWithLimit:_rateLimitCount timeLimit:?];
    rateLimiter = v13->_rateLimiter;
    v13->_rateLimiter = v18;
  }

  return v13;
}

- (NSString)description
{
  statusTypeIdentifier = [(IDSSKStatusClient *)self statusTypeIdentifier];
  delegate = [(IDSSKStatusClient *)self delegate];
  v5 = @"YES";
  if (!delegate)
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"<IDSSKStatusClient %p>: statusTypeIdentifier %@ delegate %@", self, statusTypeIdentifier, v5];

  return v6;
}

- (double)_retryTimeForAttempt:(int64_t)attempt
{
  [(IDSSKStatusClient *)self _retryMinimumTime];
  v6 = v5 * attempt;
  [(IDSSKStatusClient *)self _retryMaximumTime];
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (void)publishStatus:(int64_t)status completion:(id)completion
{
  completionCopy = completion;
  v7 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    statusCopy = status;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting publish for status : %ld", buf, 0xCu);
  }

  if (![(IDSSKStatusClient *)self _isUnderFirstLock])
  {
    firstDataProtectionLockError = [(IDSSKStatusClient *)self statusPayloadForOffGridMode:status];
    if (firstDataProtectionLockError)
    {
      publishRetryHandler = self->_publishRetryHandler;
      if (publishRetryHandler && [(IDSBlockRetryHandler *)publishRetryHandler isRunning]&& self->_currentOffGridModeBeingPublished == status)
      {
        if (!completionCopy)
        {
          goto LABEL_21;
        }

        requestInProgressError = [(IDSSKStatusClient *)self requestInProgressError];
      }

      else
      {
        rateLimiter = [(IDSSKStatusClient *)self rateLimiter];
        v12 = [rateLimiter underLimitForItem:@"status publish"];

        if (v12)
        {
          rateLimiter2 = [(IDSSKStatusClient *)self rateLimiter];
          [rateLimiter2 noteItem:@"status publish"];

          self->_currentOffGridModeBeingPublished = status;
          v14 = self->_publishRetryHandler;
          if (v14)
          {
            [(IDSBlockRetryHandler *)v14 stop];
            v15 = self->_publishRetryHandler;
            self->_publishRetryHandler = 0;
          }

          v16 = [IDSBlockRetryHandler alloc];
          queue = self->_queue;
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_1004E608C;
          v28[3] = &unk_100BDAE68;
          v28[4] = self;
          v21 = _NSConcreteStackBlock;
          v22 = 3221225472;
          v23 = sub_1004E6098;
          v24 = &unk_100BDEDB0;
          selfCopy = self;
          firstDataProtectionLockError = firstDataProtectionLockError;
          v26 = firstDataProtectionLockError;
          v27 = completionCopy;
          v18 = [(IDSBlockRetryHandler *)v16 initWithQueue:queue backoffProvider:v28 block:&v21];
          v19 = self->_publishRetryHandler;
          self->_publishRetryHandler = v18;

          [(IDSBlockRetryHandler *)self->_publishRetryHandler start:v21];
          goto LABEL_21;
        }

        if (!completionCopy)
        {
LABEL_21:

          goto LABEL_22;
        }

        requestInProgressError = [(IDSSKStatusClient *)self rateLimitErrorForItem:@"status publish"];
      }
    }

    else
    {
      if (!completionCopy)
      {
        goto LABEL_21;
      }

      requestInProgressError = [(IDSSKStatusClient *)self invalidPublishStatusPayloadError];
    }

    v20 = requestInProgressError;
    (*(completionCopy + 2))(completionCopy, requestInProgressError);

    goto LABEL_21;
  }

  if (completionCopy)
  {
    firstDataProtectionLockError = [(IDSSKStatusClient *)self firstDataProtectionLockError];
    (*(completionCopy + 2))(completionCopy, firstDataProtectionLockError);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)provisionStatusPayload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  if (payloadCopy && [payloadCopy count])
  {
    if ([(IDSSKStatusClient *)self _isUnderFirstLock])
    {
      if (completionCopy)
      {
        firstDataProtectionLockError = [(IDSSKStatusClient *)self firstDataProtectionLockError];
LABEL_8:
        v9 = firstDataProtectionLockError;
        completionCopy[2](completionCopy, 0, firstDataProtectionLockError);
      }
    }

    else
    {
      provisionRetryHandler = self->_provisionRetryHandler;
      if (provisionRetryHandler && [(IDSBlockRetryHandler *)provisionRetryHandler isRunning])
      {
        if (!completionCopy)
        {
          goto LABEL_9;
        }

        firstDataProtectionLockError = [(IDSSKStatusClient *)self requestInProgressError];
        goto LABEL_8;
      }

      rateLimiter = [(IDSSKStatusClient *)self rateLimiter];
      v12 = [rateLimiter underLimitForItem:@"payload provision"];

      if ((v12 & 1) == 0)
      {
        if (!completionCopy)
        {
          goto LABEL_9;
        }

        firstDataProtectionLockError = [(IDSSKStatusClient *)self rateLimitErrorForItem:@"payload provision"];
        goto LABEL_8;
      }

      rateLimiter2 = [(IDSSKStatusClient *)self rateLimiter];
      [rateLimiter2 noteItem:@"payload provision"];

      v14 = +[IDSFoundationLog IDSSKStatusClient];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = payloadCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Requesting provisioning for payloads: %@", buf, 0xCu);
      }

      v15 = self->_provisionRetryHandler;
      if (v15)
      {
        [(IDSBlockRetryHandler *)v15 stop];
        v16 = self->_provisionRetryHandler;
        self->_provisionRetryHandler = 0;
      }

      v17 = [IDSBlockRetryHandler alloc];
      queue = self->_queue;
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1004E6588;
      v28[3] = &unk_100BDAE68;
      v28[4] = self;
      v21 = _NSConcreteStackBlock;
      v22 = 3221225472;
      v23 = sub_1004E6594;
      v24 = &unk_100BDEDB0;
      selfCopy = self;
      v26 = payloadCopy;
      v27 = completionCopy;
      v19 = [(IDSBlockRetryHandler *)v17 initWithQueue:queue backoffProvider:v28 block:&v21];
      v20 = self->_provisionRetryHandler;
      self->_provisionRetryHandler = v19;

      [(IDSBlockRetryHandler *)self->_provisionRetryHandler start:v21];
    }
  }

  else if (completionCopy)
  {
    firstDataProtectionLockError = [(IDSSKStatusClient *)self invalidStatusPayloadError];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)invitedHandles
{
  invitedHandles = [(SKStatusPublishingService *)self->_publishingService invitedHandles];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004E685C;
  v5[3] = &unk_100BD8A48;
  v3 = objc_alloc_init(NSMutableSet);
  v6 = v3;
  [invitedHandles enumerateObjectsUsingBlock:v5];

  return v3;
}

- (void)inviteHandles:(id)handles fromSenderHandle:(id)handle withDictionaryPayload:(id)payload completion:(id)completion
{
  handlesCopy = handles;
  handleCopy = handle;
  payloadCopy = payload;
  completionCopy = completion;
  if (!handlesCopy || ![handlesCopy count])
  {
    v14 = +[IDSFoundationLog IDSSKStatusClient];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No handles specified to invite", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004E6A60;
  block[3] = &unk_100BDA848;
  v21 = handleCopy;
  selfCopy = self;
  v23 = handlesCopy;
  v24 = payloadCopy;
  v25 = completionCopy;
  v16 = completionCopy;
  v17 = payloadCopy;
  v18 = handlesCopy;
  v19 = handleCopy;
  dispatch_async(queue, block);
}

- (void)removeInvitedHandles:(id)handles completion:(id)completion
{
  handlesCopy = handles;
  completionCopy = completion;
  if (!handlesCopy || ![handlesCopy count])
  {
    v8 = +[IDSFoundationLog IDSSKStatusClient];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No handles specified to remove invites", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1004E6FAC;
  block[3] = &unk_100BD8CB0;
  block[4] = self;
  v13 = handlesCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = handlesCopy;
  dispatch_async(queue, block);
}

- (void)removeAllInvitedHandlesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E7208;
  v7[3] = &unk_100BD9A30;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)resetRateLimit
{
  v3 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Rate limit cleared", v4, 2u);
  }

  [(IDSRateLimiter *)self->_rateLimiter clearAllItems];
}

- (BOOL)_isUnderFirstLock
{
  v2 = +[IMSystemMonitor sharedInstance];
  isUnderFirstDataProtectionLock = [v2 isUnderFirstDataProtectionLock];

  return isUnderFirstDataProtectionLock;
}

- (id)_skHandlesForURIs:(id)is
{
  isCopy = is;
  v4 = IMWeakLinkClass();
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1004E7508;
  v11 = &unk_100BDEE00;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = v4;
  v5 = v12;
  [isCopy enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_skInvitationPayloadForDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v4 = objc_alloc(IMWeakLinkClass());
    v5 = +[NSDate now];
    v6 = [v4 initWithDictionary:dictionaryCopy dateCreated:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_publishRequestForStatusPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [objc_alloc(IMWeakLinkClass()) initWithStatusPayload:payloadCopy];

  v5 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created publish request: %@", &v7, 0xCu);
  }

  return v4;
}

- (void)statusPublishRequestCompleted:(id)completed successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  completedCopy = completed;
  errorCopy = error;
  v10 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v12 = 138413058;
    selfCopy = self;
    v14 = 2112;
    if (successfullyCopy)
    {
      v11 = @"YES";
    }

    v15 = completedCopy;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statusPublishRequestCompleted %@: %@, successfully: %@, error: %@", &v12, 0x2Au);
  }
}

- (void)invitedHandlesChanged
{
  v3 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invitedHandlesChanged %@", &v4, 0xCu);
  }
}

- (void)publishingServiceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = disconnectedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "publishingServiceDaemonDisconnected %@", &v5, 0xCu);
  }
}

- (BOOL)_shouldRetryForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:APSErrorDomain])
    {
      if ([v4 code] == 4)
      {

LABEL_8:
        v6 = 1;
        goto LABEL_9;
      }

      code = [v4 code];

      if (code == 5)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)statusPayloadForOffGridMode:(int64_t)mode
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSNumber numberWithInteger:mode];
  [v4 setObject:v5 forKey:IDSOffGridStatusPayloadStatusKey];

  v6 = +[IDSPushHandler sharedInstance];
  pushToken = [v6 pushToken];

  if (pushToken)
  {
    v8 = pushToken;
    CFDictionarySetValue(v4, IDSOffGridStatusPayloadStatusTokenKey, v8);
  }

  else
  {
    v9 = +[IDSFoundationLog IDSSKStatusClient];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100924B30(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  v17 = [objc_alloc(IMWeakLinkClass()) initWithDictionary:v4];

  return v17;
}

- (unint64_t)_retryMaximumAttempts
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-retry-max-attempts"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 3;
  }

  return integerValue;
}

- (double)_retryMinimumTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-retry-min-time-sec"];

  objc_opt_class();
  v4 = 30.0;
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v4 = v5;
  }

  return v4;
}

- (double)_retryMaximumTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-retry-max-time-sec"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  return v5;
}

- (double)_rateLimitTime
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-rate-limit-time"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 3600.0;
  }

  return v5;
}

- (unint64_t)_rateLimitCount
{
  v2 = [IDSServerBag sharedInstanceForBagType:1];
  v3 = [v2 objectForKey:@"status-rate-limit-count"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 10;
  }

  return integerValue;
}

- (id)firstDataProtectionLockError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Status payload is nil";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:IDSOffGridStatusErrorDomain code:9 userInfo:v2];

  return v3;
}

- (id)invalidStatusPayloadError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"No payloads specified";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:IDSOffGridStatusErrorDomain code:2 userInfo:v2];

  return v3;
}

- (id)invalidPublishStatusPayloadError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"Status payload is invalid";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:IDSOffGridStatusErrorDomain code:2 userInfo:v2];

  return v3;
}

- (id)rateLimitErrorForItem:(id)item
{
  item = [NSString stringWithFormat:@"Rate limit reached for %@", item];
  v7 = NSLocalizedDescriptionKey;
  v8 = item;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v5 = [NSError errorWithDomain:IDSOffGridStatusErrorDomain code:11 userInfo:v4];

  return v5;
}

- (id)requestInProgressError
{
  v5 = NSLocalizedDescriptionKey;
  v6 = @"There is already a request in progress";
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v3 = [NSError errorWithDomain:IDSOffGridStatusErrorDomain code:10 userInfo:v2];

  return v3;
}

- (IDSSKStatusClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end