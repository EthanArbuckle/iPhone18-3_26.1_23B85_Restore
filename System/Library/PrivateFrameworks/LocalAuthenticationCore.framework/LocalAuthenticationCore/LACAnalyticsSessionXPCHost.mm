@interface LACAnalyticsSessionXPCHost
- (BOOL)_checkQueueAndSessionWithAction:(id)a3 replyOnFailure:(id)a4;
- (LACAnalyticsSessionXPCHost)initWithSession:(id)a3 contextUUID:(id)a4 connected:(BOOL)a5 workQueue:(id)a6;
- (void)authenticationAttemptFailedForEvent:(int64_t)a3 reply:(id)a4;
- (void)authenticationStartedForEvent:(int64_t)a3 reply:(id)a4;
- (void)authenticationSuccessfulForEvent:(int64_t)a3 reply:(id)a4;
- (void)finishWithReply:(id)a3;
- (void)updateContextUUID:(id)a3 reply:(id)a4;
@end

@implementation LACAnalyticsSessionXPCHost

- (LACAnalyticsSessionXPCHost)initWithSession:(id)a3 contextUUID:(id)a4 connected:(BOOL)a5 workQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = LACAnalyticsSessionXPCHost;
  v14 = [(LACAnalyticsSessionXPCHost *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_session, a3);
    objc_storeStrong(&v15->_contextUUID, a4);
    objc_storeStrong(&v15->_workQueue, a6);
    v15->_connected = a5;
  }

  return v15;
}

- (void)updateContextUUID:(id)a3 reply:(id)a4
{
  objc_storeStrong(&self->_contextUUID, a3);
  v5 = a4;
  v5[2](v5, 1, 0);
}

- (void)finishWithReply:(id)a3
{
  v5 = a3;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"finishing" replyOnFailure:?])
  {
    if (!self->_connected)
    {
      v4 = [(LACAnalyticsSessionXPCHost *)self session];
      [v4 finish];
    }

    v5[2](v5, 1, 0);
  }
}

- (void)authenticationStartedForEvent:(int64_t)a3 reply:(id)a4
{
  v7 = a4;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording start of authentication" replyOnFailure:?])
  {
    v6 = [(LACAnalyticsSessionXPCHost *)self session];
    [v6 authenticationStartedForEvent:a3];

    v7[2](v7, 1, 0);
  }
}

- (void)authenticationAttemptFailedForEvent:(int64_t)a3 reply:(id)a4
{
  v7 = a4;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording failed authentication attempt" replyOnFailure:?])
  {
    v6 = [(LACAnalyticsSessionXPCHost *)self session];
    [v6 authenticationAttemptFailedForEvent:a3];

    v7[2](v7, 1, 0);
  }
}

- (void)authenticationSuccessfulForEvent:(int64_t)a3 reply:(id)a4
{
  v7 = a4;
  if ([(LACAnalyticsSessionXPCHost *)self _checkQueueAndSessionWithAction:@"recording authentication success" replyOnFailure:?])
  {
    v6 = [(LACAnalyticsSessionXPCHost *)self session];
    [v6 authenticationSuccessfulForEvent:a3];

    v7[2](v7, 1, 0);
  }
}

- (BOOL)_checkQueueAndSessionWithAction:(id)a3 replyOnFailure:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v8 = [(LACAnalyticsSessionXPCHost *)self session];

  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No active analytics session for %@", v6];
    v10 = [LACError errorWithCode:-1008 debugDescription:v9];
    v7[2](v7, 0, v10);
  }

  return v8 != 0;
}

@end