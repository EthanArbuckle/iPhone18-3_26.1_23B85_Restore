@interface NMSOutgoingRequest
+ (id)request;
- (NMSMessageCenter)messageCenter;
- (NMSOutgoingRequest)init;
- (id)description;
- (id)pbResponseHandler;
- (void)_replyTimerDidTimeout;
- (void)invalidate;
- (void)invalidateReplyTimer;
- (void)setPbRequest:(id)a3;
- (void)setPbResponseHandler:(id)a3;
- (void)startReplyTimer;
@end

@implementation NMSOutgoingRequest

+ (id)request
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (NMSOutgoingRequest)init
{
  v7.receiver = self;
  v7.super_class = NMSOutgoingRequest;
  v2 = [(NMSOutgoingRequest *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_priority = 1;
    v4 = os_transaction_create();
    transaction = v3->_transaction;
    v3->_transaction = v4;
  }

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p messageID: %hu idsIdentifier: %@ sendTimeout:%.1f replyTimeout:%.1f doNotCompress:%d fireAndForget:%d", v4, self, self->_messageID, self->_idsIdentifier, *&self->_sendTimeout, *&self->_replyTimeout, self->_doNotCompress, self->_fireAndForget];

  return v5;
}

- (void)invalidate
{
  [(NMSOutgoingRequest *)self invalidateReplyTimer];
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
  [WeakRetained _invalidateOutgoingRequest:self];
}

- (void)_replyTimerDidTimeout
{
  v4 = [NSError errorWithDomain:@"NMSErrorDomain" code:2 userInfo:0];
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
  [WeakRetained _handleError:v4 forRequest:self];
}

- (void)startReplyTimer
{
  if (self->_replyTimeout > 0.0)
  {
    location[5] = v2;
    location[6] = v3;
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v6 = [WeakRetained _queue];
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);
    replyTimer = self->_replyTimer;
    self->_replyTimer = v7;

    objc_initWeak(location, self);
    v9 = self->_replyTimer;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100016ED4;
    v12[3] = &unk_100034EA0;
    objc_copyWeak(&v13, location);
    dispatch_source_set_event_handler(v9, v12);
    v10 = self->_replyTimer;
    v11 = dispatch_time(0, (self->_replyTimeout * 1000000000.0));
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    dispatch_resume(self->_replyTimer);
    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

- (void)invalidateReplyTimer
{
  replyTimer = self->_replyTimer;
  if (replyTimer)
  {
    dispatch_source_cancel(replyTimer);
    v4 = self->_replyTimer;
    self->_replyTimer = 0;
  }
}

- (void)setPbRequest:(id)a3
{
  objc_storeStrong(&self->_pbRequest, a3);
  v7 = a3;
  v5 = [self->_pbRequest data];
  data = self->_data;
  self->_data = v5;
}

- (id)pbResponseHandler
{
  v2 = objc_retainBlock(self->_pbResponseHandler);

  return v2;
}

- (void)setPbResponseHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  pbResponseHandler = self->_pbResponseHandler;
  self->_pbResponseHandler = v5;

  objc_initWeak(&location, self);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000170DC;
  v7[3] = &unk_100034EC8;
  objc_copyWeak(&v8, &location);
  [(NMSOutgoingRequest *)self setResponseHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (NMSMessageCenter)messageCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCenter);

  return WeakRetained;
}

@end