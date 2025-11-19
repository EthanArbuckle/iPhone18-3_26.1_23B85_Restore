@interface HAP2CoAPIOThreadSessionQueueEntry
- (BOOL)reapSession:(id)a3;
- (HAP2CoAPIOThreadSessionQueueEntry)initWithSession:(coap_session_t *)a3 startTime:(id)a4;
@end

@implementation HAP2CoAPIOThreadSessionQueueEntry

- (BOOL)reapSession:(id)a3
{
  v4 = a3;
  if (self->_session)
  {
    v5 = [(HAP2CoAPIOThreadSessionQueueEntry *)self startTime];
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;

    session = self->_session;
    if (v7 >= 60.0)
    {
      coap_session_release(session);
      session = 0;
      self->_session = 0;
    }
  }

  else
  {
    session = 0;
  }

  v9 = session == 0;

  return v9;
}

- (HAP2CoAPIOThreadSessionQueueEntry)initWithSession:(coap_session_t *)a3 startTime:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HAP2CoAPIOThreadSessionQueueEntry;
  v8 = [(HAP2CoAPIOThreadSessionQueueEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startTime, a4);
    v9->_session = a3;
  }

  return v9;
}

@end