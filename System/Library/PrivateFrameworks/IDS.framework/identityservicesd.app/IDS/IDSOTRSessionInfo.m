@interface IDSOTRSessionInfo
- (IDSOTRSessionInfo)initWithToken:(id)a3;
- (void)_handleNegotiationTimeout;
- (void)_negotiationTimerFiredOnMain;
- (void)dealloc;
- (void)removeNegotiationTimer;
- (void)setNegotiationTimer;
@end

@implementation IDSOTRSessionInfo

- (IDSOTRSessionInfo)initWithToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSOTRSessionInfo;
  v6 = [(IDSOTRSessionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, a3);
  }

  return v7;
}

- (void)dealloc
{
  negotiationTimer = self->_negotiationTimer;
  if (negotiationTimer)
  {
    [(IMTimer *)negotiationTimer invalidate];
    v4 = self->_negotiationTimer;
    self->_negotiationTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = IDSOTRSessionInfo;
  [(IDSOTRSessionInfo *)&v5 dealloc];
}

- (void)removeNegotiationTimer
{
  if (self->_negotiationTimer)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      negotiationTimer = self->_negotiationTimer;
      token = self->_token;
      *buf = 134218242;
      v12 = negotiationTimer;
      v13 = 2112;
      v14 = token;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Remove OTR timer %p for %@.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = self->_negotiationTimer;
      v10 = self->_token;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v9 = self->_negotiationTimer;
        v10 = self->_token;
        _IDSLogV();
      }
    }

    v7 = self->_negotiationTimer;
    p_negotiationTimer = &self->_negotiationTimer;
    [(IMTimer *)v7 invalidate:v9];
    v8 = *p_negotiationTimer;
    *p_negotiationTimer = 0;
  }
}

- (void)_handleNegotiationTimeout
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    token = self->_token;
    negotiationTimer = self->_negotiationTimer;
    *buf = 138412546;
    v18 = token;
    v19 = 2048;
    v20 = negotiationTimer;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "OTR timed out for %@, timer %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v15 = self->_token;
      v16 = self->_negotiationTimer;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v15 = self->_token;
        v16 = self->_negotiationTimer;
        _IDSLogV();
      }
    }
  }

  *&self->_isNegotiating = 0;
  self->_lastStartTime = 0.0;
  [(IDSOTRSessionInfo *)self removeNegotiationTimer:v15];
  v6 = +[IDSOTRController sharedInstance];
  v8 = self->_token;
  p_token = &self->_token;
  [v6 performOTRSessionBlock:2 token:v8];

  v9 = [IDSOTRSessionNegotiationMetric alloc];
  v10 = sub_100572610(*p_token);
  v11 = [v9 initWithService:v10 priority:sub_10057279C(*p_token) duration:30000 result:2];

  v12 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v12 logMetric:v11];

  v13 = +[IDSAWDLogging sharedInstance];
  v14 = sub_100572610(*p_token);
  [v13 OTRSessionNegotiation:v14 priority:sub_10057279C(*p_token) duration:30000 result:2];
}

- (void)setNegotiationTimer
{
  [(IDSOTRSessionInfo *)self removeNegotiationTimer];
  v3 = [IMTimer alloc];
  v4 = [NSString stringWithFormat:@"otr-timer-%@", self->_token];
  v5 = im_primary_queue();
  v6 = [v3 initWithTimeInterval:v4 name:1 shouldWake:self target:"_handleNegotiationTimeout" selector:0 userInfo:v5 queue:30.0];
  negotiationTimer = self->_negotiationTimer;
  self->_negotiationTimer = v6;

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_negotiationTimer;
    token = self->_token;
    *buf = 134218242;
    v12 = v9;
    v13 = 2112;
    v14 = token;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Set OTR timer %p for %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)_negotiationTimerFiredOnMain
{
  v3 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100572B84;
  block[3] = &unk_100BD6ED0;
  block[4] = self;
  dispatch_async(v3, block);
}

@end