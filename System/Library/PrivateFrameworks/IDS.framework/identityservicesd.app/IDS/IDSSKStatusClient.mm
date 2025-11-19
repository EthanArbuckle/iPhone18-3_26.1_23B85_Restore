@interface IDSSKStatusClient
- (BOOL)_isUnderFirstLock;
- (BOOL)_shouldRetryForError:(id)a3;
- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)a3 queue:(id)a4;
- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)a3 statusPublishingService:(id)a4 queue:(id)a5;
- (IDSSKStatusClientDelegate)delegate;
- (NSString)description;
- (double)_rateLimitTime;
- (double)_retryMaximumTime;
- (double)_retryMinimumTime;
- (double)_retryTimeForAttempt:(int64_t)a3;
- (id)_publishRequestForStatusPayload:(id)a3;
- (id)_skHandlesForURIs:(id)a3;
- (id)_skInvitationPayloadForDictionary:(id)a3;
- (id)firstDataProtectionLockError;
- (id)invalidPublishStatusPayloadError;
- (id)invalidStatusPayloadError;
- (id)invitedHandles;
- (id)rateLimitErrorForItem:(id)a3;
- (id)requestInProgressError;
- (id)statusPayloadForOffGridMode:(int64_t)a3;
- (unint64_t)_rateLimitCount;
- (unint64_t)_retryMaximumAttempts;
- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 withDictionaryPayload:(id)a5 completion:(id)a6;
- (void)invitedHandlesChanged;
- (void)provisionStatusPayload:(id)a3 completion:(id)a4;
- (void)publishStatus:(int64_t)a3 completion:(id)a4;
- (void)publishingServiceDaemonDisconnected:(id)a3;
- (void)removeAllInvitedHandlesWithCompletion:(id)a3;
- (void)removeInvitedHandles:(id)a3 completion:(id)a4;
- (void)resetRateLimit;
- (void)statusPublishRequestCompleted:(id)a3 successfully:(BOOL)a4 error:(id)a5;
@end

@implementation IDSSKStatusClient

- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IMWeakLinkClass();
  v9 = +[IDSFoundationLog IDSSKStatusClient];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (v8)
  {
    if (v10)
    {
      sub_100924AC0(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    v9 = [[v8 alloc] initWithStatusTypeIdentifier:v6];
    self = [(IDSSKStatusClient *)self initWithStatusTypeIdentifier:v6 statusPublishingService:v9 queue:v7];
    v18 = self;
  }

  else
  {
    if (v10)
    {
      sub_100924AF8(v9, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = 0;
  }

  return v18;
}

- (IDSSKStatusClient)initWithStatusTypeIdentifier:(id)a3 statusPublishingService:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = IDSSKStatusClient;
  v12 = [(IDSSKStatusClient *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_statusTypeIdentifier, a3);
    objc_storeStrong(&v13->_queue, a5);
    objc_storeStrong(&v13->_publishingService, a4);
    [(SKStatusPublishingService *)v13->_publishingService addDelegate:v13 queue:v13->_queue];
    publishRetryHandler = v13->_publishRetryHandler;
    v13->_publishRetryHandler = 0;

    provisionRetryHandler = v13->_provisionRetryHandler;
    v13->_provisionRetryHandler = 0;

    v13->_currentOffGridModeBeingPublished = 0;
    v16 = [IDSRateLimiter alloc];
    v17 = [(IDSSKStatusClient *)v13 _rateLimitCount];
    [(IDSSKStatusClient *)v13 _rateLimitTime];
    v18 = [v16 initWithLimit:v17 timeLimit:?];
    rateLimiter = v13->_rateLimiter;
    v13->_rateLimiter = v18;
  }

  return v13;
}

- (NSString)description
{
  v3 = [(IDSSKStatusClient *)self statusTypeIdentifier];
  v4 = [(IDSSKStatusClient *)self delegate];
  v5 = @"YES";
  if (!v4)
  {
    v5 = @"NO";
  }

  v6 = [NSString stringWithFormat:@"<IDSSKStatusClient %p>: statusTypeIdentifier %@ delegate %@", self, v3, v5];

  return v6;
}

- (double)_retryTimeForAttempt:(int64_t)a3
{
  [(IDSSKStatusClient *)self _retryMinimumTime];
  v6 = v5 * a3;
  [(IDSSKStatusClient *)self _retryMaximumTime];
  if (v6 < result)
  {
    return v6;
  }

  return result;
}

- (void)publishStatus:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v30 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Requesting publish for status : %ld", buf, 0xCu);
  }

  if (![(IDSSKStatusClient *)self _isUnderFirstLock])
  {
    v8 = [(IDSSKStatusClient *)self statusPayloadForOffGridMode:a3];
    if (v8)
    {
      publishRetryHandler = self->_publishRetryHandler;
      if (publishRetryHandler && [(IDSBlockRetryHandler *)publishRetryHandler isRunning]&& self->_currentOffGridModeBeingPublished == a3)
      {
        if (!v6)
        {
          goto LABEL_21;
        }

        v10 = [(IDSSKStatusClient *)self requestInProgressError];
      }

      else
      {
        v11 = [(IDSSKStatusClient *)self rateLimiter];
        v12 = [v11 underLimitForItem:@"status publish"];

        if (v12)
        {
          v13 = [(IDSSKStatusClient *)self rateLimiter];
          [v13 noteItem:@"status publish"];

          self->_currentOffGridModeBeingPublished = a3;
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
          v25 = self;
          v8 = v8;
          v26 = v8;
          v27 = v6;
          v18 = [(IDSBlockRetryHandler *)v16 initWithQueue:queue backoffProvider:v28 block:&v21];
          v19 = self->_publishRetryHandler;
          self->_publishRetryHandler = v18;

          [(IDSBlockRetryHandler *)self->_publishRetryHandler start:v21];
          goto LABEL_21;
        }

        if (!v6)
        {
LABEL_21:

          goto LABEL_22;
        }

        v10 = [(IDSSKStatusClient *)self rateLimitErrorForItem:@"status publish"];
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_21;
      }

      v10 = [(IDSSKStatusClient *)self invalidPublishStatusPayloadError];
    }

    v20 = v10;
    (*(v6 + 2))(v6, v10);

    goto LABEL_21;
  }

  if (v6)
  {
    v8 = [(IDSSKStatusClient *)self firstDataProtectionLockError];
    (*(v6 + 2))(v6, v8);
    goto LABEL_21;
  }

LABEL_22:
}

- (void)provisionStatusPayload:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && [v6 count])
  {
    if ([(IDSSKStatusClient *)self _isUnderFirstLock])
    {
      if (v7)
      {
        v8 = [(IDSSKStatusClient *)self firstDataProtectionLockError];
LABEL_8:
        v9 = v8;
        v7[2](v7, 0, v8);
      }
    }

    else
    {
      provisionRetryHandler = self->_provisionRetryHandler;
      if (provisionRetryHandler && [(IDSBlockRetryHandler *)provisionRetryHandler isRunning])
      {
        if (!v7)
        {
          goto LABEL_9;
        }

        v8 = [(IDSSKStatusClient *)self requestInProgressError];
        goto LABEL_8;
      }

      v11 = [(IDSSKStatusClient *)self rateLimiter];
      v12 = [v11 underLimitForItem:@"payload provision"];

      if ((v12 & 1) == 0)
      {
        if (!v7)
        {
          goto LABEL_9;
        }

        v8 = [(IDSSKStatusClient *)self rateLimitErrorForItem:@"payload provision"];
        goto LABEL_8;
      }

      v13 = [(IDSSKStatusClient *)self rateLimiter];
      [v13 noteItem:@"payload provision"];

      v14 = +[IDSFoundationLog IDSSKStatusClient];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v6;
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
      v25 = self;
      v26 = v6;
      v27 = v7;
      v19 = [(IDSBlockRetryHandler *)v17 initWithQueue:queue backoffProvider:v28 block:&v21];
      v20 = self->_provisionRetryHandler;
      self->_provisionRetryHandler = v19;

      [(IDSBlockRetryHandler *)self->_provisionRetryHandler start:v21];
    }
  }

  else if (v7)
  {
    v8 = [(IDSSKStatusClient *)self invalidStatusPayloadError];
    goto LABEL_8;
  }

