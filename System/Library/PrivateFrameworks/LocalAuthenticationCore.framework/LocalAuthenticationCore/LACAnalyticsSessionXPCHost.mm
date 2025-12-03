@interface LACAnalyticsSessionXPCHost
- (BOOL)_checkQueueAndSessionWithAction:(id)action replyOnFailure:(id)failure;
- (LACAnalyticsSessionXPCHost)initWithSession:(id)session contextUUID:(id)d connected:(BOOL)connected workQueue:(id)queue;
- (void)authenticationAttemptFailedForEvent:(int64_t)event reply:(id)reply;
- (void)authenticationStartedForEvent:(int64_t)event reply:(id)reply;
- (void)authenticationSuccessfulForEvent:(int64_t)event reply:(id)reply;
- (void)finishWithReply:(id)reply;
- (void)updateContextUUID:(id)d reply:(id)reply;
@end

@implementation LACAnalyticsSessionXPCHost

- (LACAnalyticsSessionXPCHost)initWithSession:(id)session contextUUID:(id)d connected:(BOOL)connected workQueue:(id)queue
{
  sessionCopy = session;
  dCopy = d;
  queueCopy = queue;
  v17.receiver = self;
  v17.super_class = LACAnalyticsSessionXPCHost;
  v14 = [(LACAnalyticsSessionXPCHost *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_session, session);
    objc_storeStrong(&v15->_contextUUID, d);
    objc_storeStrong(&v15->_workQueue, queue);
    v15->_connected = connected;
  }

  return v15;
}

- (void)updateContextUUID:(id)d reply:(id)reply
{
  objc_storeStrong(&self->_contextUUID, d);
  replyCopy = reply;
  replyCopy[2](replyCopy, 1, 0);
}

- (void)finishWithReply:(id)reply
{
  replyCopy = reply;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"finishing" replyOnFailure:?])
  {
    if (!self->_connected)
    {
      session = [(LACAnalyticsSessionXPCHost *)self session];
      [session finish];
    }

    replyCopy[2](replyCopy, 1, 0);
  }
}

- (void)authenticationStartedForEvent:(int64_t)event reply:(id)reply
{
  replyCopy = reply;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording start of authentication" replyOnFailure:?])
  {
    session = [(LACAnalyticsSessionXPCHost *)self session];
    [session authenticationStartedForEvent:event];

    replyCopy[2](replyCopy, 1, 0);
  }
}

- (void)authenticationAttemptFailedForEvent:(int64_t)event reply:(id)reply
{
  replyCopy = reply;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording failed authentication attempt" replyOnFailure:?])
  {
    session = [(LACAnalyticsSessionXPCHost *)self session];
    [session authenticationAttemptFailedForEvent:event];

    replyCopy[2](replyCopy, 1, 0);
  }
}

- (void)authenticationSuccessfulForEvent:(int64_t)event reply:(id)reply
{
  replyCopy = reply;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording authentication success" replyOnFailure:?])
  {
    session = [(LACAnalyticsSessionXPCHost *)self session];
    [session authenticationSuccessfulForEvent:event];

    replyCopy[2](replyCopy, 1, 0);
  }
}

- (BOOL)_checkQueueAndSessionWithAction:(id)action replyOnFailure:(id)failure
{
  actionCopy = action;
  failureCopy = failure;
  dispatch_assert_queue_V2(self->_workQueue);
  session = [(LACAnalyticsSessionXPCHost *)self session];

  if (!session)
  {
    actionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No active analytics session for %@", actionCopy];
    v10 = [LACError errorWithCode:-1008 debugDescription:actionCopy];
    failureCopy[2](failureCopy, 0, v10);
  }

  return session != 0;
}

@end