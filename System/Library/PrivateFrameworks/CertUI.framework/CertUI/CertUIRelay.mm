@interface CertUIRelay
- (CertUIRelay)init;
- (id)_uniqueDigest;
- (void)_centerDiedWithNotification:(id)a3;
- (void)_registerNewRequest;
- (void)_registerReply;
- (void)_showNextPrompt;
- (void)_shutdown;
- (void)_trustInfoMessageReceived:(id)a3 userInfo:(id)a4 auditToken:(id *)a5;
@end

@implementation CertUIRelay

- (void)_shutdown
{
  v3 = _CertUILogObjects[1];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CertUIRelay shutting down", v6, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = [(CertUIRelay *)self _relayCenter];
  [v5 stopServer];

  exit(0);
}

- (void)_centerDiedWithNotification:(id)a3
{
  v4 = a3;
  v5 = _CertUILogObjects[1];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 object];
    v8 = [v7 name];
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Center died %@", &v9, 0xCu);
  }

  if (![(NSMutableDictionary *)self->_promptsForDigest count])
  {
    [(CertUIRelay *)self _shutdown];
  }
}

- (void)_registerNewRequest
{
  outstandingRequestCount = self->_outstandingRequestCount;
  killTimer = self->_killTimer;
  self->_outstandingRequestCount = outstandingRequestCount + 1;
  [(NSTimer *)killTimer invalidate];
  v5 = self->_killTimer;
  self->_killTimer = 0;
}

- (void)_registerReply
{
  outstandingRequestCount = self->_outstandingRequestCount;
  self->_outstandingRequestCount = outstandingRequestCount - 1;
  if (outstandingRequestCount <= 1 && !self->_killTimer)
  {
    v4 = [NSTimer scheduledTimerWithTimeInterval:self target:"_killTimerFired" selector:0 userInfo:0 repeats:5.0];
    killTimer = self->_killTimer;
    self->_killTimer = v4;

    _objc_release_x1();
  }
}

- (void)_showNextPrompt
{
  self->_waitingOnPrompt = 1;
  v3 = [(NSMutableDictionary *)self->_promptsForDigest allKeys];
  v4 = [v3 objectAtIndex:0];

  v5 = [(NSMutableDictionary *)self->_promptsForDigest objectForKey:v4];
  v6 = [v5 objectAtIndex:0];
  v7 = dispatch_time(0, 0);
  if ([v4 isEqualToData:self->_previousPromptDigest])
  {
    v7 = dispatch_time(0, 5000000000);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001174;
  v13[3] = &unk_100008310;
  v14 = v6;
  v15 = self;
  v16 = v5;
  v8 = v4;
  v17 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_after(v7, &_dispatch_main_q, v13);
  previousPromptDigest = self->_previousPromptDigest;
  self->_previousPromptDigest = v8;
  v12 = v8;
}

- (id)_uniqueDigest
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  if (v3)
  {
    v4 = v3;
    v5 = [(__CFString *)v3 dataUsingEncoding:4];
    CFRelease(v4);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = +[NSData data];
  if (v2)
  {
LABEL_3:
    CFRelease(v2);
  }

LABEL_4:

  return v5;
}

- (void)_trustInfoMessageReceived:(id)a3 userInfo:(id)a4 auditToken:(id *)a5
{
  v7 = a4;
  v8 = [CertUIUtilities bundleIDFromAuditToken:a5];
  v9 = [CertUIUtilities localizedAppTitleForBundleID:v8];
  v10 = _CertUILogObjects[1];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543618;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Alert message received from app (%{public}@, %{public}@)", &v19, 0x16u);
  }

  [(CertUIRelay *)self _registerNewRequest];
  v11 = [(CertUIRelay *)self _relayCenter];
  v12 = [v11 delayReply];

  v13 = [[CertUIRelayPrompt alloc] initWithMessageInfo:v7 localizedOriginatingAppName:v9 replyContext:v12];
  v14 = [(CertUIRelayPrompt *)v13 trustDigest];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [(CertUIRelay *)self _uniqueDigest];
  }

  v17 = v16;

  v18 = [(NSMutableDictionary *)self->_promptsForDigest objectForKey:v17];
  if (!v18)
  {
    v18 = +[NSMutableArray array];
    [(NSMutableDictionary *)self->_promptsForDigest setObject:v18 forKey:v17];
  }

  [v18 addObject:v13];
  if (!self->_waitingOnPrompt)
  {
    [(CertUIRelay *)self _showNextPrompt];
  }
}

- (CertUIRelay)init
{
  v14.receiver = self;
  v14.super_class = CertUIRelay;
  v2 = [(CertUIRelay *)&v14 init];
  if (v2)
  {
    v3 = _CertUILogObjects[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CertUIRelay starting", v13, 2u);
    }

    v4 = [(CertUIRelay *)v2 _relayCenter];
    [v4 registerForMessageName:kCertUIPresentTrustInfoMessage target:v2 selector:"_trustInfoMessageReceived:userInfo:auditToken:"];
    [v4 runServerOnCurrentThread];
    v5 = [NSTimer scheduledTimerWithTimeInterval:v2 target:"_killTimerFired" selector:0 userInfo:0 repeats:5.0];
    killTimer = v2->_killTimer;
    v2->_killTimer = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_centerDiedWithNotification:" name:CPDistributedMessagingCenterServerDidTerminateNotification object:0];

    v8 = objc_alloc_init(NSMutableDictionary);
    promptsForDigest = v2->_promptsForDigest;
    v2->_promptsForDigest = v8;

    v10 = objc_alloc_init(NSData);
    previousPromptDigest = v2->_previousPromptDigest;
    v2->_previousPromptDigest = v10;
  }

  return v2;
}

@end