LABEL_9:
}

- (id)invitedHandles
{
  v2 = [(SKStatusPublishingService *)self->_publishingService invitedHandles];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004E685C;
  v5[3] = &unk_100BD8A48;
  v3 = objc_alloc_init(NSMutableSet);
  v6 = v3;
  [v2 enumerateObjectsUsingBlock:v5];

  return v3;
}

- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 withDictionaryPayload:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10 || ![v10 count])
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
  v21 = v11;
  v22 = self;
  v23 = v10;
  v24 = v12;
  v25 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  dispatch_async(queue, block);
}

- (void)removeInvitedHandles:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ![v6 count])
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
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(queue, block);
}

- (void)removeAllInvitedHandlesWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1004E7208;
  v7[3] = &unk_100BD9A30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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
  v3 = [v2 isUnderFirstDataProtectionLock];

  return v3;
}

- (id)_skHandlesForURIs:(id)a3
{
  v3 = a3;
  v4 = IMWeakLinkClass();
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1004E7508;
  v11 = &unk_100BDEE00;
  v12 = objc_alloc_init(NSMutableArray);
  v13 = v4;
  v5 = v12;
  [v3 enumerateObjectsUsingBlock:&v8];

  v6 = [v5 copy];

  return v6;
}

- (id)_skInvitationPayloadForDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = objc_alloc(IMWeakLinkClass());
    v5 = +[NSDate now];
    v6 = [v4 initWithDictionary:v3 dateCreated:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_publishRequestForStatusPayload:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(IMWeakLinkClass()) initWithStatusPayload:v3];

  v5 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Created publish request: %@", &v7, 0xCu);
  }

  return v4;
}

- (void)statusPublishRequestCompleted:(id)a3 successfully:(BOOL)a4 error:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v12 = 138413058;
    v13 = self;
    v14 = 2112;
    if (v6)
    {
      v11 = @"YES";
    }

    v15 = v8;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "statusPublishRequestCompleted %@: %@, successfully: %@, error: %@", &v12, 0x2Au);
  }
}

- (void)invitedHandlesChanged
{
  v3 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invitedHandlesChanged %@", &v4, 0xCu);
  }
}

- (void)publishingServiceDaemonDisconnected:(id)a3
{
  v3 = a3;
  v4 = +[IDSFoundationLog IDSSKStatusClient];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "publishingServiceDaemonDisconnected %@", &v5, 0xCu);
  }
}

- (BOOL)_shouldRetryForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    if ([v5 isEqualToString:APSErrorDomain])
    {
      if ([v4 code] == 4)
      {

LABEL_8:
        v6 = 1;
        goto LABEL_9;
      }

      v7 = [v4 code];

      if (v7 == 5)
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

- (id)statusPayloadForOffGridMode:(int64_t)a3
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [NSNumber numberWithInteger:a3];
  [v4 setObject:v5 forKey:IDSOffGridStatusPayloadStatusKey];

  v6 = +[IDSPushHandler sharedInstance];
  v7 = [v6 pushToken];

  if (v7)
  {
    v8 = v7;
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 3;
  }

  return v4;
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
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

- (id)rateLimitErrorForItem:(id)a3
{
  v3 = [NSString stringWithFormat:@"Rate limit reached for %@", a3];
  v7 = NSLocalizedDescriptionKey;
  v8 = v3;
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