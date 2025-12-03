@interface HAP2CoAPIOThreadSessionQueueEntry
- (BOOL)reapSession:(id)session;
- (HAP2CoAPIOThreadSessionQueueEntry)initWithSession:(coap_session_t *)session startTime:(id)time;
@end

@implementation HAP2CoAPIOThreadSessionQueueEntry

- (BOOL)reapSession:(id)session
{
  sessionCopy = session;
  if (self->_session)
  {
    startTime = [(HAP2CoAPIOThreadSessionQueueEntry *)self startTime];
    [sessionCopy timeIntervalSinceDate:startTime];
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

- (HAP2CoAPIOThreadSessionQueueEntry)initWithSession:(coap_session_t *)session startTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = HAP2CoAPIOThreadSessionQueueEntry;
  v8 = [(HAP2CoAPIOThreadSessionQueueEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startTime, time);
    v9->_session = session;
  }

  return v9;
}

@end